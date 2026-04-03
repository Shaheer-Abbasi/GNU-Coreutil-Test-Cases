; ModuleID = 'src/chown.stripped.bc'
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
%struct.__mbstate_t = type { i32, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.Chown_option = type { i32, i8, %struct.dev_ino*, i8, i8, i8*, i8* }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.dev_ino, %struct.dev_ino, %struct.dev_ino, [2 x i32] }
%struct.group = type { i8*, i8*, i32, i8** }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%struct.FTS = type { %struct._ftsent*, %struct._ftsent*, %struct._ftsent**, i64, i8*, i32, i32, i64, i64, i32 (%struct._ftsent**, %struct._ftsent**)*, i32, %struct.hash_table*, %union.anon, %struct.I_ring }
%struct._ftsent = type { %struct._ftsent*, %struct._ftsent*, %struct._ftsent*, %struct.__dirstream*, i64, i8*, i8*, i8*, i32, i32, i64, %struct.FTS*, i64, i64, i16, i16, i16, [1 x %struct.stat], [0 x i8] }
%struct.__dirstream = type opaque
%struct.hash_table = type { %struct.hash_entry*, %struct.hash_entry*, i64, i64, i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %struct.hash_entry* }
%struct.hash_entry = type { i8*, %struct.hash_entry* }
%union.anon = type { %struct.hash_table* }
%struct.I_ring = type { [4 x i32], i32, i32, i32, i8 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.cycle_check_state = type { %struct.dev_ino, i64, i32 }
%struct.Active_dir = type { i64, i64, %struct._ftsent* }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.statfs = type { i64, i64, i64, i64, i64, i64, i64, %struct.__fsid_t, i64, i64, i64, [4 x i64] }
%struct.__fsid_t = type { [2 x i32] }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"Usage: %s [OPTION]... %s FILE...\0A  or:  %s [OPTION]... --reference=RFILE FILE...\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"[OWNER][:[GROUP]]\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.4 = private unnamed_addr constant [145 x i8] c"Change the owner and/or group of each FILE to OWNER and/or GROUP.\0AWith --reference, change the owner and group of each FILE to those of RFILE.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"Change the group of each FILE to GROUP.\0AWith --reference, change the group of each FILE to that of RFILE.\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"chown\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"chgrp\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"  -c, --changes\0A         like verbose but report only when a change is made\0A\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"  -f, --silent, --quiet\0A         suppress most error messages\0A\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"  -v, --verbose\0A         output a diagnostic for every file processed\0A\00", align 1
@.str.11 = private unnamed_addr constant [141 x i8] c"      --dereference\0A         affect the referent of each symbolic link (this is\0A         the default), rather than the symbolic link itself\0A\00", align 1
@.str.12 = private unnamed_addr constant [162 x i8] c"  -h, --no-dereference\0A         affect symbolic links instead of any referenced file;\0A         useful only on systems that can change the ownership of a symlink\0A\00", align 1
@.str.13 = private unnamed_addr constant [266 x i8] c"      --from=CURRENT_OWNER:CURRENT_GROUP\0A         change the ownership of each file only if its\0A         current owner and/or group match those specified here.\0A         Either may be omitted, in which case a match\0A         is not required for the omitted attribute\0A\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"      --no-preserve-root\0A         do not treat '/' specially (the default)\0A\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"      --preserve-root\0A         fail to operate recursively on '/'\0A\00", align 1
@.str.16 = private unnamed_addr constant [145 x i8] c"      --reference=RFILE\0A         use RFILE's ownership rather than specifying values.\0A         RFILE is always dereferenced if a symbolic link.\0A\00", align 1
@.str.17 = private unnamed_addr constant [73 x i8] c"  -R, --recursive\0A         operate on files and directories recursively\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.21 = private unnamed_addr constant [192 x i8] c"\0AOwner is unchanged if missing.  Group is unchanged if missing, but changed\0Ato login group if implied by a ':' following a symbolic OWNER.\0AOWNER and GROUP may be numeric as well as symbolic.\0A\00", align 1
@.str.22 = private unnamed_addr constant [201 x i8] c"\0AExamples:\0A  %s root /u        Change the owner of /u to \22root\22.\0A  %s root:staff /u  Likewise, but also change its group to \22staff\22.\0A  %s -hR root /u    Change the owner of /u and subfiles to \22root\22.\0A\00", align 1
@.str.23 = private unnamed_addr constant [133 x i8] c"\0AExamples:\0A  %s staff /u      Change the group of /u to \22staff\22.\0A  %s -hR staff /u  Change the group of /u and subfiles to \22staff\22.\0A\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"HLPRcfhv\00", align 1
@long_options = internal constant [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 0, i32* null, i32 82 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i32 0, i32 0), i32 0, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0), i32 1, i32* null, i32 257 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.82, i32 0, i32 0), i32 0, i32* null, i32 258 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i32 0, i32 0), i32 0, i32* null, i32 259 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i32 0, i32 0), i32 1, i32* null, i32 260 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8
@optarg = external local_unnamed_addr global i8*, align 8
@reference_file = internal unnamed_addr global i8* null, align 8
@.str.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"-R --dereference requires either -H or -L\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.33 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1
@main.dev_ino_buf = internal global %struct.dev_ino zeroinitializer, align 8
@.str.37 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4
@.str.38 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.58 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.60 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.65 = private unnamed_addr constant [183 x i8] c"\0AThe following options modify how a hierarchy is traversed when the -R\0Aoption is also specified.  If more than one is specified, only the final\0Aone takes effect. %s is the default.\0A\0A\00", align 1
@.str.66 = private unnamed_addr constant [83 x i8] c"  -H\0A         if a command line argument is a symlink to a directory, traverse it\0A\00", align 1
@.str.67 = private unnamed_addr constant [71 x i8] c"  -L\0A         traverse every symbolic link to a directory encountered\0A\00", align 1
@.str.68 = private unnamed_addr constant [51 x i8] c"  -P\0A         do not traverse any symbolic links\0A\0A\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.69, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.70, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.72 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.73 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.75 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"changes\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"dereference\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"no-dereference\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"no-preserve-root\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"preserve-root\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"fts_read failed\00", align 1
@.str.1.60 = private unnamed_addr constant [17 x i8] c"fts_close failed\00", align 1
@.str.2.37 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3.38 = private unnamed_addr constant [45 x i8] c"it is dangerous to operate recursively on %s\00", align 1
@.str.4.39 = private unnamed_addr constant [58 x i8] c"it is dangerous to operate recursively on %s (same as %s)\00", align 1
@.str.5.40 = private unnamed_addr constant [49 x i8] c"use --no-preserve-root to override this failsafe\00", align 1
@.str.6.41 = private unnamed_addr constant [17 x i8] c"cannot access %s\00", align 1
@.str.7.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8.43 = private unnamed_addr constant [25 x i8] c"cannot read directory %s\00", align 1
@.str.9.44 = private unnamed_addr constant [186 x i8] c"WARNING: Circular directory structure.\0AThis almost certainly means that you have a corrupted file system.\0ANOTIFY YOUR SYSTEM MANAGER.\0AThe following directory is part of the cycle:\0A  %s\0A\00", align 1
@.str.10.45 = private unnamed_addr constant [22 x i8] c"cannot dereference %s\00", align 1
@.str.11.10 = private unnamed_addr constant [25 x i8] c"changing ownership of %s\00", align 1
@.str.12.9 = private unnamed_addr constant [21 x i8] c"changing group of %s\00", align 1
@.str.13.46 = private unnamed_addr constant [56 x i8] c"neither symbolic link %s nor referent has been changed\0A\00", align 1
@.str.14.56 = private unnamed_addr constant [39 x i8] c"changed ownership of %s from %s to %s\0A\00", align 1
@.str.15.48 = private unnamed_addr constant [35 x i8] c"changed group of %s from %s to %s\0A\00", align 1
@.str.16.47 = private unnamed_addr constant [30 x i8] c"no change to ownership of %s\0A\00", align 1
@.str.17.57 = private unnamed_addr constant [48 x i8] c"failed to change ownership of %s from %s to %s\0A\00", align 1
@.str.18.50 = private unnamed_addr constant [44 x i8] c"failed to change group of %s from %s to %s\0A\00", align 1
@.str.19.49 = private unnamed_addr constant [34 x i8] c"failed to change ownership of %s\0A\00", align 1
@.str.20.58 = private unnamed_addr constant [40 x i8] c"failed to change ownership of %s to %s\0A\00", align 1
@.str.21.51 = private unnamed_addr constant [36 x i8] c"failed to change group of %s to %s\0A\00", align 1
@.str.22.59 = private unnamed_addr constant [32 x i8] c"ownership of %s retained as %s\0A\00", align 1
@.str.23.53 = private unnamed_addr constant [28 x i8] c"group of %s retained as %s\0A\00", align 1
@.str.24.52 = private unnamed_addr constant [26 x i8] c"ownership of %s retained\0A\00", align 1
@.str.25.54 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.26.55 = private unnamed_addr constant [17 x i8] c"src/chown-core.c\00", align 1
@__PRETTY_FUNCTION__.describe_change = private unnamed_addr constant [111 x i8] c"void describe_change(const char *, enum Change_status, const char *, const char *, const char *, const char *)\00", align 1
@chown_mode = dso_local local_unnamed_addr global i32 0, align 4
@.str.90 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.90, i64 0, i64 0), align 8
@file_name = internal unnamed_addr global i8* null, align 8
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4
@.str.93 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.94 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.95 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.96 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.97 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4
@.str.1.103 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.105 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.104 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4
@.str.4.98 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.99 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.100 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1.108 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.114 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str.1.120 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str.2.121 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str.3.122 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant %struct.hash_tuning { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4
@program_name = dso_local local_unnamed_addr global i8* null, align 8
@.str.153 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.154 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.158 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.159 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.160 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.161 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.162 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.163 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.164 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.165 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.166 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.158, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.159, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.160, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.161, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.162, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.163, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.164, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.165, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.166, i32 0, i32 0), i8* null], align 8
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8
@nslots = internal unnamed_addr global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 1
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@.str.10.169 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.167 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.170 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.168 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1
@.str.185 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.190 = private unnamed_addr constant [27 x i8] c"warning: '.' should be ':'\00", align 1
@.str.1.193 = private unnamed_addr constant [13 x i8] c"invalid spec\00", align 1
@.str.2.191 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3.192 = private unnamed_addr constant [13 x i8] c"invalid user\00", align 1
@.str.4.194 = private unnamed_addr constant [14 x i8] c"invalid group\00", align 1
@.str.5.195 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.196 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.197 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.198 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.199 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.200 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.201 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.202 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.203 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.204 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.205 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.206 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.207 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.208 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.209 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.210 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.211 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.212 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.217 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.218 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.219 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.220 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.221 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.222 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.223 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1
@exit_failure = dso_local global i32 1, align 4
@.str.242 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.240 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.241 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.245 = private unnamed_addr constant [29 x i8] c"(*__errno_location ()) != 22\00", align 1
@.str.1.246 = private unnamed_addr constant [11 x i8] c"lib/xfts.c\00", align 1
@__PRETTY_FUNCTION__.xfts_open = private unnamed_addr constant [78 x i8] c"FTS *xfts_open(char *const *, int, int (*)(const FTSENT **, const FTSENT **))\00", align 1
@.str.257 = private unnamed_addr constant [24 x i8] c"state->magic == 9827862\00", align 1
@.str.1.258 = private unnamed_addr constant [18 x i8] c"lib/cycle-check.c\00", align 1
@__PRETTY_FUNCTION__.cycle_check = private unnamed_addr constant [67 x i8] c"_Bool cycle_check(struct cycle_check_state *, const struct stat *)\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4
@.str.271 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4
@.str.276 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.277 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [7 x %struct.infomap], align 8
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #41
  %7 = load i8*, i8** @program_name, align 8, !tbaa !12
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #41
  br label %137

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #41
  %11 = load i8*, i8** @program_name, align 8, !tbaa !12
  %12 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %15 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %14, i32 noundef 5) #41
  %16 = load i8*, i8** @program_name, align 8, !tbaa !12
  %17 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11, i8* noundef %15, i8* noundef %16) #41
  %18 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0)
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %20, i32 noundef 5) #41
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %23 = tail call i32 @fputs_unlocked(i8* noundef %21, %struct._IO_FILE* noundef %22)
  %24 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #41
  tail call fastcc void @oputs_(i8* noundef %26, i8* noundef %27)
  %28 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %31 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #41
  tail call fastcc void @oputs_(i8* noundef %30, i8* noundef %31)
  %32 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %35 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #41
  tail call fastcc void @oputs_(i8* noundef %34, i8* noundef %35)
  %36 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %39 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([141 x i8], [141 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #41
  tail call fastcc void @oputs_(i8* noundef %38, i8* noundef %39)
  %40 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %43 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([162 x i8], [162 x i8]* @.str.12, i64 0, i64 0), i32 noundef 5) #41
  tail call fastcc void @oputs_(i8* noundef %42, i8* noundef %43)
  %44 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %47 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([266 x i8], [266 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #41
  tail call fastcc void @oputs_(i8* noundef %46, i8* noundef %47)
  %48 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %51 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #41
  tail call fastcc void @oputs_(i8* noundef %50, i8* noundef %51)
  %52 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #41
  tail call fastcc void @oputs_(i8* noundef %54, i8* noundef %55)
  %56 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %59 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([145 x i8], [145 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #41
  tail call fastcc void @oputs_(i8* noundef %58, i8* noundef %59)
  %60 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %63 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #41
  tail call fastcc void @oputs_(i8* noundef %62, i8* noundef %63)
  %64 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %67 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([183 x i8], [183 x i8]* @.str.65, i64 0, i64 0), i32 noundef 5) #41
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %67, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0)) #41
  %69 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.66, i64 0, i64 0), i32 noundef 5) #41
  tail call fastcc void @oputs_(i8* noundef %66, i8* noundef %69) #41
  %70 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.67, i64 0, i64 0), i32 noundef 5) #41
  tail call fastcc void @oputs_(i8* noundef %66, i8* noundef %70) #41
  %71 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #41
  tail call fastcc void @oputs_(i8* noundef %66, i8* noundef %71) #41
  %72 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %75 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #41
  tail call fastcc void @oputs_(i8* noundef %74, i8* noundef %75)
  %76 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %79 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i64 0, i64 0), i32 noundef 5) #41
  tail call fastcc void @oputs_(i8* noundef %78, i8* noundef %79)
  %80 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %9
  %83 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([192 x i8], [192 x i8]* @.str.21, i64 0, i64 0), i32 noundef 5) #41
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %85 = tail call i32 @fputs_unlocked(i8* noundef %83, %struct._IO_FILE* noundef %84)
  %86 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([201 x i8], [201 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #41
  %90 = load i8*, i8** @program_name, align 8, !tbaa !12
  %91 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %89, i8* noundef %90, i8* noundef %90, i8* noundef %90) #41
  br label %96

92:                                               ; preds = %9, %82
  %93 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([133 x i8], [133 x i8]* @.str.23, i64 0, i64 0), i32 noundef 5) #41
  %94 = load i8*, i8** @program_name, align 8, !tbaa !12
  %95 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %93, i8* noundef %94, i8* noundef %94) #41
  br label %96

96:                                               ; preds = %92, %88
  %97 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %100 = bitcast [7 x %struct.infomap]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %100) #41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %100, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #41
  %101 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0
  br label %102

102:                                              ; preds = %107, %96
  %103 = phi i8* [ %110, %107 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), %96 ]
  %104 = phi %struct.infomap* [ %108, %107 ], [ %101, %96 ]
  %105 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(6) %99, i8* noundef nonnull dereferenceable(1) %103) #42
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.infomap, %struct.infomap* %104, i64 1
  %109 = getelementptr inbounds %struct.infomap, %struct.infomap* %108, i64 0, i32 0
  %110 = load i8*, i8** %109, align 8, !tbaa !17
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %102, !llvm.loop !19

112:                                              ; preds = %107, %102
  %113 = phi %struct.infomap* [ %104, %102 ], [ %108, %107 ]
  %114 = getelementptr inbounds %struct.infomap, %struct.infomap* %113, i64 0, i32 1
  %115 = load i8*, i8** %114, align 8, !tbaa !21
  %116 = icmp eq i8* %115, null
  %117 = select i1 %116, i8* %99, i8* %115
  tail call void @emit_bug_reporting_address() #41
  %118 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #41
  %119 = icmp eq i8* %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %112
  %121 = tail call i32 @strncmp(i8* noundef nonnull %118, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i64 noundef 3) #42
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.73, i64 0, i64 0), i32 noundef 5) #41
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %126 = tail call i32 @fputs_unlocked(i8* noundef %124, %struct._IO_FILE* noundef %125) #41
  br label %127

127:                                              ; preds = %112, %120, %123
  %128 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %99, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i64 2)
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i8* %99
  %131 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i64 0, i64 0), i32 noundef 5) #41
  %132 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %131, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.58, i64 0, i64 0), i8* noundef %130) #41
  %133 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.75, i64 0, i64 0), i32 noundef 5) #41
  %134 = icmp eq i8* %117, %99
  %135 = select i1 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0)
  %136 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %133, i8* noundef %117, i8* noundef %135) #41
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %100) #41
  br label %137

137:                                              ; preds = %127, %4
  tail call void @exit(i32 noundef %0) #43
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
define internal fastcc void @oputs_(i8* noundef %0, i8* noundef %1) unnamed_addr #5 {
  %3 = load i32, i32* @oputs_.help_no_sgr, align 4, !tbaa !22
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #41
  %7 = icmp eq i8* %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = load i8, i8* %6, align 1, !tbaa !16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #42
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, i32* @oputs_.help_no_sgr, align 4, !tbaa !22
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i32 [ %16, %15 ], [ %3, %2 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %22 = tail call i32 @fputs_unlocked(i8* noundef %1, %struct._IO_FILE* noundef %21)
  br label %156

23:                                               ; preds = %17
  %24 = tail call i64 @strspn(i8* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #42
  %25 = getelementptr inbounds i8, i8* %1, i64 %24
  %26 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %1, i32 noundef 45) #42
  %27 = icmp eq i8* %26, null
  br i1 %27, label %56, label %28

28:                                               ; preds = %23
  %29 = icmp eq i8* %26, %25
  br i1 %29, label %56, label %30

30:                                               ; preds = %28
  %31 = icmp ult i8* %25, %26
  br i1 %31, label %32, label %52

32:                                               ; preds = %30
  %33 = tail call i16** @__ctype_b_loc() #44
  %34 = load i16*, i16** %33, align 8, !tbaa !12
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi i8* [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  %38 = getelementptr inbounds i8, i8* %36, i64 1
  %39 = load i8, i8* %36, align 1, !tbaa !16
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, i16* %34, i64 %40
  %42 = load i16, i16* %41, align 2, !tbaa !24
  %43 = lshr i16 %42, 13
  %44 = and i16 %43, 1
  %45 = zext i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45
  %47 = icmp ult i8* %38, %26
  %48 = icmp ult i64 %46, 2
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %35, label %50, !llvm.loop !26

50:                                               ; preds = %35
  %51 = icmp eq i64 %46, 2
  br label %52

52:                                               ; preds = %50, %30
  %53 = phi i1 [ false, %30 ], [ %51, %50 ]
  %54 = select i1 %53, i8* %25, i8* %26
  %55 = xor i1 %53, true
  br label %56

56:                                               ; preds = %23, %28, %52
  %57 = phi i8* [ %54, %52 ], [ %25, %28 ], [ %25, %23 ]
  %58 = phi i1 [ %55, %52 ], [ true, %28 ], [ false, %23 ]
  %59 = tail call i64 @strcspn(i8* noundef %57, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0)) #42
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  br label %61

61:                                               ; preds = %92, %56
  %62 = phi i8* [ %60, %56 ], [ %93, %92 ]
  %63 = phi i1 [ %58, %56 ], [ %71, %92 ]
  %64 = load i8, i8* %62, align 1, !tbaa !16
  switch i8 %64, label %70 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %65
  ]

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, i8* %62, i64 1
  %67 = load i8, i8* %66, align 1, !tbaa !16
  %68 = icmp ne i8 %67, 45
  %69 = select i1 %68, i1 %63, i1 false
  br label %70

70:                                               ; preds = %65, %61
  %71 = phi i1 [ %63, %61 ], [ %69, %65 ]
  %72 = tail call i16** @__ctype_b_loc() #44
  %73 = load i16*, i16** %72, align 8, !tbaa !12
  %74 = zext i8 %64 to i64
  %75 = getelementptr inbounds i16, i16* %73, i64 %74
  %76 = load i16, i16* %75, align 2, !tbaa !24
  %77 = and i16 %76, 8192
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %70
  %80 = icmp eq i8 %64, 9
  br i1 %80, label %94, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds i8, i8* %62, i64 1
  %83 = load i8, i8* %82, align 1, !tbaa !16
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds i16, i16* %73, i64 %84
  %86 = load i16, i16* %85, align 2, !tbaa !24
  %87 = and i16 %86, 8192
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = icmp eq i8 %83, 45
  %91 = select i1 %71, i1 true, i1 %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %89, %70
  %93 = getelementptr inbounds i8, i8* %62, i64 1
  br label %61, !llvm.loop !27

94:                                               ; preds = %89, %61, %61, %79, %81
  %95 = ptrtoint i8* %25 to i64
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %97 = tail call i64 @fwrite_unlocked(i8* noundef %1, i64 noundef 1, i64 noundef %24, %struct._IO_FILE* noundef %96)
  %98 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #42
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %128, label %100

100:                                              ; preds = %94
  %101 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)) #42
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %128, label %103

103:                                              ; preds = %100
  %104 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0)) #42
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %128, label %106

106:                                              ; preds = %103
  %107 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0)) #42
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %128, label %109

109:                                              ; preds = %106
  %110 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0)) #42
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %109
  %113 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0)) #42
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %112
  %116 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0)) #42
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %115
  %119 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0)) #42
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %118
  %122 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0)) #42
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0)) #42
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i8* %0
  br label %128

128:                                              ; preds = %100, %106, %112, %118, %121, %124, %115, %109, %103, %94
  %129 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %94 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), %100 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), %103 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), %106 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), %109 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), %112 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), %115 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), %118 ], [ %127, %124 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), %121 ]
  %130 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i64 noundef 6) #42
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %57, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i64 0, i64 0), i64 noundef 9) #42
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132, %128
  %136 = trunc i64 %59 to i32
  %137 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.58, i64 0, i64 0), i8* noundef %129, i8* noundef %129, i32 noundef %136, i8* noundef %57) #41
  br label %141

138:                                              ; preds = %132
  %139 = trunc i64 %59 to i32
  %140 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.60, i64 0, i64 0), i8* noundef %129, i32 noundef %139, i8* noundef %57) #41
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %143 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), %struct._IO_FILE* noundef %142)
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %145 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), %struct._IO_FILE* noundef %144)
  %146 = ptrtoint i8* %62 to i64
  %147 = sub i64 %146, %95
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %149 = tail call i64 @fwrite_unlocked(i8* noundef %25, i64 noundef 1, i64 noundef %147, %struct._IO_FILE* noundef %148)
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %151 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), %struct._IO_FILE* noundef %150)
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %153 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0), %struct._IO_FILE* noundef %152)
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %155 = tail call i32 @fputs_unlocked(i8* noundef nonnull %62, %struct._IO_FILE* noundef %154)
  br label %156

156:                                              ; preds = %141, %20
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

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind readonly
declare noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #13 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.Chown_option, align 8
  %6 = alloca i8, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  %10 = alloca i8, align 4
  %11 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #41
  store i32 -1, i32* %3, align 4, !tbaa !22
  %12 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #41
  store i32 -1, i32* %4, align 4, !tbaa !22
  %13 = bitcast %struct.Chown_option* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #41
  %14 = load i8*, i8** %1, align 8, !tbaa !12
  tail call void @set_program_name(i8* noundef %14) #41
  %15 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0)) #41
  %16 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0)) #41
  %17 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0)) #41
  %18 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #41
  call void @chopt_init(%struct.Chown_option* noundef nonnull %5) #41
  %19 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %5, i64 0, i32 0
  %20 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %5, i64 0, i32 4
  %21 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %5, i64 0, i32 1
  br label %22

22:                                               ; preds = %27, %2
  %23 = phi i32 [ -1, %2 ], [ %28, %27 ]
  %24 = phi i32 [ 16, %2 ], [ %29, %27 ]
  %25 = phi i1 [ false, %2 ], [ %30, %27 ]
  %26 = call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #41
  switch i32 %26, label %64 [
    i32 -1, label %65
    i32 72, label %27
    i32 76, label %31
    i32 80, label %32
    i32 104, label %33
    i32 256, label %34
    i32 258, label %35
    i32 259, label %36
    i32 260, label %37
    i32 257, label %39
    i32 82, label %51
    i32 99, label %52
    i32 102, label %53
    i32 118, label %54
    i32 -2, label %55
    i32 -3, label %56
  ]

27:                                               ; preds = %22, %54, %53, %52, %51, %50, %37, %36, %35, %34, %33, %32, %31
  %28 = phi i32 [ %23, %54 ], [ %23, %53 ], [ %23, %52 ], [ %23, %51 ], [ %23, %50 ], [ %23, %37 ], [ %23, %36 ], [ %23, %35 ], [ 1, %34 ], [ 0, %33 ], [ %23, %32 ], [ %23, %31 ], [ %23, %22 ]
  %29 = phi i32 [ %24, %54 ], [ %24, %53 ], [ %24, %52 ], [ %24, %51 ], [ %24, %50 ], [ %24, %37 ], [ %24, %36 ], [ %24, %35 ], [ %24, %34 ], [ %24, %33 ], [ 16, %32 ], [ 2, %31 ], [ 17, %22 ]
  %30 = phi i1 [ %25, %54 ], [ %25, %53 ], [ %25, %52 ], [ %25, %51 ], [ %25, %50 ], [ %25, %37 ], [ true, %36 ], [ false, %35 ], [ %25, %34 ], [ %25, %33 ], [ %25, %32 ], [ %25, %31 ], [ %25, %22 ]
  br label %22, !llvm.loop !28

31:                                               ; preds = %22
  br label %27

32:                                               ; preds = %22
  br label %27

33:                                               ; preds = %22
  br label %27

34:                                               ; preds = %22
  br label %27

35:                                               ; preds = %22
  br label %27

36:                                               ; preds = %22
  br label %27

37:                                               ; preds = %22
  %38 = load i8*, i8** @optarg, align 8, !tbaa !12
  store i8* %38, i8** @reference_file, align 8, !tbaa !12
  br label %27

39:                                               ; preds = %22
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #41
  %40 = load i8*, i8** @optarg, align 8, !tbaa !12
  %41 = call i8* @parse_user_spec_warn(i8* noundef %40, i32* noundef nonnull %3, i32* noundef nonnull %4, i8** noundef null, i8** noundef null, i8* noundef nonnull %6) #41
  %42 = icmp eq i8* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = load i8, i8* %6, align 4, !tbaa !29, !range !31
  %45 = xor i8 %44, 1
  %46 = zext i8 %45 to i32
  %47 = load i8*, i8** @optarg, align 8, !tbaa !12
  %48 = call i8* @quote(i8* noundef %47) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef %46, i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* noundef nonnull %41, i8* noundef %48) #41
  %49 = icmp eq i8 %45, 0
  call void @llvm.assume(i1 %49)
  br label %50

50:                                               ; preds = %43, %39
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #41
  br label %27

51:                                               ; preds = %22
  store i8 1, i8* %21, align 4, !tbaa !32
  br label %27

52:                                               ; preds = %22
  store i32 1, i32* %19, align 8, !tbaa !34
  br label %27

53:                                               ; preds = %22
  store i8 1, i8* %20, align 1, !tbaa !35
  br label %27

54:                                               ; preds = %22
  store i32 0, i32* %19, align 8, !tbaa !34
  br label %27

55:                                               ; preds = %22
  call void @usage(i32 noundef 0) #45
  unreachable

56:                                               ; preds = %22
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %58 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %61 = load i8*, i8** @Version, align 8, !tbaa !12
  %62 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0)) #41
  %63 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0)) #41
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %57, i8* noundef %60, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* noundef %61, i8* noundef %62, i8* noundef %63, i8* noundef null) #41
  call void @exit(i32 noundef 0) #43
  unreachable

64:                                               ; preds = %22
  call void @usage(i32 noundef 1) #45
  unreachable

65:                                               ; preds = %22
  %66 = load i8, i8* %21, align 4, !tbaa !32, !range !31
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = icmp eq i32 %24, 16
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  %71 = icmp eq i32 %23, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  %73 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0), i32 noundef 5) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %73) #41
  unreachable

74:                                               ; preds = %65, %70, %68
  %75 = phi i32 [ %23, %68 ], [ 0, %70 ], [ %23, %65 ]
  %76 = phi i32 [ %24, %68 ], [ 16, %70 ], [ 16, %65 ]
  %77 = icmp ne i32 %75, 0
  %78 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %5, i64 0, i32 3
  %79 = zext i1 %77 to i8
  store i8 %79, i8* %78, align 8, !tbaa !36
  %80 = load i32, i32* @optind, align 4, !tbaa !22
  %81 = sub nsw i32 %0, %80
  %82 = load i8*, i8** @reference_file, align 8, !tbaa !12
  %83 = icmp eq i8* %82, null
  %84 = select i1 %83, i32 2, i32 1
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %74
  %87 = icmp slt i32 %80, %0
  br i1 %87, label %90, label %88

88:                                               ; preds = %86
  %89 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i32 noundef 5) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %89) #41
  br label %97

90:                                               ; preds = %86
  %91 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0), i32 noundef 5) #41
  %92 = add nsw i32 %0, -1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %1, i64 %93
  %95 = load i8*, i8** %94, align 8, !tbaa !12
  %96 = call i8* @quote(i8* noundef %95) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %91, i8* noundef %96) #41
  br label %97

97:                                               ; preds = %90, %88
  call void @usage(i32 noundef 1) #45
  unreachable

98:                                               ; preds = %74
  %99 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %99) #41
  store i32 -1, i32* %7, align 4, !tbaa !22
  %100 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %100) #41
  store i32 -1, i32* %8, align 4, !tbaa !22
  br i1 %83, label %124, label %101

101:                                              ; preds = %98
  %102 = bitcast %struct.stat* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %102) #41
  %103 = call i32 @stat(i8* noundef nonnull %82, %struct.stat* noundef nonnull %9) #41
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %101
  %106 = tail call i32* @__errno_location() #44
  %107 = load i32, i32* %106, align 4, !tbaa !22
  %108 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 noundef 5) #41
  %109 = load i8*, i8** @reference_file, align 8, !tbaa !12
  %110 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %109) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %107, i8* noundef %108, i8* noundef %110) #41
  unreachable

111:                                              ; preds = %101
  %112 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.stat, %struct.stat* %9, i64 0, i32 4
  %116 = load i32, i32* %115, align 8, !tbaa !37
  store i32 %116, i32* %7, align 4, !tbaa !22
  %117 = call noalias nonnull i8* @uid_to_name(i32 noundef %116) #41
  %118 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %5, i64 0, i32 5
  store i8* %117, i8** %118, align 8, !tbaa !41
  br label %119

119:                                              ; preds = %114, %111
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %9, i64 0, i32 5
  %121 = load i32, i32* %120, align 4, !tbaa !42
  store i32 %121, i32* %8, align 4, !tbaa !22
  %122 = call noalias nonnull i8* @gid_to_name(i32 noundef %121) #41
  %123 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %5, i64 0, i32 6
  store i8* %122, i8** %123, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %102) #41
  br label %178

124:                                              ; preds = %98
  %125 = sext i32 %80 to i64
  %126 = getelementptr inbounds i8*, i8** %1, i64 %125
  %127 = load i8*, i8** %126, align 8, !tbaa !12
  %128 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %141

130:                                              ; preds = %124
  %131 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %127) #42
  %132 = add i64 %131, 2
  %133 = call noalias nonnull i8* @xmalloc(i64 noundef %132) #46
  %134 = bitcast i8* %133 to i16*
  store i16 58, i16* %134, align 1
  %135 = getelementptr i8, i8* %133, i64 1
  %136 = load i32, i32* @optind, align 4, !tbaa !22
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %1, i64 %137
  %139 = load i8*, i8** %138, align 8, !tbaa !12
  %140 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %135, i8* noundef nonnull dereferenceable(1) %139)
  br label %141

141:                                              ; preds = %130, %124
  %142 = phi i8* [ %133, %130 ], [ %127, %124 ]
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %10) #41
  %143 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %5, i64 0, i32 5
  %144 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %5, i64 0, i32 6
  %145 = call i8* @parse_user_spec_warn(i8* noundef %142, i32* noundef nonnull %7, i32* noundef nonnull %8, i8** noundef nonnull %143, i8** noundef nonnull %144, i8* noundef nonnull %10) #41
  %146 = load i32, i32* @optind, align 4, !tbaa !22
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %1, i64 %147
  %149 = load i8*, i8** %148, align 8, !tbaa !12
  %150 = icmp eq i8* %142, %149
  br i1 %150, label %152, label %151

151:                                              ; preds = %141
  call void @free(i8* noundef %142) #41
  br label %152

152:                                              ; preds = %151, %141
  %153 = icmp eq i8* %145, null
  br i1 %153, label %164, label %154

154:                                              ; preds = %152
  %155 = load i8, i8* %10, align 4, !tbaa !29, !range !31
  %156 = xor i8 %155, 1
  %157 = zext i8 %156 to i32
  %158 = load i32, i32* @optind, align 4, !tbaa !22
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %1, i64 %159
  %161 = load i8*, i8** %160, align 8, !tbaa !12
  %162 = call i8* @quote(i8* noundef %161) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef %157, i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* noundef nonnull %145, i8* noundef %162) #41
  %163 = icmp eq i8 %156, 0
  call void @llvm.assume(i1 %163)
  br label %164

164:                                              ; preds = %154, %152
  %165 = load i32, i32* @chown_mode, align 4, !tbaa !16
  %166 = icmp eq i32 %165, 0
  %167 = load i8*, i8** %143, align 8
  %168 = icmp eq i8* %167, null
  %169 = select i1 %166, i1 %168, i1 false
  %170 = load i8*, i8** %144, align 8
  %171 = icmp ne i8* %170, null
  %172 = select i1 %169, i1 %171, i1 false
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  %174 = call noalias nonnull i8* @xstrdup(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0)) #41
  store i8* %174, i8** %143, align 8, !tbaa !41
  br label %175

175:                                              ; preds = %173, %164
  %176 = load i32, i32* @optind, align 4, !tbaa !22
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* @optind, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %10) #41
  br label %178

178:                                              ; preds = %175, %119
  %179 = load i8, i8* %21, align 4, !tbaa !32, !range !31
  %180 = icmp eq i8 %179, 0
  %181 = xor i1 %25, true
  %182 = select i1 %180, i1 true, i1 %181
  br i1 %182, label %192, label %183

183:                                              ; preds = %178
  %184 = call %struct.dev_ino* @get_root_dev_ino(%struct.dev_ino* noundef nonnull @main.dev_ino_buf) #41
  %185 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %5, i64 0, i32 2
  store %struct.dev_ino* %184, %struct.dev_ino** %185, align 8, !tbaa !44
  %186 = icmp eq %struct.dev_ino* %184, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %183
  %188 = tail call i32* @__errno_location() #44
  %189 = load i32, i32* %188, align 4, !tbaa !22
  %190 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 noundef 5) #41
  %191 = call i8* @quotearg_style(i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0)) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %189, i8* noundef %190, i8* noundef %191) #41
  unreachable

192:                                              ; preds = %178, %183
  %193 = or i32 %76, 1024
  %194 = load i32, i32* @optind, align 4, !tbaa !22
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %1, i64 %195
  %197 = load i32, i32* %7, align 4, !tbaa !22
  %198 = load i32, i32* %8, align 4, !tbaa !22
  %199 = load i32, i32* %3, align 4, !tbaa !22
  %200 = load i32, i32* %4, align 4, !tbaa !22
  %201 = call i1 @chown_files(i8** noundef nonnull %196, i32 noundef %193, i32 noundef %197, i32 noundef %198, i32 noundef %199, i32 noundef %200, %struct.Chown_option* noundef nonnull %5) #41
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %100) #41
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %99) #41
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #41
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #41
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #41
  ret i32 %203
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nofree nounwind
declare noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #7

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @chopt_init(%struct.Chown_option* nocapture noundef writeonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %0, i64 0, i32 0
  store i32 2, i32* %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %0, i64 0, i32 2
  store %struct.dev_ino* null, %struct.dev_ino** %3, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %0, i64 0, i32 3
  store i8 1, i8* %4, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %0, i64 0, i32 1
  store i8 0, i8* %5, align 4, !tbaa !32
  %6 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %0, i64 0, i32 4
  store i8 0, i8* %6, align 1, !tbaa !35
  %7 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %0, i64 0, i32 5
  %8 = bitcast i8** %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local void @chopt_free(%struct.Chown_option* nocapture noundef readonly %0) local_unnamed_addr #18 {
  %2 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %0, i64 0, i32 5
  %3 = load i8*, i8** %2, align 8, !tbaa !41
  tail call void @free(i8* noundef %3) #41
  %4 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %0, i64 0, i32 6
  %5 = load i8*, i8** %4, align 8, !tbaa !43
  tail call void @free(i8* noundef %5) #41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @gid_to_name(i32 noundef %0) local_unnamed_addr #13 {
  %2 = alloca [21 x i8], align 1
  %3 = tail call %struct.group* @getgrgid(i32 noundef %0) #41
  %4 = icmp eq %struct.group* %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.group, %struct.group* %3, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !45
  %8 = tail call noalias nonnull i8* @xstrdup(i8* noundef %7) #41
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %10) #41
  %11 = zext i32 %0 to i64
  %12 = call i8* @umaxtostr(i64 noundef %11, i8* noundef nonnull %10) #41
  %13 = call noalias nonnull i8* @xstrdup(i8* noundef %12) #41
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %10) #41
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i8* [ %8, %5 ], [ %13, %9 ]
  ret i8* %15
}

declare %struct.group* @getgrgid(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @uid_to_name(i32 noundef %0) local_unnamed_addr #13 {
  %2 = alloca [21 x i8], align 1
  %3 = tail call %struct.passwd* @getpwuid(i32 noundef %0) #41
  %4 = icmp eq %struct.passwd* %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.passwd, %struct.passwd* %3, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8, !tbaa !47
  %8 = tail call noalias nonnull i8* @xstrdup(i8* noundef %7) #41
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %10) #41
  %11 = zext i32 %0 to i64
  %12 = call i8* @umaxtostr(i64 noundef %11, i8* noundef nonnull %10) #41
  %13 = call noalias nonnull i8* @xstrdup(i8* noundef %12) #41
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %10) #41
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i8* [ %8, %5 ], [ %13, %9 ]
  ret i8* %15
}

declare %struct.passwd* @getpwuid(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i1 @chown_files(i8** noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, %struct.Chown_option* noundef nonnull readonly %6) local_unnamed_addr #13 {
  %8 = alloca [21 x i8], align 1
  %9 = alloca [21 x i8], align 1
  %10 = alloca [21 x i8], align 1
  %11 = alloca [21 x i8], align 1
  %12 = alloca %struct.stat, align 8
  %13 = alloca %struct.stat, align 8
  %14 = and i32 %5, %4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %25

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %6, i64 0, i32 3
  %18 = load i8, i8* %17, align 8, !tbaa !36, !range !31
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %6, i64 0, i32 0
  %22 = load i32, i32* %21, align 8, !tbaa !34
  %23 = icmp eq i32 %22, 2
  %24 = select i1 %23, i32 8, i32 0
  br label %25

25:                                               ; preds = %20, %16, %7
  %26 = phi i32 [ 0, %16 ], [ 0, %7 ], [ %24, %20 ]
  %27 = or i32 %26, %1
  %28 = tail call noalias nonnull %struct.FTS* @xfts_open(i8** noundef nonnull %0, i32 noundef %27, i32 (%struct._ftsent**, %struct._ftsent**)* noundef null) #41
  %29 = call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef nonnull %28) #41
  %30 = icmp eq %struct._ftsent* %29, null
  br i1 %30, label %57, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %6, i64 0, i32 4
  %33 = bitcast %struct.stat* %13 to i8*
  %34 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %6, i64 0, i32 1
  %35 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %6, i64 0, i32 2
  %36 = icmp eq i32 %4, -1
  %37 = icmp eq i32 %5, -1
  %38 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %6, i64 0, i32 0
  %39 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %6, i64 0, i32 3
  %40 = getelementptr inbounds %struct.FTS, %struct.FTS* %28, i64 0, i32 6
  %41 = bitcast %struct.stat* %12 to i8*
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %12, i64 0, i32 0
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %12, i64 0, i32 1
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %12, i64 0, i32 4
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %12, i64 0, i32 5
  %46 = icmp eq i32 %2, -1
  %47 = select i1 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12.9, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11.10, i64 0, i64 0)
  %48 = icmp eq i32 %3, -1
  %49 = getelementptr inbounds [21 x i8], [21 x i8]* %11, i64 0, i64 0
  %50 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %51 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %6, i64 0, i32 5
  %52 = getelementptr inbounds [21 x i8], [21 x i8]* %9, i64 0, i64 0
  %53 = zext i32 %2 to i64
  %54 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %6, i64 0, i32 6
  %55 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0
  %56 = zext i32 %3 to i64
  br label %68

57:                                               ; preds = %445, %25
  %58 = phi i1 [ true, %25 ], [ %447, %445 ]
  %59 = tail call i32* @__errno_location() #44
  %60 = load i32, i32* %59, align 4, !tbaa !22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %450, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.Chown_option, %struct.Chown_option* %6, i64 0, i32 4
  %64 = load i8, i8* %63, align 1, !tbaa !35, !range !31
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %450

66:                                               ; preds = %62
  %67 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i32 noundef 5) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %60, i8* noundef %67) #41
  br label %450

68:                                               ; preds = %31, %445
  %69 = phi %struct._ftsent* [ %29, %31 ], [ %448, %445 ]
  %70 = phi i1 [ true, %31 ], [ %447, %445 ]
  %71 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %69, i64 0, i32 7
  %72 = load i8*, i8** %71, align 8, !tbaa !12
  %73 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %69, i64 0, i32 6
  %74 = load i8*, i8** %73, align 8, !tbaa !12
  %75 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %69, i64 0, i32 14
  %76 = load i16, i16* %75, align 8, !tbaa !24
  switch i16 %76, label %151 [
    i16 1, label %77
    i16 6, label %109
    i16 10, label %112
    i16 7, label %130
    i16 4, label %137
    i16 2, label %145
  ]

77:                                               ; preds = %68
  %78 = load i8, i8* %34, align 4, !tbaa !32, !range !31
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %151, label %80

80:                                               ; preds = %77
  %81 = load %struct.dev_ino*, %struct.dev_ino** %35, align 8, !tbaa !44
  %82 = icmp eq %struct.dev_ino* %81, null
  br i1 %82, label %445, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %69, i64 0, i32 17, i64 0, i32 0
  %85 = load i64, i64* %84, align 8, !tbaa !49
  %86 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %81, i64 0, i32 1
  %87 = load i64, i64* %86, align 8, !tbaa !50
  %88 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %69, i64 0, i32 17, i64 0, i32 1
  %89 = load i64, i64* %88, align 8, !tbaa !52
  %90 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %81, i64 0, i32 0
  %91 = load i64, i64* %90, align 8, !tbaa !53
  %92 = icmp eq i64 %85, %87
  %93 = icmp eq i64 %89, %91
  %94 = and i1 %92, %93
  br i1 %94, label %95, label %445

95:                                               ; preds = %83
  %96 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %72, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.37, i64 0, i64 0)) #42
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.38, i64 0, i64 0), i32 noundef 5) #41
  %100 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %72) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %99, i8* noundef %100) #41
  br label %105

101:                                              ; preds = %95
  %102 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4.39, i64 0, i64 0), i32 noundef 5) #41
  %103 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 4, i8* noundef %72) #41
  %104 = call i8* @quotearg_n_style(i32 noundef 1, i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.37, i64 0, i64 0)) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %102, i8* noundef %103, i8* noundef %104) #41
  br label %105

105:                                              ; preds = %101, %98
  %106 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5.40, i64 0, i64 0), i32 noundef 5) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %106) #41
  %107 = call i32 @rpl_fts_set(%struct.FTS* noundef nonnull %28, %struct._ftsent* noundef nonnull %69, i32 noundef 4) #41
  %108 = call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef nonnull %28) #41
  br label %445

109:                                              ; preds = %68
  %110 = load i8, i8* %34, align 4, !tbaa !32, !range !31
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %445, label %151

112:                                              ; preds = %68
  %113 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %69, i64 0, i32 12
  %114 = load i64, i64* %113, align 8, !tbaa !54
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %69, i64 0, i32 4
  %118 = load i64, i64* %117, align 8, !tbaa !54
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  store i64 1, i64* %117, align 8, !tbaa !54
  %121 = call i32 @rpl_fts_set(%struct.FTS* noundef nonnull %28, %struct._ftsent* noundef nonnull %69, i32 noundef 1) #41
  br label %445

122:                                              ; preds = %116, %112
  %123 = load i8, i8* %32, align 1, !tbaa !35, !range !31
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %69, i64 0, i32 8
  %127 = load i32, i32* %126, align 8, !tbaa !22
  %128 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6.41, i64 0, i64 0), i32 noundef 5) #41
  %129 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %72) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %127, i8* noundef %128, i8* noundef %129) #41
  br label %150

130:                                              ; preds = %68
  %131 = load i8, i8* %32, align 1, !tbaa !35, !range !31
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %69, i64 0, i32 8
  %135 = load i32, i32* %134, align 8, !tbaa !22
  %136 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %72) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %135, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.42, i64 0, i64 0), i8* noundef %136) #41
  br label %150

137:                                              ; preds = %68
  %138 = load i8, i8* %32, align 1, !tbaa !35, !range !31
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %69, i64 0, i32 8
  %142 = load i32, i32* %141, align 8, !tbaa !22
  %143 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8.43, i64 0, i64 0), i32 noundef 5) #41
  %144 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %72) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %142, i8* noundef %143, i8* noundef %144) #41
  br label %150

145:                                              ; preds = %68
  %146 = call i1 @cycle_warning_required(%struct.FTS* noundef nonnull %28, %struct._ftsent* noundef nonnull %69) #42
  br i1 %146, label %147, label %151

147:                                              ; preds = %145
  %148 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([186 x i8], [186 x i8]* @.str.9.44, i64 0, i64 0), i32 noundef 5) #41
  %149 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %72) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %148, i8* noundef %149) #41
  br label %445

150:                                              ; preds = %140, %137, %133, %130, %125, %122
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %33) #41
  br label %318

151:                                              ; preds = %145, %109, %77, %68
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %33) #41
  br i1 %15, label %152, label %162

152:                                              ; preds = %151
  %153 = load i32, i32* %38, align 8, !tbaa !34
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = load %struct.dev_ino*, %struct.dev_ino** %35, align 8, !tbaa !44
  %157 = icmp eq %struct.dev_ino* %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i8, i8* %39, align 8, !tbaa !36, !range !31
  %160 = icmp eq i8 %159, 0
  %161 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %69, i64 0, i32 17, i64 0
  br i1 %160, label %197, label %166

162:                                              ; preds = %155, %152, %151
  %163 = load i8, i8* %39, align 8, !tbaa !36
  %164 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %69, i64 0, i32 17, i64 0
  %165 = icmp eq i8 %163, 0
  br i1 %165, label %184, label %166

166:                                              ; preds = %158, %162
  %167 = phi %struct.stat* [ %164, %162 ], [ %161, %158 ]
  %168 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %69, i64 0, i32 17, i64 0, i32 2
  %169 = load i32, i32* %168, align 8, !tbaa !55
  %170 = and i32 %169, 61440
  %171 = icmp eq i32 %170, 40960
  br i1 %171, label %172, label %184

172:                                              ; preds = %166
  %173 = load i32, i32* %40, align 4, !tbaa !56
  %174 = call i32 @fstatat(i32 noundef %173, i8* noundef %74, %struct.stat* noundef nonnull %13, i32 noundef 0) #41
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %172
  %177 = load i8, i8* %32, align 1, !tbaa !35, !range !31
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %318

179:                                              ; preds = %176
  %180 = tail call i32* @__errno_location() #44
  %181 = load i32, i32* %180, align 4, !tbaa !22
  %182 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10.45, i64 0, i64 0), i32 noundef 5) #41
  %183 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %72) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %181, i8* noundef %182, i8* noundef %183) #41
  br label %318

184:                                              ; preds = %172, %166, %162
  %185 = phi %struct.stat* [ %13, %172 ], [ %164, %162 ], [ %167, %166 ]
  br i1 %36, label %192, label %186

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.stat, %struct.stat* %185, i64 0, i32 4
  %188 = load i32, i32* %187, align 8, !tbaa !37
  %189 = icmp ne i32 %188, %4
  %190 = or i1 %37, %189
  %191 = xor i1 %189, true
  br i1 %190, label %197, label %193

192:                                              ; preds = %184
  br i1 %37, label %197, label %193

193:                                              ; preds = %192, %186
  %194 = getelementptr inbounds %struct.stat, %struct.stat* %185, i64 0, i32 5
  %195 = load i32, i32* %194, align 4, !tbaa !42
  %196 = icmp eq i32 %195, %5
  br label %197

197:                                              ; preds = %158, %193, %192, %186
  %198 = phi %struct.stat* [ %185, %193 ], [ %185, %192 ], [ %185, %186 ], [ %161, %158 ]
  %199 = phi i1 [ %196, %193 ], [ true, %192 ], [ %191, %186 ], [ true, %158 ]
  %200 = load i16, i16* %75, align 8, !tbaa !24
  switch i16 %200, label %228 [
    i16 1, label %201
    i16 2, label %201
    i16 6, label %201
    i16 4, label %201
  ]

201:                                              ; preds = %197, %197, %197, %197
  %202 = load %struct.dev_ino*, %struct.dev_ino** %35, align 8, !tbaa !44
  %203 = icmp eq %struct.dev_ino* %202, null
  br i1 %203, label %228, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.stat, %struct.stat* %198, i64 0, i32 0
  %206 = load i64, i64* %205, align 8, !tbaa !49
  %207 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %202, i64 0, i32 1
  %208 = load i64, i64* %207, align 8, !tbaa !50
  %209 = getelementptr inbounds %struct.stat, %struct.stat* %198, i64 0, i32 1
  %210 = load i64, i64* %209, align 8, !tbaa !52
  %211 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %202, i64 0, i32 0
  %212 = load i64, i64* %211, align 8, !tbaa !53
  %213 = icmp eq i64 %206, %208
  %214 = icmp eq i64 %210, %212
  %215 = and i1 %213, %214
  br i1 %215, label %216, label %228

216:                                              ; preds = %204
  %217 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %72, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.37, i64 0, i64 0)) #42
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.38, i64 0, i64 0), i32 noundef 5) #41
  %221 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %72) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %220, i8* noundef %221) #41
  br label %226

222:                                              ; preds = %216
  %223 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4.39, i64 0, i64 0), i32 noundef 5) #41
  %224 = call i8* @quotearg_n_style(i32 noundef 0, i32 noundef 4, i8* noundef %72) #41
  %225 = call i8* @quotearg_n_style(i32 noundef 1, i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.37, i64 0, i64 0)) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %223, i8* noundef %224, i8* noundef %225) #41
  br label %226

226:                                              ; preds = %222, %219
  %227 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5.40, i64 0, i64 0), i32 noundef 5) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %227) #41
  br label %443

228:                                              ; preds = %204, %201, %197
  br i1 %199, label %229, label %318

229:                                              ; preds = %228
  %230 = load i8, i8* %39, align 8, !tbaa !36, !range !31
  %231 = icmp eq i8 %230, 0
  %232 = load i32, i32* %40, align 4, !tbaa !56
  br i1 %231, label %233, label %240

233:                                              ; preds = %229
  %234 = call i32 @fchownat(i32 noundef %232, i8* noundef %74, i32 noundef %2, i32 noundef %3, i32 noundef 256) #41
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %318, label %236

236:                                              ; preds = %233
  %237 = tail call i32* @__errno_location() #44
  %238 = load i32, i32* %237, align 4, !tbaa !22
  %239 = icmp eq i32 %238, 95
  br i1 %239, label %318, label %310

240:                                              ; preds = %229
  br i1 %15, label %306, label %241

241:                                              ; preds = %240
  %242 = getelementptr inbounds %struct.stat, %struct.stat* %198, i64 0, i32 2
  %243 = load i32, i32* %242, align 8, !tbaa !55
  %244 = trunc i32 %243 to i16
  %245 = and i16 %244, -4096
  switch i16 %245, label %306 [
    i16 -32768, label %247
    i16 16384, label %246
  ]

246:                                              ; preds = %241
  br label %247

247:                                              ; preds = %246, %241
  %248 = phi i32 [ 2304, %241 ], [ 18688, %246 ]
  %249 = call i32 (i32, i8*, i32, ...) @openat(i32 noundef %232, i8* noundef %74, i32 noundef %248) #41
  %250 = icmp sgt i32 %249, -1
  br i1 %250, label %266, label %251

251:                                              ; preds = %247
  %252 = tail call i32* @__errno_location() #44
  %253 = load i32, i32* %252, align 4, !tbaa !22
  %254 = icmp eq i32 %253, 13
  br i1 %254, label %255, label %310

255:                                              ; preds = %251
  %256 = load i32, i32* %242, align 8, !tbaa !55
  %257 = and i32 %256, 61440
  %258 = icmp eq i32 %257, 32768
  br i1 %258, label %259, label %306

259:                                              ; preds = %255
  %260 = or i32 %248, 1
  %261 = call i32 (i32, i8*, i32, ...) @openat(i32 noundef %232, i8* noundef %74, i32 noundef %260) #41
  %262 = icmp sgt i32 %261, -1
  br i1 %262, label %266, label %263

263:                                              ; preds = %259
  %264 = load i32, i32* %252, align 4, !tbaa !22
  %265 = icmp eq i32 %264, 13
  br i1 %265, label %306, label %310

266:                                              ; preds = %259, %247
  %267 = phi i32 [ %249, %247 ], [ %261, %259 ]
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %41) #41
  %268 = call i32 @fstat(i32 noundef %267, %struct.stat* noundef nonnull %12) #41
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %298

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.stat, %struct.stat* %198, i64 0, i32 0
  %272 = load i64, i64* %271, align 8, !tbaa !49
  %273 = load i64, i64* %42, align 8, !tbaa !49
  %274 = icmp eq i64 %272, %273
  %275 = getelementptr inbounds %struct.stat, %struct.stat* %198, i64 0, i32 1
  %276 = load i64, i64* %275, align 8, !tbaa !52
  %277 = load i64, i64* %43, align 8, !tbaa !52
  %278 = icmp eq i64 %276, %277
  %279 = and i1 %274, %278
  br i1 %279, label %280, label %302

280:                                              ; preds = %270
  %281 = load i32, i32* %44, align 8
  %282 = icmp eq i32 %281, %4
  %283 = select i1 %36, i1 true, i1 %282
  br i1 %283, label %284, label %294

284:                                              ; preds = %280
  %285 = load i32, i32* %45, align 4
  %286 = icmp eq i32 %285, %5
  %287 = select i1 %37, i1 true, i1 %286
  br i1 %287, label %288, label %294

288:                                              ; preds = %284
  %289 = call i32 @fchown(i32 noundef %267, i32 noundef %2, i32 noundef %3) #41
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %288
  %292 = call i32 @close(i32 noundef %267) #41
  %293 = icmp slt i32 %292, 0
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %41) #41
  br i1 %293, label %310, label %318

294:                                              ; preds = %284, %280
  %295 = tail call i32* @__errno_location() #44
  %296 = load i32, i32* %295, align 4, !tbaa !22
  %297 = call i32 @close(i32 noundef %267) #41
  store i32 %296, i32* %295, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %41) #41
  br label %318

298:                                              ; preds = %288, %266
  %299 = tail call i32* @__errno_location() #44
  %300 = load i32, i32* %299, align 4, !tbaa !22
  %301 = call i32 @close(i32 noundef %267) #41
  store i32 %300, i32* %299, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %41) #41
  br label %310

302:                                              ; preds = %270
  %303 = tail call i32* @__errno_location() #44
  %304 = load i32, i32* %303, align 4, !tbaa !22
  %305 = call i32 @close(i32 noundef %267) #41
  store i32 %304, i32* %303, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %41) #41
  br label %318

306:                                              ; preds = %263, %255, %241, %240
  %307 = load i32, i32* %40, align 4, !tbaa !56
  %308 = call i32 @fchownat(i32 noundef %307, i8* noundef %74, i32 noundef %2, i32 noundef %3, i32 noundef 0) #41
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %318, label %310

310:                                              ; preds = %306, %298, %291, %263, %251, %236
  %311 = load i8, i8* %32, align 1, !tbaa !35, !range !31
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %310
  %314 = tail call i32* @__errno_location() #44
  %315 = load i32, i32* %314, align 4, !tbaa !22
  %316 = call i8* @dcgettext(i8* noundef null, i8* noundef %47, i32 noundef 5) #41
  %317 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %72) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %315, i8* noundef %316, i8* noundef %317) #41
  br label %318

318:                                              ; preds = %313, %310, %306, %302, %294, %291, %236, %233, %228, %179, %176, %150
  %319 = phi %struct.stat* [ %198, %310 ], [ %198, %313 ], [ %198, %306 ], [ %198, %228 ], [ %13, %179 ], [ %13, %176 ], [ null, %150 ], [ %198, %302 ], [ %198, %233 ], [ %198, %294 ], [ %198, %236 ], [ %198, %291 ]
  %320 = phi i1 [ true, %310 ], [ true, %313 ], [ true, %306 ], [ true, %228 ], [ true, %179 ], [ true, %176 ], [ true, %150 ], [ true, %302 ], [ true, %233 ], [ true, %294 ], [ false, %236 ], [ true, %291 ]
  %321 = phi i1 [ false, %310 ], [ false, %313 ], [ false, %306 ], [ true, %228 ], [ true, %179 ], [ true, %176 ], [ true, %150 ], [ true, %302 ], [ false, %233 ], [ false, %294 ], [ false, %236 ], [ false, %291 ]
  %322 = phi i1 [ false, %310 ], [ false, %313 ], [ true, %306 ], [ true, %228 ], [ false, %179 ], [ false, %176 ], [ false, %150 ], [ false, %302 ], [ true, %233 ], [ true, %294 ], [ true, %236 ], [ true, %291 ]
  %323 = load i32, i32* %38, align 8, !tbaa !34
  %324 = icmp eq i32 %323, 2
  br i1 %324, label %438, label %325

325:                                              ; preds = %318
  %326 = and i1 %320, %322
  %327 = xor i1 %326, true
  %328 = or i1 %321, %327
  br i1 %328, label %339, label %329

329:                                              ; preds = %325
  br i1 %46, label %334, label %330

330:                                              ; preds = %329
  %331 = getelementptr inbounds %struct.stat, %struct.stat* %319, i64 0, i32 4
  %332 = load i32, i32* %331, align 8, !tbaa !37
  %333 = icmp eq i32 %332, %2
  br i1 %333, label %334, label %341

334:                                              ; preds = %330, %329
  br i1 %48, label %339, label %335

335:                                              ; preds = %334
  %336 = getelementptr inbounds %struct.stat, %struct.stat* %319, i64 0, i32 5
  %337 = load i32, i32* %336, align 4, !tbaa !42
  %338 = icmp eq i32 %337, %3
  br i1 %338, label %339, label %341

339:                                              ; preds = %335, %334, %325
  %340 = icmp eq i32 %323, 0
  br i1 %340, label %344, label %438

341:                                              ; preds = %335, %330
  %342 = select i1 %320, i32 2, i32 1
  %343 = select i1 %322, i32 %342, i32 3
  br label %348

344:                                              ; preds = %339
  %345 = select i1 %320, i32 4, i32 1
  %346 = select i1 %322, i32 %345, i32 3
  %347 = icmp eq %struct.stat* %319, null
  br i1 %347, label %376, label %348

348:                                              ; preds = %344, %341
  %349 = phi i32 [ %343, %341 ], [ %346, %344 ]
  %350 = getelementptr inbounds %struct.stat, %struct.stat* %319, i64 0, i32 4
  %351 = load i32, i32* %350, align 8, !tbaa !37
  %352 = call %struct.passwd* @getpwuid(i32 noundef %351) #41
  %353 = icmp eq %struct.passwd* %352, null
  br i1 %353, label %358, label %354

354:                                              ; preds = %348
  %355 = getelementptr inbounds %struct.passwd, %struct.passwd* %352, i64 0, i32 0
  %356 = load i8*, i8** %355, align 8, !tbaa !47
  %357 = call noalias nonnull i8* @xstrdup(i8* noundef %356) #41
  br label %362

358:                                              ; preds = %348
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %49) #41
  %359 = zext i32 %351 to i64
  %360 = call i8* @umaxtostr(i64 noundef %359, i8* noundef nonnull %49) #41
  %361 = call noalias nonnull i8* @xstrdup(i8* noundef %360) #41
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %49) #41
  br label %362

362:                                              ; preds = %358, %354
  %363 = phi i8* [ %357, %354 ], [ %361, %358 ]
  %364 = getelementptr inbounds %struct.stat, %struct.stat* %319, i64 0, i32 5
  %365 = load i32, i32* %364, align 4, !tbaa !42
  %366 = call %struct.group* @getgrgid(i32 noundef %365) #41
  %367 = icmp eq %struct.group* %366, null
  br i1 %367, label %372, label %368

368:                                              ; preds = %362
  %369 = getelementptr inbounds %struct.group, %struct.group* %366, i64 0, i32 0
  %370 = load i8*, i8** %369, align 8, !tbaa !45
  %371 = call noalias nonnull i8* @xstrdup(i8* noundef %370) #41
  br label %376

372:                                              ; preds = %362
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %50) #41
  %373 = zext i32 %365 to i64
  %374 = call i8* @umaxtostr(i64 noundef %373, i8* noundef nonnull %50) #41
  %375 = call noalias nonnull i8* @xstrdup(i8* noundef %374) #41
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %50) #41
  br label %376

376:                                              ; preds = %372, %368, %344
  %377 = phi i8* [ %363, %368 ], [ %363, %372 ], [ null, %344 ]
  %378 = phi i32 [ %349, %368 ], [ %349, %372 ], [ %346, %344 ]
  %379 = phi i8* [ %371, %368 ], [ %375, %372 ], [ null, %344 ]
  %380 = load i8*, i8** %51, align 8, !tbaa !41
  %381 = icmp ne i8* %380, null
  %382 = or i1 %381, %46
  br i1 %382, label %386, label %383

383:                                              ; preds = %376
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %52) #41
  %384 = call i8* @umaxtostr(i64 noundef %53, i8* noundef nonnull %52) #41
  %385 = call noalias nonnull i8* @xstrdup(i8* noundef %384) #41
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %52) #41
  br label %386

386:                                              ; preds = %376, %383
  %387 = phi i8* [ %385, %383 ], [ %380, %376 ]
  %388 = load i8*, i8** %54, align 8, !tbaa !43
  %389 = icmp ne i8* %388, null
  %390 = or i1 %389, %48
  br i1 %390, label %394, label %391

391:                                              ; preds = %386
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %55) #41
  %392 = call i8* @umaxtostr(i64 noundef %56, i8* noundef nonnull %55) #41
  %393 = call noalias nonnull i8* @xstrdup(i8* noundef %392) #41
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %55) #41
  br label %394

394:                                              ; preds = %386, %391
  %395 = phi i8* [ %393, %391 ], [ %388, %386 ]
  %396 = icmp eq i32 %378, 1
  br i1 %396, label %397, label %401

397:                                              ; preds = %394
  %398 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13.46, i64 0, i64 0), i32 noundef 5) #41
  %399 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %72) #41
  %400 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %398, i8* noundef %399) #41
  br label %430

401:                                              ; preds = %394
  %402 = call fastcc i8* @user_group_str(i8* noundef %387, i8* noundef %395) #41
  %403 = icmp eq i8* %387, null
  %404 = select i1 %403, i8* null, i8* %377
  %405 = icmp eq i8* %395, null
  %406 = select i1 %405, i8* null, i8* %379
  %407 = call fastcc i8* @user_group_str(i8* noundef %404, i8* noundef %406) #41
  switch i32 %378, label %422 [
    i32 2, label %408
    i32 3, label %411
    i32 4, label %419
  ]

408:                                              ; preds = %401
  br i1 %403, label %409, label %423

409:                                              ; preds = %408
  %410 = select i1 %405, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16.47, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15.48, i64 0, i64 0)
  br label %423

411:                                              ; preds = %401
  %412 = icmp eq i8* %407, null
  br i1 %412, label %416, label %413

413:                                              ; preds = %411
  br i1 %403, label %414, label %423

414:                                              ; preds = %413
  %415 = select i1 %405, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19.49, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18.50, i64 0, i64 0)
  br label %423

416:                                              ; preds = %411
  br i1 %403, label %417, label %423

417:                                              ; preds = %416
  %418 = select i1 %405, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19.49, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21.51, i64 0, i64 0)
  br label %423

419:                                              ; preds = %401
  br i1 %403, label %420, label %423

420:                                              ; preds = %419
  %421 = select i1 %405, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24.52, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23.53, i64 0, i64 0)
  br label %423

422:                                              ; preds = %401
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26.55, i64 0, i64 0), i32 noundef 199, i8* noundef getelementptr inbounds ([111 x i8], [111 x i8]* @__PRETTY_FUNCTION__.describe_change, i64 0, i64 0)) #43
  unreachable

423:                                              ; preds = %420, %419, %417, %416, %414, %413, %409, %408
  %424 = phi i8* [ getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14.56, i64 0, i64 0), %408 ], [ %410, %409 ], [ getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17.57, i64 0, i64 0), %413 ], [ %415, %414 ], [ getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.58, i64 0, i64 0), %416 ], [ %418, %417 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22.59, i64 0, i64 0), %419 ], [ %421, %420 ]
  %425 = phi i8* [ %402, %408 ], [ %402, %409 ], [ %402, %413 ], [ %402, %414 ], [ null, %416 ], [ null, %417 ], [ %402, %419 ], [ %402, %420 ]
  %426 = phi i8* [ %407, %408 ], [ %407, %409 ], [ %407, %413 ], [ %407, %414 ], [ %402, %416 ], [ %402, %417 ], [ %407, %419 ], [ %407, %420 ]
  %427 = call i8* @dcgettext(i8* noundef null, i8* noundef %424, i32 noundef 5) #41
  %428 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %72) #41
  %429 = call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %427, i8* noundef %428, i8* noundef %426, i8* noundef %425) #41
  call void @free(i8* noundef %426) #41
  call void @free(i8* noundef %425) #41
  br label %430

430:                                              ; preds = %423, %397
  call void @free(i8* noundef %377) #41
  call void @free(i8* noundef %379) #41
  %431 = load i8*, i8** %51, align 8, !tbaa !41
  %432 = icmp eq i8* %387, %431
  br i1 %432, label %434, label %433

433:                                              ; preds = %430
  call void @free(i8* noundef %387) #41
  br label %434

434:                                              ; preds = %433, %430
  %435 = load i8*, i8** %54, align 8, !tbaa !43
  %436 = icmp eq i8* %395, %435
  br i1 %436, label %438, label %437

437:                                              ; preds = %434
  call void @free(i8* noundef %395) #41
  br label %438

438:                                              ; preds = %437, %434, %339, %318
  %439 = load i8, i8* %34, align 4, !tbaa !32, !range !31
  %440 = icmp eq i8 %439, 0
  br i1 %440, label %441, label %443

441:                                              ; preds = %438
  %442 = call i32 @rpl_fts_set(%struct.FTS* noundef nonnull %28, %struct._ftsent* noundef nonnull %69, i32 noundef 4) #41
  br label %443

443:                                              ; preds = %441, %438, %226
  %444 = phi i1 [ false, %226 ], [ %322, %441 ], [ %322, %438 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %33) #41
  br label %445

445:                                              ; preds = %443, %147, %120, %109, %105, %83, %80
  %446 = phi i1 [ %444, %443 ], [ false, %147 ], [ true, %120 ], [ false, %105 ], [ true, %83 ], [ true, %80 ], [ true, %109 ]
  %447 = and i1 %70, %446
  %448 = call %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef nonnull %28) #41
  %449 = icmp eq %struct._ftsent* %448, null
  br i1 %449, label %57, label %68

450:                                              ; preds = %62, %66, %57
  %451 = phi i1 [ false, %62 ], [ false, %66 ], [ %58, %57 ]
  %452 = call i32 @rpl_fts_close(%struct.FTS* noundef nonnull %28) #41
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %457, label %454

454:                                              ; preds = %450
  %455 = load i32, i32* %59, align 4, !tbaa !22
  %456 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.60, i64 0, i64 0), i32 noundef 5) #41
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %455, i8* noundef %456) #41
  br label %457

457:                                              ; preds = %454, %450
  %458 = phi i1 [ false, %454 ], [ %451, %450 ]
  ret i1 %458
}

; Function Attrs: nounwind
declare i32 @fstatat(i32 noundef, i8* noundef, %struct.stat* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchownat(i32 noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @openat(i32 noundef, i8* noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fchown(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i8* @user_group_str(i8* noundef %0, i8* noundef %1) unnamed_addr #13 {
  %3 = icmp eq i8* %0, null
  %4 = icmp eq i8* %1, null
  br i1 %3, label %18, label %5

5:                                                ; preds = %2
  br i1 %4, label %16, label %6

6:                                                ; preds = %5
  %7 = tail call i64 @strlen(i8* noundef nonnull %0) #42
  %8 = tail call i64 @strlen(i8* noundef nonnull %1) #42
  %9 = add i64 %7, 2
  %10 = add i64 %9, %8
  %11 = tail call noalias nonnull i8* @xmalloc(i64 noundef %10) #46
  %12 = tail call i8* @stpcpy(i8* nonnull %11, i8* nonnull %0)
  %13 = bitcast i8* %12 to i16*
  store i16 58, i16* %13, align 1
  %14 = getelementptr i8, i8* %12, i64 1
  %15 = tail call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull %1)
  br label %21

16:                                               ; preds = %5
  %17 = tail call noalias nonnull i8* @xstrdup(i8* noundef nonnull %0) #41
  br label %21

18:                                               ; preds = %2
  br i1 %4, label %21, label %19

19:                                               ; preds = %18
  %20 = tail call noalias nonnull i8* @xstrdup(i8* noundef nonnull %1) #41
  br label %21

21:                                               ; preds = %18, %19, %6, %16
  %22 = phi i8* [ %11, %6 ], [ %17, %16 ], [ %20, %19 ], [ null, %18 ]
  ret i8* %22
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @stpcpy(i8* noalias writeonly, i8* noalias nocapture readonly) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #16 {
  store i8* %0, i8** @file_name, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 {
  %2 = zext i1 %0 to i8
  store i8 %2, i8* @ignore_EPIPE, align 4, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #13 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #41
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !tbaa !29, !range !31
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #44
  %9 = load i32, i32* %8, align 4, !tbaa !22
  %10 = icmp eq i32 %9, 32
  br i1 %10, label %22, label %11

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.94, i64 0, i64 0), i32 noundef 5) #41
  %13 = load i8*, i8** @file_name, align 8, !tbaa !12
  %14 = icmp eq i8* %13, null
  %15 = tail call i32* @__errno_location() #44
  %16 = load i32, i32* %15, align 4, !tbaa !22
  br i1 %14, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #41
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.95, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #41
  br label %20

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.96, i64 0, i64 0), i8* noundef %12) #41
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !tbaa !22
  tail call void @_exit(i32 noundef %21) #43
  unreachable

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #41
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !tbaa !22
  tail call void @_exit(i32 noundef %27) #43
  unreachable

28:                                               ; preds = %22
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #20 {
  %5 = alloca %"struct.std::__va_list", align 8
  tail call fastcc void @flush_stdout()
  %6 = load void ()*, void ()** @error_print_progname, align 8, !tbaa !12
  %7 = icmp eq void ()* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void %6() #41
  br label %13

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %11 = tail call i8* @getprogname() #42
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i64 0, i64 0), i8* noundef %11) #41
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #41
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !tbaa.struct !59
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #41
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #13 {
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #41
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #41
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #13 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #41, !noalias !60
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #41
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #41, !noalias !60
  %11 = load i32, i32* @error_message_count, align 4, !tbaa !22
  %12 = add i32 %11, 1
  store i32 %12, i32* @error_message_count, align 4, !tbaa !22
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #41
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #41
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.99, i64 0, i64 0), i32 noundef 5) #41
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ]
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.100, i64 0, i64 0), i8* noundef %21) #41
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #41
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5
  %27 = load i8*, i8** %26, align 8, !tbaa !64
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6
  %29 = load i8*, i8** %28, align 8, !tbaa !66
  %30 = icmp ult i8* %27, %29
  br i1 %30, label %33, label %31, !prof !67

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #41
  br label %35

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %34, i8** %26, align 8, !tbaa !64
  store i8 10, i8* %27, align 1, !tbaa !16
  br label %35

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #41
  %38 = icmp eq i32 %0, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #43
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
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #13 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #41
  call void @llvm.va_start(i8* nonnull %6)
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !59
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #47
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #41
  call void @llvm.va_end(i8* nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #41
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #21

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #21

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #20 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = load i32, i32* @error_one_per_line, align 4, !tbaa !22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !tbaa !22
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
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #42
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !tbaa !12
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !tbaa !22
  br label %24

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout()
  %25 = load void ()*, void ()** @error_print_progname, align 8, !tbaa !12
  %26 = icmp eq void ()* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void %25() #41
  br label %32

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %30 = tail call i8* @getprogname() #42
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.103, i64 0, i64 0), i8* noundef %30) #41
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %34 = icmp eq i8* %2, null
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.104, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.105, i64 0, i64 0)
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #41
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #41
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !tbaa.struct !59
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #41
  br label %39

39:                                               ; preds = %13, %20, %32
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #13 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #41
  call void @llvm.va_start(i8* nonnull %8)
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !59
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #47
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #41
  call void @llvm.va_end(i8* nonnull %8)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local %struct.FTS* @rpl_fts_open(i8** nocapture noundef readonly %0, i32 noundef %1, i32 (%struct._ftsent**, %struct._ftsent**)* noundef %2) local_unnamed_addr #13 {
  %4 = icmp ult i32 %1, 8192
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i32* @__errno_location() #44
  store i32 22, i32* %6, align 4, !tbaa !22
  br label %212

7:                                                ; preds = %3
  %8 = and i32 %1, 516
  %9 = icmp eq i32 %8, 516
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32* @__errno_location() #44
  store i32 22, i32* %11, align 4, !tbaa !22
  br label %212

12:                                               ; preds = %7
  %13 = and i32 %1, 18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32* @__errno_location() #44
  store i32 22, i32* %16, align 4, !tbaa !22
  br label %212

17:                                               ; preds = %12
  %18 = tail call noalias dereferenceable_or_null(128) i8* @calloc(i64 noundef 1, i64 noundef 128) #41
  %19 = bitcast i8* %18 to %struct.FTS*
  %20 = icmp eq i8* %18, null
  br i1 %20, label %212, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 9
  store i32 (%struct._ftsent**, %struct._ftsent**)* %2, i32 (%struct._ftsent**, %struct._ftsent**)** %22, align 8, !tbaa !68
  %23 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 10
  %24 = and i32 %1, 2
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %1, -517
  %27 = or i32 %26, 4
  %28 = select i1 %25, i32 %1, i32 %27
  store i32 %28, i32* %23, align 8, !tbaa !69
  %29 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 6
  store i32 -100, i32* %29, align 4, !tbaa !56
  %30 = load i8*, i8** %0, align 8, !tbaa !12
  %31 = icmp eq i8* %30, null
  br i1 %31, label %53, label %32

32:                                               ; preds = %21, %32
  %33 = phi i8* [ %40, %32 ], [ %30, %21 ]
  %34 = phi i8** [ %39, %32 ], [ %0, %21 ]
  %35 = phi i64 [ %38, %32 ], [ 0, %21 ]
  %36 = tail call i64 @strlen(i8* noundef nonnull %33) #42
  %37 = icmp ugt i64 %36, %35
  %38 = select i1 %37, i64 %36, i64 %35
  %39 = getelementptr inbounds i8*, i8** %34, i64 1
  %40 = load i8*, i8** %39, align 8, !tbaa !12
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %32, !llvm.loop !70

42:                                               ; preds = %32
  %43 = add i64 %38, 1
  %44 = icmp ugt i64 %43, 4096
  %45 = select i1 %44, i64 %43, i64 4096
  %46 = add i64 %45, 256
  %47 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 7
  store i64 %46, i64* %47, align 8, !tbaa !71
  %48 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 4
  %49 = icmp eq i64 %46, 0
  %50 = select i1 %49, i64 1, i64 %46
  %51 = tail call i8* @malloc(i64 %50)
  %52 = icmp eq i8* %51, null
  br i1 %52, label %59, label %61

53:                                               ; preds = %21
  %54 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 7
  store i64 4352, i64* %54, align 8, !tbaa !71
  %55 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 4
  %56 = tail call dereferenceable_or_null(4352) i8* @malloc(i64 4352)
  %57 = icmp eq i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i8* %56, i8** %55, align 8, !tbaa !72
  br label %79

59:                                               ; preds = %53, %42
  %60 = phi i8** [ %55, %53 ], [ %48, %42 ]
  store i8* null, i8** %60, align 8, !tbaa !72
  br label %211

61:                                               ; preds = %42
  store i8* %51, i8** %48, align 8, !tbaa !72
  br i1 %31, label %79, label %62

62:                                               ; preds = %61
  %63 = tail call noalias dereferenceable_or_null(248) i8* @malloc(i64 noundef 248) #41
  %64 = bitcast i8* %63 to %struct._ftsent*
  %65 = icmp eq i8* %63, null
  br i1 %65, label %209, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 18, i64 0
  store i8 0, i8* %67, align 1, !tbaa !16
  %68 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 11
  %69 = bitcast %struct.FTS** %68 to i8**
  store i8* %18, i8** %69, align 8, !tbaa !12
  %70 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 7
  store i8* %51, i8** %70, align 8, !tbaa !12
  %71 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 8
  store i32 0, i32* %71, align 8, !tbaa !22
  %72 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %72, align 8, !tbaa !12
  %73 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 15
  store i16 0, i16* %73, align 2, !tbaa !24
  %74 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 16
  store i16 3, i16* %74, align 4, !tbaa !24
  %75 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 4
  %76 = bitcast i64* %75 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false) #41
  %77 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %64, i64 0, i32 12
  %78 = bitcast i64* %77 to <2 x i64>*
  store <2 x i64> <i64 -1, i64 0>, <2 x i64>* %78, align 8, !tbaa !54
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
  %95 = tail call i64 @strlen(i8* noundef nonnull %90) #42
  %96 = icmp ugt i64 %95, 2
  %97 = select i1 %88, i1 %96, i1 false
  br i1 %97, label %98, label %112

98:                                               ; preds = %89
  %99 = add i64 %95, -1
  %100 = getelementptr inbounds i8, i8* %90, i64 %99
  %101 = load i8, i8* %100, align 1, !tbaa !16
  %102 = icmp eq i8 %101, 47
  br i1 %102, label %103, label %112

103:                                              ; preds = %98, %109
  %104 = phi i64 [ %110, %109 ], [ %95, %98 ]
  %105 = add i64 %104, -2
  %106 = getelementptr inbounds i8, i8* %90, i64 %105
  %107 = load i8, i8* %106, align 1, !tbaa !16
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
  %116 = tail call noalias i8* @malloc(i64 noundef %115) #41
  %117 = bitcast i8* %116 to %struct._ftsent*
  %118 = icmp eq i8* %116, null
  br i1 %118, label %190, label %119

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 18, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %120, i8* noundef nonnull align 1 %90, i64 noundef %113, i1 noundef false) #41
  %121 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 18, i64 %113
  store i8 0, i8* %121, align 1, !tbaa !16
  %122 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 13
  store i64 %113, i64* %122, align 8, !tbaa !54
  %123 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 11
  %124 = bitcast %struct.FTS** %123 to i8**
  store i8* %18, i8** %124, align 8, !tbaa !12
  %125 = load i8*, i8** %80, align 8, !tbaa !72
  %126 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 7
  store i8* %125, i8** %126, align 8, !tbaa !12
  %127 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 8
  store i32 0, i32* %127, align 8, !tbaa !22
  %128 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %128, align 8, !tbaa !12
  %129 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 15
  store i16 0, i16* %129, align 2, !tbaa !24
  %130 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 16
  store i16 3, i16* %130, align 4, !tbaa !24
  %131 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 4
  %132 = bitcast i64* %131 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %132, i8 0, i64 16, i1 false) #41
  %133 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %117, i64 0, i32 12
  store i64 0, i64* %133, align 8, !tbaa !54
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
  store i64 2, i64* %140, align 8, !tbaa !73
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
  br i1 %159, label %160, label %89, !llvm.loop !74

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
  %168 = tail call fastcc %struct._ftsent* @fts_alloc(%struct.FTS* noundef nonnull %19, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.108, i64 0, i64 0), i64 noundef 0)
  %169 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 0
  store %struct._ftsent* %168, %struct._ftsent** %169, align 8, !tbaa !75
  %170 = icmp eq %struct._ftsent* %168, null
  br i1 %170, label %190, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %168, i64 0, i32 2
  store %struct._ftsent* %167, %struct._ftsent** %172, align 8, !tbaa !12
  %173 = load %struct._ftsent*, %struct._ftsent** %169, align 8, !tbaa !75
  %174 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %173, i64 0, i32 14
  store i16 9, i16* %174, align 8, !tbaa !24
  %175 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %173, i64 0, i32 12
  store i64 1, i64* %175, align 8, !tbaa !54
  %176 = tail call fastcc i1 @setup_dir(%struct.FTS* noundef nonnull %19)
  br i1 %176, label %177, label %190

177:                                              ; preds = %171
  %178 = load i32, i32* %23, align 8, !tbaa !69
  %179 = and i32 %178, 516
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = tail call fastcc i32 @diropen(%struct.FTS* noundef nonnull %19, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i64 0, i64 0))
  %183 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 5
  store i32 %182, i32* %183, align 8, !tbaa !76
  %184 = icmp slt i32 %182, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i32, i32* %23, align 8, !tbaa !69
  %187 = or i32 %186, 4
  store i32 %187, i32* %23, align 8, !tbaa !69
  br label %188

188:                                              ; preds = %185, %181, %177
  %189 = getelementptr inbounds %struct.FTS, %struct.FTS* %19, i64 0, i32 13
  tail call void @i_ring_init(%struct.I_ring* noundef nonnull %189, i32 noundef -1) #41
  br label %212

190:                                              ; preds = %112, %171, %166
  %191 = phi %struct._ftsent* [ %167, %166 ], [ %167, %171 ], [ %94, %112 ]
  %192 = tail call i32* @__errno_location() #44
  %193 = load i32, i32* %192, align 4, !tbaa !22
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
  %203 = tail call i32 @closedir(%struct.__dirstream* noundef nonnull %200) #41
  br label %204

204:                                              ; preds = %202, %195
  %205 = bitcast %struct._ftsent* %196 to i8*
  tail call void @free(i8* noundef %205) #41
  %206 = icmp eq %struct._ftsent* %198, null
  br i1 %206, label %207, label %195, !llvm.loop !77

207:                                              ; preds = %204, %190
  store i32 %193, i32* %192, align 4, !tbaa !22
  tail call void @free(i8* noundef %81) #41
  %208 = load i8*, i8** %80, align 8, !tbaa !72
  br label %209

209:                                              ; preds = %62, %207
  %210 = phi i8* [ %51, %62 ], [ %208, %207 ]
  tail call void @free(i8* noundef %210) #41
  br label %211

211:                                              ; preds = %59, %209
  tail call void @free(i8* noundef nonnull %18) #41
  br label %212

212:                                              ; preds = %188, %211, %17, %15, %10, %5
  %213 = phi %struct.FTS* [ null, %5 ], [ null, %10 ], [ null, %15 ], [ null, %211 ], [ %19, %188 ], [ null, %17 ]
  ret %struct.FTS* %213
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define internal fastcc i16 @fts_stat(%struct.FTS* nocapture noundef readonly %0, %struct._ftsent* noundef %1, i1 noundef %2) unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %5 = load i32, i32* %4, align 8, !tbaa !69
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = and i32 %5, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 12
  %13 = load i64, i64* %12, align 8, !tbaa !54
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
  %26 = load i32, i32* %25, align 4, !tbaa !56
  %27 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 6
  %28 = load i8*, i8** %27, align 8, !tbaa !12
  %29 = tail call i32 @fstatat(i32 noundef %26, i8* noundef %28, %struct.stat* noundef nonnull %22, i32 noundef %24) #41
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %21
  %32 = tail call i32* @__errno_location() #44
  br i1 %23, label %33, label %42

33:                                               ; preds = %31
  %34 = load i32, i32* %32, align 4, !tbaa !22
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %25, align 4, !tbaa !56
  %38 = load i8*, i8** %27, align 8, !tbaa !12
  %39 = tail call i32 @fstatat(i32 noundef %37, i8* noundef %38, %struct.stat* noundef nonnull %22, i32 noundef 256) #41
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %32, align 4, !tbaa !22
  br label %69

42:                                               ; preds = %31, %36, %33
  %43 = load i32, i32* %32, align 4, !tbaa !22
  %44 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 8
  store i32 %43, i32* %44, align 8, !tbaa !22
  %45 = bitcast %struct.stat* %22 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(128) %45, i8 noundef 0, i64 noundef 128, i1 noundef false) #41
  br label %69

46:                                               ; preds = %21
  %47 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 17, i64 0, i32 2
  %48 = load i32, i32* %47, align 8, !tbaa !55
  %49 = trunc i32 %48 to i16
  %50 = and i16 %49, -4096
  switch i16 %50, label %68 [
    i16 16384, label %51
    i16 -24576, label %69
    i16 -32768, label %67
  ]

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 0
  %53 = load i8, i8* %52, align 8, !tbaa !16
  %54 = icmp eq i8 %53, 46
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 1
  %57 = load i8, i8* %56, align 1, !tbaa !16
  switch i8 %57, label %69 [
    i8 0, label %62
    i8 46, label %58
  ]

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 18, i64 2
  %60 = load i8, i8* %59, align 2, !tbaa !16
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55, %58
  %63 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 12
  %64 = load i64, i64* %63, align 8, !tbaa !54
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
define internal fastcc %struct._ftsent* @fts_sort(%struct.FTS* nocapture noundef %0, %struct._ftsent* noundef %1, i64 noundef %2) unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 9
  %5 = bitcast i32 (%struct._ftsent**, %struct._ftsent**)** %4 to i32 (i8*, i8*)**
  %6 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %5, align 8, !tbaa !68
  %7 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 8
  %8 = load i64, i64* %7, align 8, !tbaa !78
  %9 = icmp ult i64 %8, %2
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 2
  %12 = load %struct._ftsent**, %struct._ftsent*** %11, align 8, !tbaa !79
  %13 = bitcast %struct._ftsent** %12 to i8*
  br label %25

14:                                               ; preds = %3
  %15 = add i64 %2, 40
  store i64 %15, i64* %7, align 8, !tbaa !78
  %16 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 2
  %17 = bitcast %struct._ftsent*** %16 to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !79
  %19 = tail call i8* @rpl_reallocarray(i8* noundef %18, i64 noundef %15, i64 noundef 8) #41
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i8*, i8** %17, align 8, !tbaa !79
  tail call void @free(i8* noundef %22) #41
  store %struct._ftsent** null, %struct._ftsent*** %16, align 8, !tbaa !79
  store i64 0, i64* %7, align 8, !tbaa !78
  br label %66

23:                                               ; preds = %14
  store i8* %19, i8** %17, align 8, !tbaa !79
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
  br i1 %36, label %37, label %30, !llvm.loop !80

37:                                               ; preds = %30
  %38 = bitcast %struct._ftsent*** %28 to i8**
  %39 = load i8*, i8** %38, align 8, !tbaa !79
  br label %40

40:                                               ; preds = %25, %37
  %41 = phi i8* [ %39, %37 ], [ %26, %25 ]
  tail call void @qsort(i8* noundef %41, i64 noundef %2, i64 noundef 8, i32 (i8*, i8*)* noundef %6) #41
  %42 = load %struct._ftsent**, %struct._ftsent*** %28, align 8, !tbaa !79
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
  br i1 %50, label %60, label %51, !llvm.loop !81

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
  br i1 %59, label %60, label %51, !llvm.loop !81

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
define internal fastcc %struct._ftsent* @fts_alloc(%struct.FTS* noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #23 {
  %4 = add i64 %2, 248
  %5 = and i64 %4, -8
  %6 = tail call noalias i8* @malloc(i64 noundef %5) #41
  %7 = bitcast i8* %6 to %struct._ftsent*
  %8 = icmp eq i8* %6, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 18, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %10, i8* noundef nonnull align 1 %1, i64 noundef %2, i1 noundef false) #41
  %11 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 18, i64 %2
  store i8 0, i8* %11, align 1, !tbaa !16
  %12 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 13
  store i64 %2, i64* %12, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 11
  store %struct.FTS* %0, %struct.FTS** %13, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %15 = load i8*, i8** %14, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 7
  store i8* %15, i8** %16, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %7, i64 0, i32 8
  store i32 0, i32* %17, align 8, !tbaa !22
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
define internal fastcc i1 @setup_dir(%struct.FTS* nocapture noundef %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %3 = load i32, i32* %2, align 8, !tbaa !69
  %4 = and i32 %3, 258
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = tail call noalias %struct.hash_table* @hash_initialize(i64 noundef 31, %struct.hash_tuning* noundef null, i64 (i8*, i64)* noundef nonnull @AD_hash, i1 (i8*, i8*)* noundef nonnull @AD_compare, void (i8*)* noundef nonnull @free) #41
  %8 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  store %struct.hash_table* %7, %struct.hash_table** %8, align 8, !tbaa !16
  %9 = icmp eq %struct.hash_table* %7, null
  br i1 %9, label %18, label %17

10:                                               ; preds = %1
  %11 = tail call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #41
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %13 = bitcast %union.anon* %12 to i8**
  store i8* %11, i8** %13, align 8, !tbaa !16
  %14 = icmp eq i8* %11, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = bitcast i8* %11 to %struct.cycle_check_state*
  tail call void @cycle_check_init(%struct.cycle_check_state* noundef nonnull %16) #41
  br label %17

17:                                               ; preds = %6, %15
  br label %18

18:                                               ; preds = %10, %6, %17
  %19 = phi i1 [ true, %17 ], [ false, %6 ], [ false, %10 ]
  ret i1 %19
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @diropen(%struct.FTS* nocapture noundef readonly %0, i8* noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %4 = load i32, i32* %3, align 8, !tbaa !69
  %5 = shl i32 %4, 11
  %6 = and i32 %5, 32768
  %7 = or i32 %6, 542976
  %8 = and i32 %4, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %12 = load i32, i32* %11, align 4, !tbaa !56
  %13 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 noundef %12, i8* noundef %1, i32 noundef %7) #41
  br label %16

14:                                               ; preds = %2
  %15 = tail call i32 (i8*, i32, ...) @open_safer(i8* noundef %1, i32 noundef %7) #41
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i32 [ %13, %10 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(%struct.__dirstream* nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal i64 @AD_hash(i8* nocapture noundef readonly %0, i64 noundef %1) #24 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !82
  %6 = urem i64 %5, %1
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal i1 @AD_compare(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #24 {
  %3 = getelementptr inbounds i8, i8* %0, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !82
  %6 = getelementptr inbounds i8, i8* %1, i64 8
  %7 = bitcast i8* %6 to i64*
  %8 = load i64, i64* %7, align 8, !tbaa !82
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = bitcast i8* %0 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !84
  %13 = bitcast i8* %1 to i64*
  %14 = load i64, i64* %13, align 8, !tbaa !84
  %15 = icmp eq i64 %12, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  ret i1 %17
}

; Function Attrs: nofree
declare void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* nocapture noundef) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fts_close(%struct.FTS* noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %3 = load %struct._ftsent*, %struct._ftsent** %2, align 8, !tbaa !75
  %4 = icmp eq %struct._ftsent* %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 12
  %7 = load i64, i64* %6, align 8, !tbaa !54
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
  tail call void @free(i8* noundef %19) #41
  %20 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %18, i64 0, i32 12
  %21 = load i64, i64* %20, align 8, !tbaa !54
  %22 = icmp sgt i64 %21, -1
  br i1 %22, label %9, label %23, !llvm.loop !85

23:                                               ; preds = %17, %5
  %24 = phi %struct._ftsent* [ %3, %5 ], [ %18, %17 ]
  %25 = bitcast %struct._ftsent* %24 to i8*
  tail call void @free(i8* noundef %25) #41
  br label %26

26:                                               ; preds = %23, %1
  %27 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %28 = load %struct._ftsent*, %struct._ftsent** %27, align 8, !tbaa !86
  %29 = icmp eq %struct._ftsent* %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = tail call i32* @__errno_location() #44
  %32 = load i32, i32* %31, align 4, !tbaa !22
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
  %41 = tail call i32 @closedir(%struct.__dirstream* noundef nonnull %38) #41
  br label %42

42:                                               ; preds = %40, %33
  %43 = bitcast %struct._ftsent* %34 to i8*
  tail call void @free(i8* noundef %43) #41
  %44 = icmp eq %struct._ftsent* %36, null
  br i1 %44, label %45, label %33, !llvm.loop !87

45:                                               ; preds = %42
  store i32 %32, i32* %31, align 4, !tbaa !22
  br label %46

46:                                               ; preds = %45, %26
  %47 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 2
  %48 = bitcast %struct._ftsent*** %47 to i8**
  %49 = load i8*, i8** %48, align 8, !tbaa !79
  tail call void @free(i8* noundef %49) #41
  %50 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %51 = load i8*, i8** %50, align 8, !tbaa !72
  tail call void @free(i8* noundef %51) #41
  %52 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %53 = load i32, i32* %52, align 8, !tbaa !69
  %54 = and i32 %53, 512
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %58 = load i32, i32* %57, align 4, !tbaa !56
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = tail call i32 @close(i32 noundef %58) #41
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %84, label %81

63:                                               ; preds = %46
  %64 = and i32 %53, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 5
  %68 = load i32, i32* %67, align 8, !tbaa !76
  %69 = tail call i32 @fchdir(i32 noundef %68) #41
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = tail call i32* @__errno_location() #44
  %73 = load i32, i32* %72, align 4, !tbaa !22
  br label %74

74:                                               ; preds = %71, %66
  %75 = phi i32 [ %73, %71 ], [ 0, %66 ]
  %76 = load i32, i32* %67, align 8, !tbaa !76
  %77 = tail call i32 @close(i32 noundef %76) #41
  %78 = icmp ne i32 %77, 0
  %79 = icmp eq i32 %75, 0
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %84

81:                                               ; preds = %74, %60
  %82 = tail call i32* @__errno_location() #44
  %83 = load i32, i32* %82, align 4, !tbaa !22
  br label %84

84:                                               ; preds = %81, %63, %74, %56, %60
  %85 = phi i32 [ 0, %60 ], [ 0, %56 ], [ 0, %63 ], [ %75, %74 ], [ %83, %81 ]
  %86 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %87 = tail call i1 @i_ring_empty(%struct.I_ring* noundef nonnull %86) #42
  br i1 %87, label %95, label %88

88:                                               ; preds = %84, %93
  %89 = tail call i32 @i_ring_pop(%struct.I_ring* noundef nonnull %86) #41
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = tail call i32 @close(i32 noundef %89) #41
  br label %93

93:                                               ; preds = %91, %88
  %94 = tail call i1 @i_ring_empty(%struct.I_ring* noundef nonnull %86) #42
  br i1 %94, label %95, label %88, !llvm.loop !88

95:                                               ; preds = %93, %84
  %96 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 11
  %97 = load %struct.hash_table*, %struct.hash_table** %96, align 8, !tbaa !89
  %98 = icmp eq %struct.hash_table* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @hash_free(%struct.hash_table* noundef nonnull %97) #41
  br label %100

100:                                              ; preds = %99, %95
  %101 = load i32, i32* %52, align 8, !tbaa !69
  %102 = and i32 %101, 258
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %106 = load %struct.hash_table*, %struct.hash_table** %105, align 8, !tbaa !16
  %107 = icmp eq %struct.hash_table* %106, null
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  tail call void @hash_free(%struct.hash_table* noundef nonnull %106) #41
  br label %113

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %111 = bitcast %union.anon* %110 to i8**
  %112 = load i8*, i8** %111, align 8, !tbaa !16
  tail call void @free(i8* noundef %112) #41
  br label %113

113:                                              ; preds = %104, %108, %109
  %114 = bitcast %struct.FTS* %0 to i8*
  tail call void @free(i8* noundef %114) #41
  %115 = icmp eq i32 %85, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = tail call i32* @__errno_location() #44
  store i32 %85, i32* %117, align 4, !tbaa !22
  br label %118

118:                                              ; preds = %113, %116
  %119 = phi i32 [ -1, %116 ], [ 0, %113 ]
  ret i32 %119
}

; Function Attrs: nounwind
declare i32 @fchdir(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct._ftsent* @rpl_fts_read(%struct.FTS* noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %3 = load %struct._ftsent*, %struct._ftsent** %2, align 8, !tbaa !75
  %4 = icmp eq %struct._ftsent* %3, null
  br i1 %4, label %443, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %7 = load i32, i32* %6, align 8, !tbaa !69
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
  %25 = load i32, i32* %6, align 8, !tbaa !69
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %277

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @diropen(%struct.FTS* noundef nonnull %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i64 0, i64 0))
  %30 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 9
  store i32 %29, i32* %30, align 4, !tbaa !22
  %31 = icmp slt i32 %29, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = tail call i32* @__errno_location() #44
  %34 = load i32, i32* %33, align 4, !tbaa !22
  %35 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 8
  store i32 %34, i32* %35, align 8, !tbaa !22
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
  %56 = load i64, i64* %55, align 8, !tbaa !49
  %57 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 3
  %58 = load i64, i64* %57, align 8, !tbaa !90
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
  %68 = load i32, i32* %67, align 4, !tbaa !22
  %69 = tail call i32 @close(i32 noundef %68) #41
  br label %70

70:                                               ; preds = %66, %60
  %71 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %72 = load %struct._ftsent*, %struct._ftsent** %71, align 8, !tbaa !86
  %73 = icmp eq %struct._ftsent* %72, null
  br i1 %73, label %90, label %74

74:                                               ; preds = %70
  %75 = tail call i32* @__errno_location() #44
  %76 = load i32, i32* %75, align 4, !tbaa !22
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
  %85 = tail call i32 @closedir(%struct.__dirstream* noundef nonnull %82) #41
  br label %86

86:                                               ; preds = %84, %77
  %87 = bitcast %struct._ftsent* %78 to i8*
  tail call void @free(i8* noundef %87) #41
  %88 = icmp eq %struct._ftsent* %80, null
  br i1 %88, label %89, label %77, !llvm.loop !91

89:                                               ; preds = %86
  store i32 %76, i32* %75, align 4, !tbaa !22
  store %struct._ftsent* null, %struct._ftsent** %71, align 8, !tbaa !86
  br label %90

90:                                               ; preds = %89, %70
  store i16 6, i16* %61, align 8, !tbaa !24
  tail call fastcc void @leave_dir(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef %3)
  br label %443

91:                                               ; preds = %54, %50
  %92 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %93 = load %struct._ftsent*, %struct._ftsent** %92, align 8, !tbaa !86
  %94 = icmp eq %struct._ftsent* %93, null
  br i1 %94, label %124, label %95

95:                                               ; preds = %91
  %96 = and i32 %7, 8192
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = and i32 %7, -8193
  store i32 %99, i32* %6, align 8, !tbaa !69
  tail call fastcc void @fts_lfree(%struct._ftsent* noundef nonnull %93)
  store %struct._ftsent* null, %struct._ftsent** %92, align 8, !tbaa !86
  br label %124

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 6
  %102 = load i8*, i8** %101, align 8, !tbaa !12
  %103 = tail call fastcc i32 @fts_safe_changedir(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %3, i32 noundef -1, i8* noundef %102)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %140, label %105

105:                                              ; preds = %100
  %106 = tail call i32* @__errno_location() #44
  %107 = load i32, i32* %106, align 4, !tbaa !22
  %108 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 8
  store i32 %107, i32* %108, align 8, !tbaa !22
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
  br i1 %123, label %140, label %114, !llvm.loop !92

124:                                              ; preds = %98, %91
  %125 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* noundef nonnull %0, i32 noundef 3)
  store %struct._ftsent* %125, %struct._ftsent** %92, align 8, !tbaa !86
  %126 = icmp eq %struct._ftsent* %125, null
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load i32, i32* %6, align 8, !tbaa !69
  %129 = and i32 %128, 16384
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %443

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 8
  %133 = load i32, i32* %132, align 8, !tbaa !22
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
  %141 = load %struct._ftsent*, %struct._ftsent** %92, align 8, !tbaa !86
  store %struct._ftsent* null, %struct._ftsent** %92, align 8, !tbaa !86
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
  store %struct._ftsent* %149, %struct._ftsent** %2, align 8, !tbaa !75
  %154 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %155 = load i8*, i8** %154, align 8, !tbaa !72
  %156 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %149, i64 0, i32 10
  %157 = load i64, i64* %156, align 8, !tbaa !54
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  store i8 0, i8* %158, align 1, !tbaa !16
  %159 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* noundef nonnull %0, i32 noundef 3)
  %160 = icmp eq %struct._ftsent* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %153
  %162 = load i32, i32* %6, align 8, !tbaa !69
  %163 = and i32 %162, 16384
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %443

165:                                              ; preds = %161
  %166 = load %struct._ftsent*, %struct._ftsent** %148, align 8, !tbaa !12
  br label %355

167:                                              ; preds = %153
  %168 = bitcast %struct._ftsent* %143 to i8*
  tail call void @free(i8* noundef %168) #41
  br label %256

169:                                              ; preds = %142
  store %struct._ftsent* %145, %struct._ftsent** %2, align 8, !tbaa !75
  %170 = bitcast %struct._ftsent* %143 to i8*
  tail call void @free(i8* noundef %170) #41
  %171 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 12
  %172 = load i64, i64* %171, align 8, !tbaa !54
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %231

174:                                              ; preds = %169
  %175 = tail call fastcc i32 @restore_initial_cwd(%struct.FTS* noundef nonnull %0)
  %176 = icmp eq i32 %175, 0
  %177 = load i32, i32* %6, align 8, !tbaa !69
  br i1 %176, label %180, label %178

178:                                              ; preds = %174
  %179 = or i32 %177, 16384
  store i32 %179, i32* %6, align 8, !tbaa !69
  br label %443

180:                                              ; preds = %174
  %181 = and i32 %177, 258
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %185 = load %struct.hash_table*, %struct.hash_table** %184, align 8, !tbaa !16
  %186 = icmp eq %struct.hash_table* %185, null
  br i1 %186, label %192, label %187

187:                                              ; preds = %183
  tail call void @hash_free(%struct.hash_table* noundef nonnull %185) #41
  br label %192

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %190 = bitcast %union.anon* %189 to i8**
  %191 = load i8*, i8** %190, align 8, !tbaa !16
  tail call void @free(i8* noundef %191) #41
  br label %192

192:                                              ; preds = %183, %187, %188
  %193 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 13
  %194 = load i64, i64* %193, align 8, !tbaa !54
  %195 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 10
  store i64 %194, i64* %195, align 8, !tbaa !54
  %196 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %197 = load i8*, i8** %196, align 8, !tbaa !72
  %198 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 18, i64 0
  %199 = add i64 %194, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %197, i8* noundef nonnull align 1 %198, i64 noundef %199, i1 noundef false) #41
  %200 = tail call i8* @strrchr(i8* noundef nonnull %198, i32 noundef 47) #42
  %201 = icmp eq i8* %200, null
  br i1 %201, label %212, label %202

202:                                              ; preds = %192
  %203 = icmp eq i8* %200, %198
  br i1 %203, label %204, label %208

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 18, i64 1
  %206 = load i8, i8* %205, align 1, !tbaa !16
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %204, %202
  %209 = getelementptr inbounds i8, i8* %200, i64 1
  %210 = tail call i64 @strlen(i8* noundef nonnull %209) #42
  %211 = add i64 %210, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %198, i8* noundef nonnull align 1 %209, i64 noundef %211, i1 noundef false) #41
  store i64 %210, i64* %193, align 8, !tbaa !54
  br label %212

212:                                              ; preds = %192, %204, %208
  %213 = load i8*, i8** %196, align 8, !tbaa !72
  %214 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 7
  store i8* %213, i8** %214, align 8, !tbaa !12
  %215 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 6
  store i8* %213, i8** %215, align 8, !tbaa !12
  %216 = load i32, i32* %6, align 8, !tbaa !69
  %217 = and i32 %216, 258
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %212
  %220 = tail call noalias %struct.hash_table* @hash_initialize(i64 noundef 31, %struct.hash_tuning* noundef null, i64 (i8*, i64)* noundef nonnull @AD_hash, i1 (i8*, i8*)* noundef nonnull @AD_compare, void (i8*)* noundef nonnull @free) #41
  %221 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  store %struct.hash_table* %220, %struct.hash_table** %221, align 8, !tbaa !16
  %222 = icmp eq %struct.hash_table* %220, null
  br i1 %222, label %230, label %277

223:                                              ; preds = %212
  %224 = tail call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #41
  %225 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %226 = bitcast %union.anon* %225 to i8**
  store i8* %224, i8** %226, align 8, !tbaa !16
  %227 = icmp eq i8* %224, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %223
  %229 = bitcast i8* %224 to %struct.cycle_check_state*
  tail call void @cycle_check_init(%struct.cycle_check_state* noundef nonnull %229) #41
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
  %240 = load i32, i32* %6, align 8, !tbaa !69
  %241 = and i32 %240, 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %255

243:                                              ; preds = %239
  %244 = tail call fastcc i32 @diropen(%struct.FTS* noundef nonnull %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i64 0, i64 0))
  %245 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 9
  store i32 %244, i32* %245, align 4, !tbaa !22
  %246 = icmp slt i32 %244, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %243
  %248 = tail call i32* @__errno_location() #44
  %249 = load i32, i32* %248, align 4, !tbaa !22
  %250 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %145, i64 0, i32 8
  store i32 %249, i32* %250, align 8, !tbaa !22
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
  %259 = load i8*, i8** %258, align 8, !tbaa !72
  %260 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %257, i64 0, i32 1
  %261 = load %struct._ftsent*, %struct._ftsent** %260, align 8, !tbaa !12
  %262 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %261, i64 0, i32 7
  %263 = load i8*, i8** %262, align 8, !tbaa !12
  %264 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %261, i64 0, i32 10
  %265 = load i64, i64* %264, align 8, !tbaa !54
  %266 = add i64 %265, -1
  %267 = getelementptr inbounds i8, i8* %263, i64 %266
  %268 = load i8, i8* %267, align 1, !tbaa !16
  %269 = icmp eq i8 %268, 47
  %270 = select i1 %269, i64 %266, i64 %265
  %271 = getelementptr inbounds i8, i8* %259, i64 %270
  %272 = getelementptr inbounds i8, i8* %271, i64 1
  store i8 47, i8* %271, align 1, !tbaa !16
  %273 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %257, i64 0, i32 18, i64 0
  %274 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %257, i64 0, i32 13
  %275 = load i64, i64* %274, align 8, !tbaa !54
  %276 = add i64 %275, 1
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %272, i8* noundef nonnull align 1 %273, i64 noundef %276, i1 noundef false) #41
  br label %277

277:                                              ; preds = %228, %219, %21, %24, %36, %32, %256
  %278 = phi %struct._ftsent* [ %257, %256 ], [ %3, %32 ], [ %3, %36 ], [ %3, %24 ], [ %3, %21 ], [ %145, %219 ], [ %145, %228 ]
  store %struct._ftsent* %278, %struct._ftsent** %2, align 8, !tbaa !75
  %279 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 14
  %280 = load i16, i16* %279, align 8, !tbaa !24
  %281 = icmp eq i16 %280, 11
  br i1 %281, label %282, label %288

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 17, i64 0, i32 8
  %284 = load i64, i64* %283, align 8, !tbaa !73
  switch i64 %284, label %287 [
    i64 2, label %285
    i64 1, label %293
  ]

285:                                              ; preds = %282
  %286 = tail call fastcc i16 @fts_stat(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %278, i1 noundef false)
  store i16 %286, i16* %279, align 8, !tbaa !24
  br label %288

287:                                              ; preds = %282
  tail call void @abort() #43
  unreachable

288:                                              ; preds = %285, %277
  %289 = phi i16 [ %286, %285 ], [ %280, %277 ]
  %290 = load i32, i32* %6, align 8, !tbaa !69
  %291 = and i32 %290, 4096
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %311, label %297

293:                                              ; preds = %282
  %294 = load i32, i32* %6, align 8, !tbaa !69
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
  %303 = load i64, i64* %302, align 8, !tbaa !54
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %311, label %305

305:                                              ; preds = %299
  %306 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 17, i64 0, i32 0
  %307 = load i64, i64* %306, align 8, !tbaa !49
  %308 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 3
  %309 = load i64, i64* %308, align 8, !tbaa !90
  %310 = icmp eq i64 %307, %309
  br i1 %310, label %311, label %46

311:                                              ; preds = %305, %299, %288
  %312 = phi i32 [ %301, %305 ], [ %301, %299 ], [ %290, %288 ]
  %313 = phi i16 [ %300, %305 ], [ %300, %299 ], [ %289, %288 ]
  %314 = icmp eq i16 %313, 1
  br i1 %314, label %315, label %443

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 12
  %317 = load i64, i64* %316, align 8, !tbaa !54
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 17, i64 0, i32 0
  %321 = load i64, i64* %320, align 8, !tbaa !49
  %322 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 3
  store i64 %321, i64* %322, align 8, !tbaa !90
  br label %323

323:                                              ; preds = %319, %315
  %324 = and i32 %312, 258
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %346, label %326

326:                                              ; preds = %323
  %327 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #41
  %328 = icmp eq i8* %327, null
  br i1 %328, label %443, label %329

329:                                              ; preds = %326
  %330 = bitcast i8* %327 to %struct.Active_dir*
  %331 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 17, i64 0, i32 0
  %332 = bitcast i64* %331 to <2 x i64>*
  %333 = load <2 x i64>, <2 x i64>* %332, align 8, !tbaa !54
  %334 = bitcast i8* %327 to <2 x i64>*
  store <2 x i64> %333, <2 x i64>* %334, align 8, !tbaa !54
  %335 = getelementptr inbounds %struct.Active_dir, %struct.Active_dir* %330, i64 0, i32 2
  store %struct._ftsent* %278, %struct._ftsent** %335, align 8, !tbaa !93
  %336 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %337 = load %struct.hash_table*, %struct.hash_table** %336, align 8, !tbaa !16
  %338 = tail call i8* @hash_insert(%struct.hash_table* noundef %337, i8* noundef nonnull %327) #41
  %339 = icmp eq i8* %338, %327
  br i1 %339, label %443, label %340

340:                                              ; preds = %329
  tail call void @free(i8* noundef nonnull %327) #41
  %341 = icmp eq i8* %338, null
  br i1 %341, label %443, label %342

342:                                              ; preds = %340
  %343 = getelementptr inbounds i8, i8* %338, i64 16
  %344 = bitcast i8* %343 to %struct._ftsent**
  %345 = load %struct._ftsent*, %struct._ftsent** %344, align 8, !tbaa !93
  br label %352

346:                                              ; preds = %323
  %347 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %348 = bitcast %union.anon* %347 to %struct.cycle_check_state**
  %349 = load %struct.cycle_check_state*, %struct.cycle_check_state** %348, align 8, !tbaa !16
  %350 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 17, i64 0
  %351 = tail call i1 @cycle_check(%struct.cycle_check_state* noundef %349, %struct.stat* noundef nonnull %350) #41
  br i1 %351, label %352, label %443

352:                                              ; preds = %346, %342
  %353 = phi %struct._ftsent* [ %345, %342 ], [ %278, %346 ]
  %354 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %278, i64 0, i32 0
  store %struct._ftsent* %353, %struct._ftsent** %354, align 8, !tbaa !12
  store i16 2, i16* %279, align 8, !tbaa !24
  br label %443

355:                                              ; preds = %165, %147
  %356 = phi %struct._ftsent* [ %166, %165 ], [ %149, %147 ]
  store %struct._ftsent* %356, %struct._ftsent** %2, align 8, !tbaa !75
  %357 = bitcast %struct._ftsent* %143 to i8*
  tail call void @free(i8* noundef %357) #41
  %358 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 12
  %359 = load i64, i64* %358, align 8, !tbaa !54
  %360 = icmp eq i64 %359, -1
  br i1 %360, label %361, label %364

361:                                              ; preds = %355
  %362 = bitcast %struct._ftsent* %356 to i8*
  tail call void @free(i8* noundef %362) #41
  %363 = tail call i32* @__errno_location() #44
  store i32 0, i32* %363, align 4, !tbaa !22
  store %struct._ftsent* null, %struct._ftsent** %2, align 8, !tbaa !75
  br label %443

364:                                              ; preds = %355
  %365 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 14
  %366 = load i16, i16* %365, align 8, !tbaa !24
  %367 = icmp eq i16 %366, 11
  br i1 %367, label %368, label %369

368:                                              ; preds = %364
  tail call void @abort() #43
  unreachable

369:                                              ; preds = %364
  %370 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %371 = load i8*, i8** %370, align 8, !tbaa !72
  %372 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 10
  %373 = load i64, i64* %372, align 8, !tbaa !54
  %374 = getelementptr inbounds i8, i8* %371, i64 %373
  store i8 0, i8* %374, align 1, !tbaa !16
  %375 = load i64, i64* %358, align 8, !tbaa !54
  %376 = icmp eq i64 %375, 0
  br i1 %376, label %377, label %386

377:                                              ; preds = %369
  %378 = tail call fastcc i32 @restore_initial_cwd(%struct.FTS* noundef nonnull %0)
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %429, label %380

380:                                              ; preds = %377
  %381 = tail call i32* @__errno_location() #44
  %382 = load i32, i32* %381, align 4, !tbaa !22
  %383 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 8
  store i32 %382, i32* %383, align 8, !tbaa !22
  %384 = load i32, i32* %6, align 8, !tbaa !69
  %385 = or i32 %384, 16384
  store i32 %385, i32* %6, align 8, !tbaa !69
  br label %429

386:                                              ; preds = %369
  %387 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 15
  %388 = load i16, i16* %387, align 2, !tbaa !24
  %389 = zext i16 %388 to i32
  %390 = and i32 %389, 2
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %415, label %392

392:                                              ; preds = %386
  %393 = load i32, i32* %6, align 8, !tbaa !69
  %394 = and i32 %393, 4
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %411

396:                                              ; preds = %392
  %397 = and i32 %393, 512
  %398 = icmp eq i32 %397, 0
  %399 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 9
  %400 = load i32, i32* %399, align 4, !tbaa !22
  br i1 %398, label %402, label %401

401:                                              ; preds = %396
  tail call fastcc void @cwd_advance_fd(%struct.FTS* noundef nonnull %0, i32 noundef %400, i1 noundef true)
  br label %411

402:                                              ; preds = %396
  %403 = tail call i32 @fchdir(i32 noundef %400) #41
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %411, label %405

405:                                              ; preds = %402
  %406 = tail call i32* @__errno_location() #44
  %407 = load i32, i32* %406, align 4, !tbaa !22
  %408 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 8
  store i32 %407, i32* %408, align 8, !tbaa !22
  %409 = load i32, i32* %6, align 8, !tbaa !69
  %410 = or i32 %409, 16384
  store i32 %410, i32* %6, align 8, !tbaa !69
  br label %411

411:                                              ; preds = %401, %405, %402, %392
  %412 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 9
  %413 = load i32, i32* %412, align 4, !tbaa !22
  %414 = tail call i32 @close(i32 noundef %413) #41
  br label %429

415:                                              ; preds = %386
  %416 = and i32 %389, 1
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %429

418:                                              ; preds = %415
  %419 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 1
  %420 = load %struct._ftsent*, %struct._ftsent** %419, align 8, !tbaa !12
  %421 = tail call fastcc i32 @fts_safe_changedir(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef %420, i32 noundef -1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.114, i64 0, i64 0))
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %429, label %423

423:                                              ; preds = %418
  %424 = tail call i32* @__errno_location() #44
  %425 = load i32, i32* %424, align 4, !tbaa !22
  %426 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 8
  store i32 %425, i32* %426, align 8, !tbaa !22
  %427 = load i32, i32* %6, align 8, !tbaa !69
  %428 = or i32 %427, 16384
  store i32 %428, i32* %6, align 8, !tbaa !69
  br label %429

429:                                              ; preds = %411, %423, %418, %415, %377, %380
  %430 = load i16, i16* %365, align 8, !tbaa !24
  %431 = icmp eq i16 %430, 2
  br i1 %431, label %438, label %432

432:                                              ; preds = %429
  %433 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %356, i64 0, i32 8
  %434 = load i32, i32* %433, align 8, !tbaa !22
  %435 = icmp eq i32 %434, 0
  %436 = select i1 %435, i16 6, i16 7
  store i16 %436, i16* %365, align 8, !tbaa !24
  br i1 %435, label %437, label %438

437:                                              ; preds = %432
  tail call fastcc void @leave_dir(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %356)
  br label %438

438:                                              ; preds = %432, %437, %429
  %439 = load i32, i32* %6, align 8, !tbaa !69
  %440 = and i32 %439, 16384
  %441 = icmp eq i32 %440, 0
  %442 = select i1 %441, %struct._ftsent* %356, %struct._ftsent* null
  br label %443

443:                                              ; preds = %293, %352, %329, %346, %297, %311, %340, %326, %13, %90, %139, %178, %230, %361, %438, %127, %161, %1, %5
  %444 = phi %struct._ftsent* [ null, %5 ], [ null, %1 ], [ %3, %13 ], [ null, %361 ], [ %442, %438 ], [ null, %178 ], [ null, %230 ], [ %3, %90 ], [ %3, %139 ], [ null, %127 ], [ null, %161 ], [ null, %326 ], [ null, %340 ], [ %278, %311 ], [ %278, %297 ], [ %278, %346 ], [ %278, %329 ], [ %278, %352 ], [ %278, %293 ]
  ret %struct._ftsent* %444
}

; Function Attrs: nounwind uwtable
define internal fastcc void @leave_dir(%struct.FTS* nocapture noundef readonly %0, %struct._ftsent* nocapture noundef readonly %1) unnamed_addr #13 {
  %3 = alloca %struct.Active_dir, align 16
  %4 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 17, i64 0
  %5 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %6 = load i32, i32* %5, align 8, !tbaa !69
  %7 = and i32 %6, 258
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = bitcast %struct.Active_dir* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #41
  %11 = bitcast %struct.stat* %4 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8, !tbaa !54
  %13 = bitcast %struct.Active_dir* %3 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %13, align 16, !tbaa !54
  %14 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %15 = load %struct.hash_table*, %struct.hash_table** %14, align 8, !tbaa !16
  %16 = call i8* @hash_remove(%struct.hash_table* noundef %15, i8* noundef nonnull %10) #41
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  call void @abort() #43
  unreachable

19:                                               ; preds = %9
  call void @free(i8* noundef nonnull %16) #41
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #41
  br label %55

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 1
  %22 = load %struct._ftsent*, %struct._ftsent** %21, align 8, !tbaa !12
  %23 = icmp eq %struct._ftsent* %22, null
  br i1 %23, label %55, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %22, i64 0, i32 12
  %26 = load i64, i64* %25, align 8, !tbaa !54
  %27 = icmp sgt i64 %26, -1
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %30 = bitcast %union.anon* %29 to %struct.cycle_check_state**
  %31 = load %struct.cycle_check_state*, %struct.cycle_check_state** %30, align 8, !tbaa !16
  %32 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %31, i64 0, i32 1
  %33 = load i64, i64* %32, align 8, !tbaa !94
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  tail call void @abort() #43
  unreachable

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %31, i64 0, i32 0, i32 1
  %38 = load i64, i64* %37, align 8, !tbaa !96
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !49
  %41 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %31, i64 0, i32 0, i32 0
  %42 = load i64, i64* %41, align 8, !tbaa !97
  %43 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 17, i64 0, i32 1
  %44 = load i64, i64* %43, align 8, !tbaa !52
  %45 = icmp eq i64 %38, %40
  %46 = icmp eq i64 %42, %44
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %22, i64 0, i32 17, i64 0, i32 0
  %50 = load i64, i64* %49, align 8, !tbaa !49
  store i64 %50, i64* %37, align 8, !tbaa !96
  %51 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %22, i64 0, i32 17, i64 0, i32 1
  %52 = load i64, i64* %51, align 8, !tbaa !52
  %53 = load %struct.cycle_check_state*, %struct.cycle_check_state** %30, align 8, !tbaa !16
  %54 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %53, i64 0, i32 0, i32 0
  store i64 %52, i64* %54, align 8, !tbaa !97
  br label %55

55:                                               ; preds = %20, %24, %48, %36, %19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fts_lfree(%struct._ftsent* noundef %0) unnamed_addr #13 {
  %2 = tail call i32* @__errno_location() #44
  %3 = load i32, i32* %2, align 4, !tbaa !22
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
  tail call void @free(i8* noundef %15) #41
  %16 = icmp eq %struct._ftsent* %8, null
  br i1 %16, label %17, label %5, !llvm.loop !98

17:                                               ; preds = %14, %1
  store i32 %3, i32* %2, align 4, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fts_safe_changedir(%struct.FTS* noundef %0, %struct._ftsent* nocapture noundef readonly %1, i32 noundef %2, i8* noundef %3) unnamed_addr #13 {
  %5 = alloca %struct.stat, align 8
  %6 = icmp sgt i32 %2, -1
  %7 = icmp ne i8* %3, null
  %8 = or i1 %6, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @abort() #43
  unreachable

10:                                               ; preds = %4
  br i1 %7, label %11, label %14

11:                                               ; preds = %10
  %12 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %3, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.114, i64 0, i64 0)) #42
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi i1 [ true, %10 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %17 = load i32, i32* %16, align 8, !tbaa !69
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = and i32 %17, 512
  %22 = icmp ne i32 %21, 0
  %23 = and i1 %6, %22
  br i1 %23, label %24, label %134

24:                                               ; preds = %20
  %25 = tail call i32 @close(i32 noundef %2) #41
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
  %33 = tail call i1 @i_ring_empty(%struct.I_ring* noundef nonnull %32) #42
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @i_ring_pop(%struct.I_ring* noundef nonnull %32) #41
  %36 = icmp sgt i32 %35, -1
  %37 = load i32, i32* %16, align 8, !tbaa !69
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
  %48 = load i32, i32* %47, align 4, !tbaa !56
  %49 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 noundef %48, i8* noundef %3, i32 noundef %43) #41
  br label %52

50:                                               ; preds = %39
  %51 = tail call i32 (i8*, i32, ...) @open_safer(i8* noundef %3, i32 noundef %43) #41
  br label %52

52:                                               ; preds = %46, %50
  %53 = phi i32 [ %49, %46 ], [ %51, %50 ]
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %134, label %55

55:                                               ; preds = %52, %38
  %56 = phi i1 [ true, %52 ], [ false, %38 ]
  %57 = phi i32 [ %53, %52 ], [ %2, %38 ]
  %58 = load i32, i32* %16, align 8, !tbaa !69
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
  %67 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %3, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.114, i64 0, i64 0)) #42
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %61, %66, %55
  %70 = phi i32 [ %35, %61 ], [ %57, %66 ], [ %57, %55 ]
  %71 = phi i1 [ false, %61 ], [ %56, %66 ], [ %56, %55 ]
  %72 = bitcast %struct.stat* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %72) #41
  %73 = call i32 @fstat(i32 noundef %70, %struct.stat* noundef nonnull %5) #41
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %127

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 17, i64 0, i32 0
  %77 = load i64, i64* %76, align 8, !tbaa !49
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 0
  %79 = load i64, i64* %78, align 8, !tbaa !49
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 17, i64 0, i32 1
  %83 = load i64, i64* %82, align 8, !tbaa !52
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 1
  %85 = load i64, i64* %84, align 8, !tbaa !52
  %86 = icmp eq i64 %83, %85
  br i1 %86, label %89, label %87

87:                                               ; preds = %81, %75
  %88 = tail call i32* @__errno_location() #44
  store i32 2, i32* %88, align 4, !tbaa !22
  br label %127

89:                                               ; preds = %81
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %72) #41
  %90 = load i32, i32* %16, align 8, !tbaa !69
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
  %101 = tail call i32 @fchdir(i32 noundef %35) #41
  br label %134

102:                                              ; preds = %97, %91
  %103 = phi i32 [ %37, %97 ], [ %94, %91 ]
  %104 = phi i32 [ %35, %97 ], [ %92, %91 ]
  %105 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %106 = load i32, i32* %105, align 4, !tbaa !56
  %107 = icmp ne i32 %106, %104
  %108 = icmp eq i32 %106, -100
  %109 = or i1 %107, %108
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  tail call void @abort() #43
  unreachable

111:                                              ; preds = %102
  br i1 %15, label %112, label %116

112:                                              ; preds = %111
  %113 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %114 = tail call i32 @i_ring_push(%struct.I_ring* noundef nonnull %113, i32 noundef %106) #41
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
  %123 = tail call i32 @close(i32 noundef %122) #41
  br label %124

124:                                              ; preds = %112, %116, %121
  store i32 %104, i32* %105, align 4, !tbaa !56
  br label %134

125:                                              ; preds = %91
  %126 = tail call i32 @fchdir(i32 noundef %92) #41
  br i1 %93, label %128, label %134

127:                                              ; preds = %69, %87
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %72) #41
  br i1 %71, label %128, label %134

128:                                              ; preds = %125, %127
  %129 = phi i32 [ %126, %125 ], [ -1, %127 ]
  %130 = phi i32 [ %92, %125 ], [ %70, %127 ]
  %131 = tail call i32* @__errno_location() #44
  %132 = load i32, i32* %131, align 4, !tbaa !22
  %133 = tail call i32 @close(i32 noundef %130) #41
  store i32 %132, i32* %131, align 4, !tbaa !22
  br label %134

134:                                              ; preds = %100, %125, %52, %127, %128, %124, %20, %24
  %135 = phi i32 [ 0, %24 ], [ 0, %20 ], [ -1, %52 ], [ 0, %124 ], [ %129, %128 ], [ -1, %127 ], [ %126, %125 ], [ %101, %100 ]
  ret i32 %135
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._ftsent* @fts_build(%struct.FTS* noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %5 = load %struct._ftsent*, %struct._ftsent** %4, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 3
  %7 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %8 = icmp ne %struct.__dirstream* %7, null
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #41
  br i1 %8, label %10, label %22

10:                                               ; preds = %2
  %11 = tail call i32 @dirfd(%struct.__dirstream* noundef nonnull %7) #41
  store i32 %11, i32* %3, align 4, !tbaa !22
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %119

13:                                               ; preds = %10
  %14 = tail call i32* @__errno_location() #44
  %15 = load i32, i32* %14, align 4, !tbaa !22
  %16 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %17 = tail call i32 @closedir(%struct.__dirstream* noundef %16)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8, !tbaa !12
  %18 = icmp eq i32 %1, 3
  br i1 %18, label %19, label %592

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 14
  store i16 4, i16* %20, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %15, i32* %21, align 8, !tbaa !22
  br label %592

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %24 = load i32, i32* %23, align 8, !tbaa !69
  %25 = and i32 %24, 516
  %26 = icmp eq i32 %25, 512
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %29 = load i32, i32* %28, align 4, !tbaa !56
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
  %41 = load i64, i64* %40, align 8, !tbaa !54
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36, %39
  br label %44

44:                                               ; preds = %30, %39, %43
  %45 = phi i32 [ 32768, %43 ], [ 0, %39 ], [ 0, %30 ]
  %46 = call noalias %struct.__dirstream* @opendirat(i32 noundef %31, i8* noundef %33, i32 noundef %45, i32* noundef nonnull %3) #41
  store %struct.__dirstream* %46, %struct.__dirstream** %6, align 8, !tbaa !12
  %47 = icmp eq %struct.__dirstream* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = icmp eq i32 %1, 3
  br i1 %49, label %50, label %592

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 14
  store i16 4, i16* %51, align 8, !tbaa !24
  %52 = tail call i32* @__errno_location() #44
  %53 = load i32, i32* %52, align 4, !tbaa !22
  %54 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %53, i32* %54, align 8, !tbaa !22
  br label %592

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 14
  %57 = load i16, i16* %56, align 8, !tbaa !24
  %58 = icmp eq i16 %57, 11
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %23, align 8, !tbaa !69
  %61 = and i32 %60, 256
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %126, label %68

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4, !tbaa !22
  %65 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 17, i64 0
  %66 = call i32 @fstat(i32 noundef %64, %struct.stat* noundef nonnull %65) #41
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %124, label %73

68:                                               ; preds = %59
  call fastcc void @leave_dir(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef nonnull %5)
  %69 = load i32, i32* %3, align 4, !tbaa !22
  %70 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 17, i64 0
  %71 = call i32 @fstat(i32 noundef %69, %struct.stat* noundef nonnull %70) #41
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %68, %63
  %74 = tail call i32* @__errno_location() #44
  %75 = load i32, i32* %74, align 4, !tbaa !22
  %76 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %77 = call i32 @closedir(%struct.__dirstream* noundef %76)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8, !tbaa !12
  %78 = icmp eq i32 %1, 3
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %75, i32* %80, align 8, !tbaa !22
  store i16 10, i16* %56, align 8, !tbaa !24
  br label %81

81:                                               ; preds = %79, %73
  store i32 %75, i32* %74, align 4, !tbaa !22
  br label %592

82:                                               ; preds = %68
  %83 = load i32, i32* %23, align 8, !tbaa !69
  %84 = and i32 %83, 258
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %82
  %87 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #41
  %88 = icmp eq i8* %87, null
  br i1 %88, label %114, label %89

89:                                               ; preds = %86
  %90 = bitcast i8* %87 to %struct.Active_dir*
  %91 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 17, i64 0, i32 0
  %92 = bitcast i64* %91 to <2 x i64>*
  %93 = load <2 x i64>, <2 x i64>* %92, align 8, !tbaa !54
  %94 = bitcast i8* %87 to <2 x i64>*
  store <2 x i64> %93, <2 x i64>* %94, align 8, !tbaa !54
  %95 = getelementptr inbounds %struct.Active_dir, %struct.Active_dir* %90, i64 0, i32 2
  store %struct._ftsent* %5, %struct._ftsent** %95, align 8, !tbaa !93
  %96 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %97 = load %struct.hash_table*, %struct.hash_table** %96, align 8, !tbaa !16
  %98 = call i8* @hash_insert(%struct.hash_table* noundef %97, i8* noundef nonnull %87) #41
  %99 = icmp eq i8* %98, %87
  br i1 %99, label %126, label %100

100:                                              ; preds = %89
  call void @free(i8* noundef nonnull %87) #41
  %101 = icmp eq i8* %98, null
  br i1 %101, label %114, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds i8, i8* %98, i64 16
  %104 = bitcast i8* %103 to %struct._ftsent**
  %105 = load %struct._ftsent*, %struct._ftsent** %104, align 8, !tbaa !93
  br label %111

106:                                              ; preds = %82
  %107 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %108 = bitcast %union.anon* %107 to %struct.cycle_check_state**
  %109 = load %struct.cycle_check_state*, %struct.cycle_check_state** %108, align 8, !tbaa !16
  %110 = call i1 @cycle_check(%struct.cycle_check_state* noundef %109, %struct.stat* noundef nonnull %70) #41
  br i1 %110, label %111, label %126

111:                                              ; preds = %106, %102
  %112 = phi %struct._ftsent* [ %105, %102 ], [ %5, %106 ]
  %113 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 0
  store %struct._ftsent* %112, %struct._ftsent** %113, align 8, !tbaa !12
  br label %124

114:                                              ; preds = %100, %86
  %115 = tail call i32* @__errno_location() #44
  %116 = load i32, i32* %115, align 4, !tbaa !22
  %117 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %118 = call i32 @closedir(%struct.__dirstream* noundef %117)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8, !tbaa !12
  store i32 %116, i32* %115, align 4, !tbaa !22
  br label %592

119:                                              ; preds = %10
  %120 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 9
  %121 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %120, align 8, !tbaa !68
  %122 = icmp eq i32 (%struct._ftsent**, %struct._ftsent**)* %121, null
  %123 = select i1 %122, i64 100000, i64 -1
  br label %183

124:                                              ; preds = %63, %111
  %125 = phi i16 [ 2, %111 ], [ 1, %63 ]
  store i16 %125, i16* %56, align 8, !tbaa !24
  br label %126

126:                                              ; preds = %124, %89, %106, %59
  %127 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 9
  %128 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %127, align 8, !tbaa !68
  %129 = icmp eq i32 (%struct._ftsent**, %struct._ftsent**)* %128, null
  %130 = select i1 %129, i64 100000, i64 -1
  %131 = icmp eq i32 %1, 2
  br i1 %131, label %145, label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %23, align 8, !tbaa !69
  %134 = and i32 %133, 56
  %135 = icmp eq i32 %134, 24
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 17, i64 0, i32 3
  %138 = load i32, i32* %137, align 4, !tbaa !99
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* %3, align 4, !tbaa !22
  %142 = call fastcc i64 @filesystem_type(%struct._ftsent* noundef nonnull %5, i32 noundef %141) #41
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
  %150 = load i32, i32* %23, align 8, !tbaa !69
  %151 = and i32 %150, 512
  %152 = icmp eq i32 %151, 0
  %153 = load i32, i32* %3, align 4, !tbaa !22
  br i1 %152, label %156, label %154

154:                                              ; preds = %147
  %155 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %153, i32 noundef 1030, i32 noundef 3) #41
  store i32 %155, i32* %3, align 4, !tbaa !22
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
  %165 = tail call i32* @__errno_location() #44
  %166 = load i32, i32* %165, align 4, !tbaa !22
  %167 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %166, i32* %167, align 8, !tbaa !22
  br label %168

168:                                              ; preds = %164, %162
  %169 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 15
  %170 = load i16, i16* %169, align 2, !tbaa !24
  %171 = or i16 %170, 1
  store i16 %171, i16* %169, align 2, !tbaa !24
  %172 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %173 = call i32 @closedir(%struct.__dirstream* noundef %172)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8, !tbaa !12
  %174 = load i32, i32* %23, align 8, !tbaa !69
  %175 = and i32 %174, 512
  %176 = icmp ne i32 %175, 0
  %177 = load i32, i32* %3, align 4
  %178 = icmp sgt i32 %177, -1
  %179 = select i1 %176, i1 %178, i1 false
  br i1 %179, label %180, label %182

180:                                              ; preds = %168
  %181 = call i32 @close(i32 noundef %177) #41
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
  %190 = load i64, i64* %189, align 8, !tbaa !54
  %191 = add i64 %190, -1
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  %193 = load i8, i8* %192, align 1, !tbaa !16
  %194 = icmp eq i8 %193, 47
  %195 = select i1 %194, i64 %191, i64 %190
  %196 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %197 = load i32, i32* %196, align 8, !tbaa !69
  %198 = and i32 %197, 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %183
  %201 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 4
  %202 = load i8*, i8** %201, align 8, !tbaa !72
  %203 = getelementptr inbounds i8, i8* %202, i64 %195
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  store i8 47, i8* %203, align 1, !tbaa !16
  br label %205

205:                                              ; preds = %183, %200
  %206 = phi i8* [ %204, %200 ], [ null, %183 ]
  %207 = add i64 %195, 1
  %208 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 7
  %209 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 12
  %210 = load i64, i64* %209, align 8, !tbaa !54
  %211 = add nsw i64 %210, 1
  %212 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %213 = icmp eq %struct.__dirstream* %212, null
  br i1 %213, label %505, label %214

214:                                              ; preds = %205
  %215 = load i64, i64* %208, align 8, !tbaa !71
  %216 = sub i64 %215, %207
  %217 = tail call i32* @__errno_location() #44
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
  store i32 0, i32* %217, align 4, !tbaa !22
  %228 = call %struct.dirent* @readdir(%struct.__dirstream* noundef nonnull %220) #41
  %229 = icmp eq %struct.dirent* %228, null
  br i1 %229, label %230, label %242

230:                                              ; preds = %219
  %231 = load i32, i32* %217, align 4, !tbaa !22
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 8
  store i32 %231, i32* %234, align 8, !tbaa !22
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
  %243 = load i32, i32* %196, align 8, !tbaa !69
  %244 = and i32 %243, 32
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %257

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.dirent, %struct.dirent* %228, i64 0, i32 4, i64 0
  %248 = load i8, i8* %247, align 1, !tbaa !16
  %249 = icmp eq i8 %248, 46
  br i1 %249, label %250, label %257

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.dirent, %struct.dirent* %228, i64 0, i32 4, i64 1
  %252 = load i8, i8* %251, align 1, !tbaa !16
  switch i8 %252, label %257 [
    i8 0, label %436
    i8 46, label %253
  ], !llvm.loop !100

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.dirent, %struct.dirent* %228, i64 0, i32 4, i64 2
  %255 = load i8, i8* %254, align 1, !tbaa !16
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %436, label %257, !llvm.loop !100

257:                                              ; preds = %250, %253, %246, %242
  %258 = getelementptr inbounds %struct.dirent, %struct.dirent* %228, i64 0, i32 4, i64 0
  %259 = call i64 @strlen(i8* noundef nonnull %258) #42
  %260 = add i64 %259, 248
  %261 = and i64 %260, -8
  %262 = call noalias i8* @malloc(i64 noundef %261) #41
  %263 = bitcast i8* %262 to %struct._ftsent*
  %264 = icmp eq i8* %262, null
  br i1 %264, label %293, label %265

265:                                              ; preds = %257
  %266 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 18, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %266, i8* noundef nonnull align 1 %258, i64 noundef %259, i1 noundef false) #41
  %267 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 18, i64 %259
  store i8 0, i8* %267, align 1, !tbaa !16
  %268 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 13
  store i64 %259, i64* %268, align 8, !tbaa !54
  %269 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 11
  store %struct.FTS* %0, %struct.FTS** %269, align 8, !tbaa !12
  %270 = load i8*, i8** %218, align 8, !tbaa !72
  %271 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 7
  store i8* %270, i8** %271, align 8, !tbaa !12
  %272 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 8
  store i32 0, i32* %272, align 8, !tbaa !22
  %273 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 3
  store %struct.__dirstream* null, %struct.__dirstream** %273, align 8, !tbaa !12
  %274 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 15
  store i16 0, i16* %274, align 2, !tbaa !24
  %275 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 16
  store i16 3, i16* %275, align 4, !tbaa !24
  %276 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 4
  %277 = bitcast i64* %276 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %277, i8 0, i64 16, i1 false) #41
  %278 = icmp ult i64 %259, %222
  %279 = add i64 %259, %207
  br i1 %278, label %328, label %280

280:                                              ; preds = %265
  %281 = load i64, i64* %208, align 8, !tbaa !71
  %282 = add i64 %279, 257
  %283 = add i64 %282, %281
  %284 = icmp ult i64 %283, %281
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  call void @free(i8* noundef %270) #41
  store i8* null, i8** %218, align 8, !tbaa !72
  store i32 36, i32* %217, align 4, !tbaa !22
  br label %293

286:                                              ; preds = %280
  store i64 %283, i64* %208, align 8, !tbaa !71
  %287 = icmp eq i64 %283, 0
  %288 = select i1 %287, i64 1, i64 %283
  %289 = call i8* @realloc(i8* noundef %270, i64 noundef %288) #41
  %290 = icmp eq i8* %289, null
  br i1 %290, label %291, label %315

291:                                              ; preds = %286
  %292 = load i8*, i8** %218, align 8, !tbaa !72
  call void @free(i8* noundef %292) #41
  store i8* null, i8** %218, align 8, !tbaa !72
  br label %293

293:                                              ; preds = %257, %291, %285
  %294 = load i32, i32* %217, align 4, !tbaa !22
  call void @free(i8* noundef %262) #41
  %295 = load i32, i32* %217, align 4, !tbaa !22
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
  %305 = call i32 @closedir(%struct.__dirstream* noundef nonnull %302) #41
  br label %306

306:                                              ; preds = %304, %297
  %307 = bitcast %struct._ftsent* %298 to i8*
  call void @free(i8* noundef %307) #41
  %308 = icmp eq %struct._ftsent* %300, null
  br i1 %308, label %309, label %297, !llvm.loop !101

309:                                              ; preds = %306, %293
  store i32 %295, i32* %217, align 4, !tbaa !22
  %310 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %311 = call i32 @closedir(%struct.__dirstream* noundef %310)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8, !tbaa !12
  %312 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 14
  store i16 7, i16* %312, align 8, !tbaa !24
  %313 = load i32, i32* %196, align 8, !tbaa !69
  %314 = or i32 %313, 16384
  store i32 %314, i32* %196, align 8, !tbaa !69
  store i32 %294, i32* %217, align 4, !tbaa !22
  br label %592

315:                                              ; preds = %286
  store i8* %289, i8** %218, align 8, !tbaa !72
  %316 = icmp eq i8* %270, %289
  br i1 %316, label %323, label %317

317:                                              ; preds = %315
  %318 = load i32, i32* %196, align 8, !tbaa !69
  %319 = and i32 %318, 4
  %320 = icmp eq i32 %319, 0
  %321 = getelementptr inbounds i8, i8* %289, i64 %207
  %322 = select i1 %320, i8* %221, i8* %321
  br label %323

323:                                              ; preds = %317, %315
  %324 = phi i1 [ %223, %315 ], [ true, %317 ]
  %325 = phi i8* [ %221, %315 ], [ %322, %317 ]
  %326 = load i64, i64* %208, align 8, !tbaa !71
  %327 = sub i64 %326, %207
  br label %328

328:                                              ; preds = %265, %323
  %329 = phi i1 [ %324, %323 ], [ %223, %265 ]
  %330 = phi i64 [ %327, %323 ], [ %222, %265 ]
  %331 = phi i8* [ %325, %323 ], [ %221, %265 ]
  %332 = icmp ult i64 %279, %207
  br i1 %332, label %333, label %354

333:                                              ; preds = %328
  call void @free(i8* noundef nonnull %262) #41
  %334 = load i32, i32* %217, align 4, !tbaa !22
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
  %344 = call i32 @closedir(%struct.__dirstream* noundef nonnull %341) #41
  br label %345

345:                                              ; preds = %343, %336
  %346 = bitcast %struct._ftsent* %337 to i8*
  call void @free(i8* noundef %346) #41
  %347 = icmp eq %struct._ftsent* %339, null
  br i1 %347, label %348, label %336, !llvm.loop !102

348:                                              ; preds = %345, %333
  store i32 %334, i32* %217, align 4, !tbaa !22
  %349 = load %struct.__dirstream*, %struct.__dirstream** %6, align 8, !tbaa !12
  %350 = call i32 @closedir(%struct.__dirstream* noundef %349)
  store %struct.__dirstream* null, %struct.__dirstream** %6, align 8, !tbaa !12
  %351 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 14
  store i16 7, i16* %351, align 8, !tbaa !24
  %352 = load i32, i32* %196, align 8, !tbaa !69
  %353 = or i32 %352, 16384
  store i32 %353, i32* %196, align 8, !tbaa !69
  store i32 36, i32* %217, align 4, !tbaa !22
  br label %592

354:                                              ; preds = %328
  %355 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 12
  store i64 %211, i64* %355, align 8, !tbaa !54
  %356 = load %struct._ftsent*, %struct._ftsent** %4, align 8, !tbaa !75
  %357 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 1
  store %struct._ftsent* %356, %struct._ftsent** %357, align 8, !tbaa !12
  %358 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 10
  store i64 %279, i64* %358, align 8, !tbaa !54
  %359 = getelementptr inbounds %struct.dirent, %struct.dirent* %228, i64 0, i32 0
  %360 = load i64, i64* %359, align 8, !tbaa !103
  %361 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 17, i64 0, i32 1
  store i64 %360, i64* %361, align 8, !tbaa !52
  %362 = load i32, i32* %196, align 8, !tbaa !69
  %363 = and i32 %362, 4
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %370, label %365

365:                                              ; preds = %354
  %366 = load i8*, i8** %271, align 8, !tbaa !12
  %367 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 6
  store i8* %366, i8** %367, align 8, !tbaa !12
  %368 = load i64, i64* %268, align 8, !tbaa !54
  %369 = add i64 %368, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %331, i8* noundef nonnull align 1 %266, i64 noundef %369, i1 noundef false) #41
  br label %372

370:                                              ; preds = %354
  %371 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 6
  store i8* %266, i8** %371, align 8, !tbaa !12
  br label %372

372:                                              ; preds = %370, %365
  %373 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %185, align 8, !tbaa !68
  %374 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %373, null
  %375 = load i32, i32* %196, align 8, !tbaa !69
  %376 = and i32 %375, 1024
  %377 = icmp eq i32 %376, 0
  %378 = select i1 %374, i1 %377, i1 false
  br i1 %378, label %412, label %379

379:                                              ; preds = %372
  %380 = and i32 %375, 8
  %381 = icmp eq i32 %380, 0
  %382 = getelementptr inbounds %struct.dirent, %struct.dirent* %228, i64 0, i32 3
  %383 = load i8, i8* %382, align 2, !tbaa !105
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
  store i32 %408, i32* %409, align 8, !tbaa !55
  %410 = select i1 %407, i64 1, i64 2
  %411 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %263, i64 0, i32 17, i64 0, i32 8
  store i64 %410, i64* %411, align 8, !tbaa !73
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
  %425 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %185, align 8, !tbaa !68
  %426 = icmp eq i32 (%struct._ftsent**, %struct._ftsent**)* %425, null
  br i1 %426, label %427, label %431

427:                                              ; preds = %424
  %428 = load i32, i32* %3, align 4, !tbaa !22
  %429 = call fastcc i64 @filesystem_type(%struct._ftsent* noundef nonnull %5, i32 noundef %428) #41
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
  %453 = load i8*, i8** %452, align 8, !tbaa !72
  %454 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 1
  %455 = load %struct._ftsent*, %struct._ftsent** %454, align 8, !tbaa !12
  %456 = icmp eq %struct._ftsent* %455, null
  br i1 %456, label %457, label %461

457:                                              ; preds = %474, %447
  %458 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %451, i64 0, i32 12
  %459 = load i64, i64* %458, align 8, !tbaa !54
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
  br i1 %478, label %457, label %461, !llvm.loop !106

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
  %503 = load i64, i64* %502, align 8, !tbaa !54
  %504 = icmp sgt i64 %503, -1
  br i1 %504, label %479, label %505, !llvm.loop !107

505:                                              ; preds = %500, %205, %239, %457, %435, %446
  %506 = phi i8* [ %331, %435 ], [ %443, %446 ], [ %448, %457 ], [ %221, %239 ], [ %206, %205 ], [ %448, %500 ]
  %507 = phi i1 [ %432, %435 ], [ %440, %446 ], [ %449, %457 ], [ %224, %239 ], [ false, %205 ], [ %449, %500 ]
  %508 = phi i64 [ %433, %435 ], [ %439, %446 ], [ %450, %457 ], [ %225, %239 ], [ 0, %205 ], [ %450, %500 ]
  %509 = phi %struct._ftsent* [ %422, %435 ], [ %437, %446 ], [ %451, %457 ], [ %227, %239 ], [ null, %205 ], [ %451, %500 ]
  %510 = load i32, i32* %196, align 8, !tbaa !69
  %511 = and i32 %510, 4
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %520, label %513

513:                                              ; preds = %505
  %514 = load i64, i64* %208, align 8, !tbaa !71
  %515 = icmp eq i64 %207, %514
  %516 = icmp eq i64 %508, 0
  %517 = select i1 %515, i1 true, i1 %516
  %518 = sext i1 %517 to i64
  %519 = getelementptr i8, i8* %506, i64 %518
  store i8 0, i8* %519, align 1, !tbaa !16
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
  %527 = load i64, i64* %209, align 8, !tbaa !54
  %528 = icmp eq i64 %527, 0
  br i1 %528, label %529, label %532

529:                                              ; preds = %526
  %530 = call fastcc i32 @restore_initial_cwd(%struct.FTS* noundef nonnull %0)
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %557, label %537

532:                                              ; preds = %526
  %533 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 1
  %534 = load %struct._ftsent*, %struct._ftsent** %533, align 8, !tbaa !12
  %535 = call fastcc i32 @fts_safe_changedir(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef %534, i32 noundef -1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.114, i64 0, i64 0))
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %557, label %537

537:                                              ; preds = %532, %529
  %538 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %5, i64 0, i32 14
  store i16 7, i16* %538, align 8, !tbaa !24
  %539 = load i32, i32* %196, align 8, !tbaa !69
  %540 = or i32 %539, 16384
  store i32 %540, i32* %196, align 8, !tbaa !69
  %541 = tail call i32* @__errno_location() #44
  %542 = load i32, i32* %541, align 4, !tbaa !22
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
  %552 = call i32 @closedir(%struct.__dirstream* noundef nonnull %549) #41
  br label %553

553:                                              ; preds = %551, %544
  %554 = bitcast %struct._ftsent* %545 to i8*
  call void @free(i8* noundef %554) #41
  %555 = icmp eq %struct._ftsent* %547, null
  br i1 %555, label %556, label %544, !llvm.loop !108

556:                                              ; preds = %553, %537
  store i32 %542, i32* %541, align 4, !tbaa !22
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
  %566 = tail call i32* @__errno_location() #44
  %567 = load i32, i32* %566, align 4, !tbaa !22
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
  %577 = call i32 @closedir(%struct.__dirstream* noundef nonnull %574) #41
  br label %578

578:                                              ; preds = %576, %569
  %579 = bitcast %struct._ftsent* %570 to i8*
  call void @free(i8* noundef %579) #41
  %580 = icmp eq %struct._ftsent* %572, null
  br i1 %580, label %581, label %569, !llvm.loop !109

581:                                              ; preds = %578, %565
  store i32 %567, i32* %566, align 4, !tbaa !22
  br label %592

582:                                              ; preds = %522, %557
  br i1 %507, label %583, label %585

583:                                              ; preds = %582
  store i32 (%struct._ftsent**, %struct._ftsent**)* @fts_compare_ino, i32 (%struct._ftsent**, %struct._ftsent**)** %185, align 8, !tbaa !68
  %584 = call fastcc %struct._ftsent* @fts_sort(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef %509, i64 noundef %508)
  store i32 (%struct._ftsent**, %struct._ftsent**)* null, i32 (%struct._ftsent**, %struct._ftsent**)** %185, align 8, !tbaa !68
  br label %592

585:                                              ; preds = %582
  %586 = load i32 (%struct._ftsent**, %struct._ftsent**)*, i32 (%struct._ftsent**, %struct._ftsent**)** %185, align 8, !tbaa !68
  %587 = icmp ne i32 (%struct._ftsent**, %struct._ftsent**)* %586, null
  %588 = icmp ugt i64 %508, 1
  %589 = select i1 %587, i1 %588, i1 false
  br i1 %589, label %590, label %592

590:                                              ; preds = %585
  %591 = call fastcc %struct._ftsent* @fts_sort(%struct.FTS* noundef nonnull %0, %struct._ftsent* noundef %509, i64 noundef %508)
  br label %592

592:                                              ; preds = %583, %309, %348, %19, %13, %556, %581, %590, %585, %81, %114, %48, %50
  %593 = phi %struct._ftsent* [ null, %50 ], [ null, %48 ], [ null, %114 ], [ null, %81 ], [ null, %581 ], [ null, %556 ], [ %591, %590 ], [ %509, %585 ], [ null, %13 ], [ null, %19 ], [ null, %348 ], [ null, %309 ], [ %584, %583 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #41
  ret %struct._ftsent* %593
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @restore_initial_cwd(%struct.FTS* noundef %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %3 = load i32, i32* %2, align 8, !tbaa !69
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = and i32 %3, 512
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %11 = load i32, i32* %10, align 4, !tbaa !56
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %13 = tail call i32 @i_ring_push(%struct.I_ring* noundef nonnull %12, i32 noundef %11) #41
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = tail call i32 @close(i32 noundef %13) #41
  br label %17

17:                                               ; preds = %9, %15
  store i32 -100, i32* %10, align 4, !tbaa !56
  br label %24

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 5
  %20 = load i32, i32* %19, align 8, !tbaa !76
  %21 = tail call i32 @fchdir(i32 noundef %20) #41
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %17, %18, %1
  %25 = phi i32 [ 0, %1 ], [ 0, %17 ], [ %23, %18 ]
  %26 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %27 = tail call i1 @i_ring_empty(%struct.I_ring* noundef nonnull %26) #42
  br i1 %27, label %35, label %28

28:                                               ; preds = %24, %33
  %29 = tail call i32 @i_ring_pop(%struct.I_ring* noundef nonnull %26) #41
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call i32 @close(i32 noundef %29) #41
  br label %33

33:                                               ; preds = %31, %28
  %34 = tail call i1 @i_ring_empty(%struct.I_ring* noundef nonnull %26) #42
  br i1 %34, label %35, label %28, !llvm.loop !110

35:                                               ; preds = %33, %24
  ret i32 %25
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @free_dir(%struct.FTS* nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %3 = load i32, i32* %2, align 8, !tbaa !69
  %4 = and i32 %3, 258
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12, i32 0
  %8 = load %struct.hash_table*, %struct.hash_table** %7, align 8, !tbaa !16
  %9 = icmp eq %struct.hash_table* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  tail call void @hash_free(%struct.hash_table* noundef nonnull %8) #41
  br label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 12
  %13 = bitcast %union.anon* %12 to i8**
  %14 = load i8*, i8** %13, align 8, !tbaa !16
  tail call void @free(i8* noundef %14) #41
  br label %15

15:                                               ; preds = %6, %10, %11
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @cwd_advance_fd(%struct.FTS* noundef %0, i32 noundef %1, i1 noundef %2) unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 6
  %5 = load i32, i32* %4, align 4, !tbaa !56
  %6 = icmp ne i32 %5, %1
  %7 = icmp eq i32 %5, -100
  %8 = or i1 %6, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @abort() #43
  unreachable

10:                                               ; preds = %3
  br i1 %2, label %11, label %15

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 13
  %13 = tail call i32 @i_ring_push(%struct.I_ring* noundef nonnull %12, i32 noundef %5) #41
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %22, label %25

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %17 = load i32, i32* %16, align 8, !tbaa !69
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  %20 = icmp sgt i32 %5, -1
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %25

22:                                               ; preds = %15, %11
  %23 = phi i32 [ %13, %11 ], [ %5, %15 ]
  %24 = tail call i32 @close(i32 noundef %23) #41
  br label %25

25:                                               ; preds = %22, %11, %15
  store i32 %1, i32* %4, align 4, !tbaa !56
  ret void
}

; Function Attrs: nounwind
declare i32 @dirfd(%struct.__dirstream* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @filesystem_type(%struct._ftsent* nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 {
  %3 = alloca %struct.dev_ino, align 8
  %4 = alloca %struct.statfs, align 8
  %5 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %0, i64 0, i32 11
  %6 = load %struct.FTS*, %struct.FTS** %5, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.FTS, %struct.FTS* %6, i64 0, i32 10
  %8 = load i32, i32* %7, align 8, !tbaa !69
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %62, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.FTS, %struct.FTS* %6, i64 0, i32 11
  %13 = load %struct.hash_table*, %struct.hash_table** %12, align 8, !tbaa !89
  %14 = icmp eq %struct.hash_table* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = tail call noalias %struct.hash_table* @hash_initialize(i64 noundef 13, %struct.hash_tuning* noundef null, i64 (i8*, i64)* noundef nonnull @dev_type_hash, i1 (i8*, i8*)* noundef nonnull @dev_type_compare, void (i8*)* noundef nonnull @free) #41
  store %struct.hash_table* %16, %struct.hash_table** %12, align 8, !tbaa !89
  %17 = icmp eq %struct.hash_table* %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %11, %15
  %19 = phi %struct.hash_table* [ %16, %15 ], [ %13, %11 ]
  %20 = bitcast %struct.dev_ino* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #41
  %21 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %0, i64 0, i32 17, i64 0, i32 0
  %22 = load i64, i64* %21, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %3, i64 0, i32 0
  store i64 %22, i64* %23, align 8, !tbaa !111
  %24 = call i8* @hash_lookup(%struct.hash_table* noundef nonnull %19, i8* noundef nonnull %20) #41
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #41
  br label %31

27:                                               ; preds = %18
  %28 = getelementptr inbounds i8, i8* %24, i64 8
  %29 = bitcast i8* %28 to i64*
  %30 = load i64, i64* %29, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #41
  br label %62

31:                                               ; preds = %26, %15
  %32 = phi i1 [ true, %15 ], [ false, %26 ]
  %33 = phi %struct.hash_table* [ null, %15 ], [ %19, %26 ]
  %34 = bitcast %struct.statfs* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %34) #41
  %35 = icmp slt i32 %1, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %31
  %37 = call i32 @fstatfs(i32 noundef %1, %struct.statfs* noundef nonnull %4) #41
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  br i1 %32, label %57, label %40

40:                                               ; preds = %39
  %41 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #41
  %42 = bitcast i8* %41 to %struct.dev_ino*
  %43 = icmp eq i8* %41, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %0, i64 0, i32 17, i64 0, i32 0
  %46 = load i64, i64* %45, align 8, !tbaa !49
  %47 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %42, i64 0, i32 0
  store i64 %46, i64* %47, align 8, !tbaa !111
  %48 = getelementptr inbounds %struct.statfs, %struct.statfs* %4, i64 0, i32 0
  %49 = load i64, i64* %48, align 8, !tbaa !114
  %50 = getelementptr inbounds %struct.dev_ino, %struct.dev_ino* %42, i64 0, i32 1
  store i64 %49, i64* %50, align 8, !tbaa !113
  %51 = call i8* @hash_insert(%struct.hash_table* noundef nonnull %33, i8* noundef nonnull %41) #41
  %52 = icmp eq i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = icmp eq i8* %51, %41
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  call void @abort() #43
  unreachable

56:                                               ; preds = %44
  call void @free(i8* noundef nonnull %41) #41
  br label %57

57:                                               ; preds = %40, %53, %56, %39
  %58 = getelementptr inbounds %struct.statfs, %struct.statfs* %4, i64 0, i32 0
  %59 = load i64, i64* %58, align 8, !tbaa !114
  br label %60

60:                                               ; preds = %31, %36, %57
  %61 = phi i64 [ %59, %57 ], [ 0, %36 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %34) #41
  br label %62

62:                                               ; preds = %27, %60, %2
  %63 = phi i64 [ 0, %2 ], [ %61, %60 ], [ %30, %27 ]
  ret i64 %63
}

declare %struct.dirent* @readdir(%struct.__dirstream* noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @fts_compare_ino(%struct._ftsent** nocapture noundef readonly %0, %struct._ftsent** nocapture noundef readonly %1) #24 {
  %3 = load %struct._ftsent*, %struct._ftsent** %0, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %3, i64 0, i32 17, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !52
  %6 = load %struct._ftsent*, %struct._ftsent** %1, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %6, i64 0, i32 17, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !52
  %9 = icmp ugt i64 %5, %8
  %10 = zext i1 %9 to i32
  %11 = icmp ult i64 %5, %8
  %12 = sext i1 %11 to i32
  %13 = add nsw i32 %12, %10
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal i64 @dev_type_hash(i8* nocapture noundef readonly %0, i64 noundef %1) #24 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !111
  %5 = urem i64 %4, %1
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define internal i1 @dev_type_compare(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #24 {
  %3 = bitcast i8* %0 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !111
  %5 = bitcast i8* %1 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !111
  %7 = icmp eq i64 %4, %6
  ret i1 %7
}

; Function Attrs: nounwind
declare i32 @fstatfs(i32 noundef, %struct.statfs* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn writeonly
define dso_local i32 @rpl_fts_set(%struct.FTS* nocapture noundef readnone %0, %struct._ftsent* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #26 {
  %4 = icmp ugt i32 %2, 4
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32* @__errno_location() #44
  store i32 22, i32* %6, align 4, !tbaa !22
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
define dso_local %struct._ftsent* @rpl_fts_children(%struct.FTS* noundef %0, i32 noundef %1) local_unnamed_addr #13 {
  %3 = and i32 %1, -8193
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32* @__errno_location() #44
  store i32 22, i32* %6, align 4, !tbaa !22
  br label %79

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 0
  %9 = load %struct._ftsent*, %struct._ftsent** %8, align 8, !tbaa !75
  %10 = tail call i32* @__errno_location() #44
  store i32 0, i32* %10, align 4, !tbaa !22
  %11 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %12 = load i32, i32* %11, align 8, !tbaa !69
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
  %23 = load %struct._ftsent*, %struct._ftsent** %22, align 8, !tbaa !86
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
  %33 = tail call i32 @closedir(%struct.__dirstream* noundef nonnull %30) #41
  br label %34

34:                                               ; preds = %32, %25
  %35 = bitcast %struct._ftsent* %26 to i8*
  tail call void @free(i8* noundef %35) #41
  %36 = icmp eq %struct._ftsent* %28, null
  br i1 %36, label %37, label %25, !llvm.loop !117

37:                                               ; preds = %34
  store i32 0, i32* %10, align 4, !tbaa !22
  br label %38

38:                                               ; preds = %37, %21
  %39 = icmp eq i32 %1, 8192
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i32, i32* %11, align 8, !tbaa !69
  %42 = or i32 %41, 8192
  store i32 %42, i32* %11, align 8, !tbaa !69
  br label %43

43:                                               ; preds = %38, %40
  %44 = phi i32 [ 2, %40 ], [ 1, %38 ]
  %45 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %9, i64 0, i32 12
  %46 = load i64, i64* %45, align 8, !tbaa !54
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %9, i64 0, i32 6
  %50 = load i8*, i8** %49, align 8, !tbaa !12
  %51 = load i8, i8* %50, align 1, !tbaa !16
  %52 = icmp eq i8 %51, 47
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %11, align 8, !tbaa !69
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53, %48, %43
  %58 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* noundef %0, i32 noundef %44)
  store %struct._ftsent* %58, %struct._ftsent** %22, align 8, !tbaa !86
  br label %79

59:                                               ; preds = %53
  %60 = tail call fastcc i32 @diropen(%struct.FTS* noundef nonnull %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i64 0, i64 0))
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store %struct._ftsent* null, %struct._ftsent** %22, align 8, !tbaa !86
  br label %79

63:                                               ; preds = %59
  %64 = tail call fastcc %struct._ftsent* @fts_build(%struct.FTS* noundef nonnull %0, i32 noundef %44)
  store %struct._ftsent* %64, %struct._ftsent** %22, align 8, !tbaa !86
  %65 = load i32, i32* %11, align 8, !tbaa !69
  %66 = and i32 %65, 512
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  tail call fastcc void @cwd_advance_fd(%struct.FTS* noundef nonnull %0, i32 noundef %60, i1 noundef true)
  br label %77

69:                                               ; preds = %63
  %70 = tail call i32 @fchdir(i32 noundef %60) #41
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4, !tbaa !22
  %74 = tail call i32 @close(i32 noundef %60) #41
  store i32 %73, i32* %10, align 4, !tbaa !22
  br label %79

75:                                               ; preds = %69
  %76 = tail call i32 @close(i32 noundef %60) #41
  br label %77

77:                                               ; preds = %75, %68
  %78 = load %struct._ftsent*, %struct._ftsent** %22, align 8, !tbaa !86
  br label %79

79:                                               ; preds = %18, %57, %7, %15, %77, %72, %62, %5
  %80 = phi %struct._ftsent* [ null, %5 ], [ %20, %18 ], [ %58, %57 ], [ null, %7 ], [ null, %15 ], [ null, %62 ], [ %78, %77 ], [ null, %72 ]
  ret %struct._ftsent* %80
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #24 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !tbaa !12
  ret i8* %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @hash_get_n_buckets(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #24 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %3 = load i64, i64* %2, align 8, !tbaa !118
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @hash_get_n_buckets_used(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #24 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %3 = load i64, i64* %2, align 8, !tbaa !120
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @hash_get_n_entries(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #24 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %3 = load i64, i64* %2, align 8, !tbaa !121
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @hash_get_max_bucket_length(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #24 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !123
  %6 = icmp ult %struct.hash_entry* %3, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %25, %1
  %8 = phi i64 [ 0, %1 ], [ %26, %25 ]
  ret i64 %8

9:                                                ; preds = %1, %25
  %10 = phi %struct.hash_entry* [ %27, %25 ], [ %3, %1 ]
  %11 = phi i64 [ %26, %25 ], [ 0, %1 ]
  %12 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i64 0, i32 0
  %13 = load i8*, i8** %12, align 8, !tbaa !124
  %14 = icmp eq i8* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %9, %15
  %16 = phi %struct.hash_entry* [ %19, %15 ], [ %10, %9 ]
  %17 = phi i64 [ %21, %15 ], [ 1, %9 ]
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 1
  %19 = load %struct.hash_entry*, %struct.hash_entry** %18, align 8, !tbaa !126
  %20 = icmp eq %struct.hash_entry* %19, null
  %21 = add i64 %17, 1
  br i1 %20, label %22, label %15, !llvm.loop !127

22:                                               ; preds = %15
  %23 = icmp ugt i64 %17, %11
  %24 = select i1 %23, i64 %17, i64 %11
  br label %25

25:                                               ; preds = %9, %22
  %26 = phi i64 [ %24, %22 ], [ %11, %9 ]
  %27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i64 1
  %28 = icmp ult %struct.hash_entry* %27, %5
  br i1 %28, label %9, label %7, !llvm.loop !128
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i1 @hash_table_ok(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #24 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !123
  %6 = icmp ult %struct.hash_entry* %3, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %29, %1
  %8 = phi i64 [ 0, %1 ], [ %30, %29 ]
  %9 = phi i64 [ 0, %1 ], [ %31, %29 ]
  %10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %11 = load i64, i64* %10, align 8, !tbaa !120
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %34, label %38

13:                                               ; preds = %1, %29
  %14 = phi %struct.hash_entry* [ %32, %29 ], [ %3, %1 ]
  %15 = phi i64 [ %31, %29 ], [ 0, %1 ]
  %16 = phi i64 [ %30, %29 ], [ 0, %1 ]
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !124
  %19 = icmp eq i8* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %13, %20
  %21 = phi i64 [ %23, %20 ], [ %15, %13 ]
  %22 = phi %struct.hash_entry* [ %25, %20 ], [ %14, %13 ]
  %23 = add i64 %21, 1
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i64 0, i32 1
  %25 = load %struct.hash_entry*, %struct.hash_entry** %24, align 8, !tbaa !126
  %26 = icmp eq %struct.hash_entry* %25, null
  br i1 %26, label %27, label %20, !llvm.loop !129

27:                                               ; preds = %20
  %28 = add i64 %16, 1
  br label %29

29:                                               ; preds = %27, %13
  %30 = phi i64 [ %16, %13 ], [ %28, %27 ]
  %31 = phi i64 [ %15, %13 ], [ %23, %27 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 1
  %33 = icmp ult %struct.hash_entry* %32, %5
  br i1 %33, label %13, label %7, !llvm.loop !130

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %36 = load i64, i64* %35, align 8, !tbaa !121
  %37 = icmp eq i64 %9, %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %7
  br label %39

39:                                               ; preds = %34, %38
  %40 = phi i1 [ false, %38 ], [ true, %34 ]
  ret i1 %40
}

; Function Attrs: nounwind uwtable
define dso_local void @hash_print_statistics(%struct.hash_table* nocapture noundef readonly %0, %struct._IO_FILE* noundef %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %4 = load i64, i64* %3, align 8, !tbaa !121
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %8 = load i64, i64* %7, align 8, !tbaa !120
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %10 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8, !tbaa !122
  %11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %12 = load %struct.hash_entry*, %struct.hash_entry** %11, align 8, !tbaa !123
  %13 = icmp ult %struct.hash_entry* %10, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %2, %30
  %15 = phi %struct.hash_entry* [ %32, %30 ], [ %10, %2 ]
  %16 = phi i64 [ %31, %30 ], [ 0, %2 ]
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !124
  %19 = icmp eq i8* %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %14, %20
  %21 = phi %struct.hash_entry* [ %24, %20 ], [ %15, %14 ]
  %22 = phi i64 [ %26, %20 ], [ 1, %14 ]
  %23 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 1
  %24 = load %struct.hash_entry*, %struct.hash_entry** %23, align 8, !tbaa !126
  %25 = icmp eq %struct.hash_entry* %24, null
  %26 = add i64 %22, 1
  br i1 %25, label %27, label %20, !llvm.loop !131

27:                                               ; preds = %20
  %28 = icmp ugt i64 %22, %16
  %29 = select i1 %28, i64 %22, i64 %16
  br label %30

30:                                               ; preds = %27, %14
  %31 = phi i64 [ %29, %27 ], [ %16, %14 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 1
  %33 = icmp ult %struct.hash_entry* %32, %12
  br i1 %33, label %14, label %34, !llvm.loop !132

34:                                               ; preds = %30, %2
  %35 = phi i64 [ 0, %2 ], [ %31, %30 ]
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.119, i64 0, i64 0), i64 noundef %4) #41
  %37 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.120, i64 0, i64 0), i64 noundef %6) #41
  %38 = uitofp i64 %8 to double
  %39 = fmul double %38, 1.000000e+02
  %40 = uitofp i64 %6 to double
  %41 = fdiv double %39, %40
  %42 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.121, i64 0, i64 0), i64 noundef %8, double noundef %41) #41
  %43 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.122, i64 0, i64 0), i64 noundef %35) #41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_lookup(%struct.hash_table* nocapture noundef readonly %0, i8* noundef %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !tbaa !133
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8, !tbaa !118
  %7 = tail call i64 %4(i8* noundef %1, i64 noundef %6) #41
  %8 = load i64, i64* %5, align 8, !tbaa !118
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @abort() #43
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !122
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7
  %15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !124
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
  %26 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !tbaa !134
  %27 = tail call i1 %26(i8* noundef %1, i8* noundef %25) #41
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i64 0, i32 0
  %30 = load i8*, i8** %29, align 8, !tbaa !124
  br label %39

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i64 0, i32 1
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8, !tbaa !126
  %34 = icmp eq %struct.hash_entry* %33, null
  br i1 %34, label %39, label %35, !llvm.loop !135

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8, !tbaa !124
  %38 = icmp eq i8* %37, %1
  br i1 %38, label %39, label %23

39:                                               ; preds = %35, %31, %20, %28, %11
  %40 = phi i8* [ null, %11 ], [ %30, %28 ], [ %1, %20 ], [ null, %31 ], [ %1, %35 ]
  ret i8* %40
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i8* @hash_get_first(%struct.hash_table* nocapture noundef readonly %0) local_unnamed_addr #27 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %3 = load i64, i64* %2, align 8, !tbaa !121
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !122
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %9 = load %struct.hash_entry*, %struct.hash_entry** %8, align 8, !tbaa !123
  %10 = icmp ult %struct.hash_entry* %7, %9
  br i1 %10, label %14, label %13

11:                                               ; preds = %14
  %12 = icmp ult %struct.hash_entry* %19, %9
  br i1 %12, label %14, label %13

13:                                               ; preds = %11, %5
  tail call void @abort() #43
  unreachable

14:                                               ; preds = %5, %11
  %15 = phi %struct.hash_entry* [ %19, %11 ], [ %7, %5 ]
  %16 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 0, i32 0
  %17 = load i8*, i8** %16, align 8, !tbaa !124
  %18 = icmp eq i8* %17, null
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 1
  br i1 %18, label %11, label %20

20:                                               ; preds = %14, %1
  %21 = phi i8* [ null, %1 ], [ %17, %14 ]
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_get_next(%struct.hash_table* nocapture noundef readonly %0, i8* noundef %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !tbaa !133
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8, !tbaa !118
  %7 = tail call i64 %4(i8* noundef %1, i64 noundef %6) #41
  %8 = load i64, i64* %5, align 8, !tbaa !118
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @abort() #43
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !122
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7
  br label %15

15:                                               ; preds = %27, %11
  %16 = phi %struct.hash_entry* [ %14, %11 ], [ %21, %27 ]
  %17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8, !tbaa !124
  %19 = icmp eq i8* %18, %1
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i64 0, i32 1
  %21 = load %struct.hash_entry*, %struct.hash_entry** %20, align 8, !tbaa !126
  %22 = icmp eq %struct.hash_entry* %21, null
  br i1 %19, label %23, label %27

23:                                               ; preds = %15
  br i1 %22, label %28, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8, !tbaa !124
  br label %39

27:                                               ; preds = %15
  br i1 %22, label %28, label %15, !llvm.loop !136

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8, !tbaa !123
  br label %31

31:                                               ; preds = %28, %35
  %32 = phi %struct.hash_entry* [ %33, %35 ], [ %14, %28 ]
  %33 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %32, i64 1
  %34 = icmp ult %struct.hash_entry* %33, %30
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8, !tbaa !124
  %38 = icmp eq i8* %37, null
  br i1 %38, label %31, label %39, !llvm.loop !137

39:                                               ; preds = %31, %35, %24
  %40 = phi i8* [ %26, %24 ], [ null, %31 ], [ %37, %35 ]
  ret i8* %40
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i64 @hash_get_entries(%struct.hash_table* nocapture noundef readonly %0, i8** nocapture noundef writeonly %1, i64 noundef %2) local_unnamed_addr #28 {
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !122
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !123
  %8 = icmp ult %struct.hash_entry* %5, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %3, %34
  %10 = phi %struct.hash_entry* [ %35, %34 ], [ %7, %3 ]
  %11 = phi %struct.hash_entry* [ %37, %34 ], [ %5, %3 ]
  %12 = phi i64 [ %36, %34 ], [ 0, %3 ]
  %13 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !124
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
  %26 = load i8*, i8** %25, align 8, !tbaa !124
  %27 = add i64 %22, 1
  %28 = getelementptr inbounds i8*, i8** %1, i64 %22
  store i8* %26, i8** %28, align 8, !tbaa !12
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 0, i32 1
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8, !tbaa !126
  %31 = icmp eq %struct.hash_entry* %30, null
  br i1 %31, label %32, label %20, !llvm.loop !138

32:                                               ; preds = %24
  %33 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !123
  br label %34

34:                                               ; preds = %32, %9
  %35 = phi %struct.hash_entry* [ %10, %9 ], [ %33, %32 ]
  %36 = phi i64 [ %12, %9 ], [ %27, %32 ]
  %37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 1
  %38 = icmp ult %struct.hash_entry* %37, %35
  br i1 %38, label %9, label %39, !llvm.loop !139

39:                                               ; preds = %34, %20, %3
  %40 = phi i64 [ 0, %3 ], [ %19, %20 ], [ %36, %34 ]
  ret i64 %40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @hash_do_for_each(%struct.hash_table* nocapture noundef readonly %0, i1 (i8*, i8*)* nocapture noundef readonly %1, i8* noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !122
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !123
  %8 = icmp ult %struct.hash_entry* %5, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %3, %33
  %10 = phi %struct.hash_entry* [ %34, %33 ], [ %7, %3 ]
  %11 = phi %struct.hash_entry* [ %36, %33 ], [ %5, %3 ]
  %12 = phi i64 [ %35, %33 ], [ 0, %3 ]
  %13 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !124
  %15 = icmp eq i8* %14, null
  %16 = icmp eq %struct.hash_entry* %11, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %33, label %18

18:                                               ; preds = %9
  %19 = tail call i1 %1(i8* noundef %14, i8* noundef %2) #41
  br i1 %19, label %20, label %38

20:                                               ; preds = %18, %27
  %21 = phi i64 [ %23, %27 ], [ %12, %18 ]
  %22 = phi %struct.hash_entry* [ %25, %27 ], [ %11, %18 ]
  %23 = add i64 %21, 1
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i64 0, i32 1
  %25 = load %struct.hash_entry*, %struct.hash_entry** %24, align 8, !tbaa !126
  %26 = icmp eq %struct.hash_entry* %25, null
  br i1 %26, label %31, label %27, !llvm.loop !140

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i64 0, i32 0
  %29 = load i8*, i8** %28, align 8, !tbaa !124
  %30 = tail call i1 %1(i8* noundef %29, i8* noundef %2) #41
  br i1 %30, label %20, label %38

31:                                               ; preds = %20
  %32 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !123
  br label %33

33:                                               ; preds = %31, %9
  %34 = phi %struct.hash_entry* [ %10, %9 ], [ %32, %31 ]
  %35 = phi i64 [ %12, %9 ], [ %23, %31 ]
  %36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i64 1
  %37 = icmp ult %struct.hash_entry* %36, %34
  br i1 %37, label %9, label %38, !llvm.loop !141

38:                                               ; preds = %33, %18, %27, %3
  %39 = phi i64 [ 0, %3 ], [ %23, %27 ], [ %35, %33 ], [ %12, %18 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable willreturn
define dso_local void @hash_reset_tuning(%struct.hash_tuning* nocapture noundef writeonly %0) local_unnamed_addr #29 {
  %2 = bitcast %struct.hash_tuning* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(20) %2, i8* noundef nonnull align 4 dereferenceable(20) bitcast (%struct.hash_tuning* @default_tuning to i8*), i64 20, i1 false), !tbaa.struct !142
  ret void
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias %struct.hash_table* @hash_initialize(i64 noundef %0, %struct.hash_tuning* noundef %1, i64 (i8*, i64)* noundef %2, i1 (i8*, i8*)* noundef %3, void (i8*)* noundef %4) local_unnamed_addr #18 {
  %6 = icmp eq i64 (i8*, i64)* %2, null
  %7 = select i1 %6, i64 (i8*, i64)* @raw_hasher, i64 (i8*, i64)* %2
  %8 = icmp eq i1 (i8*, i8*)* %3, null
  %9 = select i1 %8, i1 (i8*, i8*)* @raw_comparator, i1 (i8*, i8*)* %3
  %10 = tail call noalias dereferenceable_or_null(80) i8* @malloc(i64 noundef 80) #41
  %11 = bitcast i8* %10 to %struct.hash_table*
  %12 = icmp eq i8* %10, null
  br i1 %12, label %77, label %13

13:                                               ; preds = %5
  %14 = icmp eq %struct.hash_tuning* %1, null
  %15 = select i1 %14, %struct.hash_tuning* @default_tuning, %struct.hash_tuning* %1
  %16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 5
  store %struct.hash_tuning* %15, %struct.hash_tuning** %16, align 8, !tbaa !145
  %17 = icmp eq %struct.hash_tuning* %15, @default_tuning
  br i1 %17, label %41, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2
  %20 = load float, float* %19, align 4, !tbaa !146
  %21 = fcmp ogt float %20, 0x3FB99999A0000000
  %22 = fcmp olt float %20, 0x3FECCCCCC0000000
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 3
  %26 = load float, float* %25, align 4, !tbaa !148
  %27 = fcmp ogt float %26, 0x3FF19999A0000000
  br i1 %27, label %28, label %73

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 0
  %30 = load float, float* %29, align 4, !tbaa !149
  %31 = fcmp ult float %30, 0.000000e+00
  br i1 %31, label %73, label %32

32:                                               ; preds = %28
  %33 = fadd float %30, 0x3FB99999A0000000
  %34 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 1
  %35 = load float, float* %34, align 4, !tbaa !150
  %36 = fcmp olt float %33, %35
  %37 = fcmp ole float %35, 1.000000e+00
  %38 = and i1 %36, %37
  %39 = fcmp olt float %33, %20
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %73

41:                                               ; preds = %13, %32
  %42 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 4
  %43 = load i8, i8* %42, align 4, !tbaa !151, !range !31
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = uitofp i64 %0 to float
  %47 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %15, i64 0, i32 2
  %48 = load float, float* %47, align 4, !tbaa !146
  %49 = fdiv float %46, %48
  %50 = fcmp ult float %49, 0x43F0000000000000
  %51 = fptoui float %49 to i64
  br i1 %50, label %52, label %73

52:                                               ; preds = %45, %41
  %53 = phi i64 [ %0, %41 ], [ %51, %45 ]
  %54 = tail call i64 @next_prime(i64 noundef %53) #44
  %55 = icmp ugt i64 %54, 1152921504606846975
  br i1 %55, label %73, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 2
  store i64 %54, i64* %57, align 8, !tbaa !118
  %58 = icmp eq i64 %54, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %56
  %60 = tail call noalias i8* @calloc(i64 noundef %54, i64 noundef 16) #41
  %61 = bitcast i8* %10 to i8**
  store i8* %60, i8** %61, align 8, !tbaa !122
  %62 = icmp eq i8* %60, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %59
  %64 = bitcast i8* %60 to %struct.hash_entry*
  %65 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %64, i64 %54
  %66 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 1
  store %struct.hash_entry* %65, %struct.hash_entry** %66, align 8, !tbaa !123
  %67 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 3
  %68 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 6
  %69 = bitcast i64* %67 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  store i64 (i8*, i64)* %7, i64 (i8*, i64)** %68, align 8, !tbaa !133
  %70 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 7
  store i1 (i8*, i8*)* %9, i1 (i8*, i8*)** %70, align 8, !tbaa !134
  %71 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 8
  store void (i8*)* %4, void (i8*)** %71, align 8, !tbaa !152
  %72 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i64 0, i32 9
  store %struct.hash_entry* null, %struct.hash_entry** %72, align 8, !tbaa !153
  br label %77

73:                                               ; preds = %52, %45, %18, %24, %28, %32
  %74 = phi i32 [ 22, %32 ], [ 22, %28 ], [ 22, %24 ], [ 22, %18 ], [ 12, %45 ], [ 12, %52 ]
  %75 = tail call i32* @__errno_location() #44
  store i32 %74, i32* %75, align 4, !tbaa !22
  br label %76

76:                                               ; preds = %73, %59, %56
  tail call void @free(i8* noundef nonnull %10) #41
  br label %77

77:                                               ; preds = %5, %76, %63
  %78 = phi %struct.hash_table* [ null, %76 ], [ %11, %63 ], [ null, %5 ]
  ret %struct.hash_table* %78
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define internal i64 @raw_hasher(i8* noundef %0, i64 noundef %1) #30 {
  %3 = ptrtoint i8* %0 to i64
  %4 = tail call i64 @llvm.fshl.i64(i64 %3, i64 %3, i64 61)
  %5 = urem i64 %4, %1
  ret i64 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define internal i1 @raw_comparator(i8* noundef readnone %0, i8* noundef readnone %1) #30 {
  %3 = icmp eq i8* %0, %1
  ret i1 %3
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local void @hash_clear(%struct.hash_table* nocapture noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %2, align 8, !tbaa !122
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !123
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
  %17 = load i8*, i8** %16, align 8, !tbaa !124
  %18 = icmp eq i8* %17, null
  br i1 %18, label %59, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 0, i32 1
  %21 = load %struct.hash_entry*, %struct.hash_entry** %20, align 8, !tbaa !126
  %22 = icmp eq %struct.hash_entry* %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %19
  %24 = load void (i8*)*, void (i8*)** %8, align 8, !tbaa !152
  %25 = icmp eq void (i8*)* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8, !tbaa !153
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi %struct.hash_entry* [ %27, %26 ], [ %30, %28 ]
  %30 = phi %struct.hash_entry* [ %21, %26 ], [ %33, %28 ]
  %31 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 0
  store i8* null, i8** %31, align 8, !tbaa !124
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i64 0, i32 1
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8, !tbaa !126
  store %struct.hash_entry* %29, %struct.hash_entry** %32, align 8, !tbaa !126
  %34 = icmp eq %struct.hash_entry* %33, null
  br i1 %34, label %35, label %28, !llvm.loop !154

35:                                               ; preds = %28
  store %struct.hash_entry* %30, %struct.hash_entry** %9, align 8, !tbaa !153
  br label %36

36:                                               ; preds = %46, %35, %19
  %37 = load void (i8*)*, void (i8*)** %8, align 8, !tbaa !152
  %38 = icmp eq void (i8*)* %37, null
  br i1 %38, label %56, label %54

39:                                               ; preds = %23, %52
  %40 = phi void (i8*)* [ %53, %52 ], [ %24, %23 ]
  %41 = phi %struct.hash_entry* [ %49, %52 ], [ %21, %23 ]
  %42 = icmp eq void (i8*)* %40, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 0
  %45 = load i8*, i8** %44, align 8, !tbaa !124
  tail call void %40(i8* noundef %45) #41
  br label %46

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 0
  store i8* null, i8** %47, align 8, !tbaa !124
  %48 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 1
  %49 = load %struct.hash_entry*, %struct.hash_entry** %48, align 8, !tbaa !126
  %50 = load %struct.hash_entry*, %struct.hash_entry** %9, align 8, !tbaa !153
  store %struct.hash_entry* %50, %struct.hash_entry** %48, align 8, !tbaa !126
  store %struct.hash_entry* %41, %struct.hash_entry** %9, align 8, !tbaa !153
  %51 = icmp eq %struct.hash_entry* %49, null
  br i1 %51, label %36, label %52, !llvm.loop !155

52:                                               ; preds = %46
  %53 = load void (i8*)*, void (i8*)** %8, align 8, !tbaa !152
  br label %39

54:                                               ; preds = %36
  %55 = load i8*, i8** %16, align 8, !tbaa !124
  tail call void %37(i8* noundef %55) #41
  br label %56

56:                                               ; preds = %54, %36
  %57 = bitcast %struct.hash_entry* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  %58 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !123
  br label %59

59:                                               ; preds = %13, %56
  %60 = phi %struct.hash_entry* [ %14, %13 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i64 1
  %62 = icmp ult %struct.hash_entry* %61, %60
  br i1 %62, label %13, label %10, !llvm.loop !157
}

; Function Attrs: nounwind uwtable
define dso_local void @hash_free(%struct.hash_table* nocapture noundef %0) local_unnamed_addr #13 {
  %2 = tail call i32* @__errno_location() #44
  %3 = load i32, i32* %2, align 4, !tbaa !22
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8
  %5 = load void (i8*)*, void (i8*)** %4, align 8, !tbaa !152
  %6 = icmp eq void (i8*)* %5, null
  br i1 %6, label %44, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %9 = load i64, i64* %8, align 8, !tbaa !121
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !122
  %14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %15 = load %struct.hash_entry*, %struct.hash_entry** %14, align 8, !tbaa !123
  %16 = icmp ult %struct.hash_entry* %13, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11, %40
  %18 = phi %struct.hash_entry* [ %41, %40 ], [ %15, %11 ]
  %19 = phi %struct.hash_entry* [ %42, %40 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 0, i32 0
  %21 = load i8*, i8** %20, align 8, !tbaa !124
  %22 = icmp eq i8* %21, null
  %23 = icmp eq %struct.hash_entry* %19, null
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %40, label %25

25:                                               ; preds = %17
  %26 = load void (i8*)*, void (i8*)** %4, align 8, !tbaa !152
  tail call void %26(i8* noundef %21) #41
  %27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 0, i32 1
  %28 = load %struct.hash_entry*, %struct.hash_entry** %27, align 8, !tbaa !126
  %29 = icmp eq %struct.hash_entry* %28, null
  br i1 %29, label %38, label %30, !llvm.loop !158

30:                                               ; preds = %25, %30
  %31 = phi %struct.hash_entry* [ %36, %30 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !124
  %34 = load void (i8*)*, void (i8*)** %4, align 8, !tbaa !152
  tail call void %34(i8* noundef %33) #41
  %35 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 1
  %36 = load %struct.hash_entry*, %struct.hash_entry** %35, align 8, !tbaa !126
  %37 = icmp eq %struct.hash_entry* %36, null
  br i1 %37, label %38, label %30, !llvm.loop !158

38:                                               ; preds = %30, %25
  %39 = load %struct.hash_entry*, %struct.hash_entry** %14, align 8, !tbaa !123
  br label %40

40:                                               ; preds = %38, %17
  %41 = phi %struct.hash_entry* [ %39, %38 ], [ %18, %17 ]
  %42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 1
  %43 = icmp ult %struct.hash_entry* %42, %41
  br i1 %43, label %17, label %44, !llvm.loop !159

44:                                               ; preds = %40, %11, %7, %1
  %45 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %46 = load %struct.hash_entry*, %struct.hash_entry** %45, align 8, !tbaa !122
  %47 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  %48 = load %struct.hash_entry*, %struct.hash_entry** %47, align 8, !tbaa !123
  %49 = icmp ult %struct.hash_entry* %46, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %62, %44
  %51 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %52 = load %struct.hash_entry*, %struct.hash_entry** %51, align 8, !tbaa !153
  %53 = icmp eq %struct.hash_entry* %52, null
  br i1 %53, label %72, label %76

54:                                               ; preds = %44, %62
  %55 = phi %struct.hash_entry* [ %63, %62 ], [ %48, %44 ]
  %56 = phi %struct.hash_entry* [ %64, %62 ], [ %46, %44 ]
  %57 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %56, i64 0, i32 1
  %58 = load %struct.hash_entry*, %struct.hash_entry** %57, align 8, !tbaa !126
  %59 = icmp eq %struct.hash_entry* %58, null
  br i1 %59, label %62, label %66

60:                                               ; preds = %66
  %61 = load %struct.hash_entry*, %struct.hash_entry** %47, align 8, !tbaa !123
  br label %62

62:                                               ; preds = %60, %54
  %63 = phi %struct.hash_entry* [ %61, %60 ], [ %55, %54 ]
  %64 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %56, i64 1
  %65 = icmp ult %struct.hash_entry* %64, %63
  br i1 %65, label %54, label %50, !llvm.loop !160

66:                                               ; preds = %54, %66
  %67 = phi %struct.hash_entry* [ %69, %66 ], [ %58, %54 ]
  %68 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %67, i64 0, i32 1
  %69 = load %struct.hash_entry*, %struct.hash_entry** %68, align 8, !tbaa !126
  %70 = bitcast %struct.hash_entry* %67 to i8*
  tail call void @free(i8* noundef %70) #41
  %71 = icmp eq %struct.hash_entry* %69, null
  br i1 %71, label %60, label %66, !llvm.loop !161

72:                                               ; preds = %76, %50
  %73 = bitcast %struct.hash_table* %0 to i8**
  %74 = load i8*, i8** %73, align 8, !tbaa !122
  tail call void @free(i8* noundef %74) #41
  %75 = bitcast %struct.hash_table* %0 to i8*
  tail call void @free(i8* noundef %75) #41
  store i32 %3, i32* %2, align 4, !tbaa !22
  ret void

76:                                               ; preds = %50, %76
  %77 = phi %struct.hash_entry* [ %79, %76 ], [ %52, %50 ]
  %78 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %77, i64 0, i32 1
  %79 = load %struct.hash_entry*, %struct.hash_entry** %78, align 8, !tbaa !126
  %80 = bitcast %struct.hash_entry* %77 to i8*
  tail call void @free(i8* noundef %80) #41
  %81 = icmp eq %struct.hash_entry* %79, null
  br i1 %81, label %72, label %76, !llvm.loop !162
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hash_rehash(%struct.hash_table* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #13 {
  %3 = alloca %struct.hash_table, align 8
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5
  %5 = load %struct.hash_tuning*, %struct.hash_tuning** %4, align 8, !tbaa !145
  %6 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %5, i64 0, i32 4
  %7 = load i8, i8* %6, align 4, !tbaa !151, !range !31
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = uitofp i64 %1 to float
  %11 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %5, i64 0, i32 2
  %12 = load float, float* %11, align 4, !tbaa !146
  %13 = fdiv float %10, %12
  %14 = fcmp ult float %13, 0x43F0000000000000
  %15 = fptoui float %13 to i64
  br i1 %14, label %16, label %20

16:                                               ; preds = %9, %2
  %17 = phi i64 [ %1, %2 ], [ %15, %9 ]
  %18 = tail call i64 @next_prime(i64 noundef %17) #44
  %19 = icmp ugt i64 %18, 1152921504606846975
  br i1 %19, label %20, label %22

20:                                               ; preds = %9, %16
  %21 = tail call i32* @__errno_location() #44
  store i32 12, i32* %21, align 4, !tbaa !22
  br label %124

22:                                               ; preds = %16
  %23 = icmp eq i64 %18, 0
  br i1 %23, label %124, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %26 = load i64, i64* %25, align 8, !tbaa !118
  %27 = icmp eq i64 %18, %26
  br i1 %27, label %124, label %28

28:                                               ; preds = %24
  %29 = bitcast %struct.hash_table* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %29) #41
  %30 = tail call noalias i8* @calloc(i64 noundef %18, i64 noundef 16) #41
  %31 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 0
  %32 = bitcast %struct.hash_table* %3 to i8**
  store i8* %30, i8** %32, align 8, !tbaa !122
  %33 = icmp eq i8* %30, null
  br i1 %33, label %122, label %34

34:                                               ; preds = %28
  %35 = bitcast i8* %30 to %struct.hash_entry*
  %36 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 2
  store i64 %18, i64* %36, align 8, !tbaa !118
  %37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %35, i64 %18
  %38 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 1
  store %struct.hash_entry* %37, %struct.hash_entry** %38, align 8, !tbaa !123
  %39 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 3
  %40 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 5
  %41 = bitcast i64* %39 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  store %struct.hash_tuning* %5, %struct.hash_tuning** %40, align 8, !tbaa !145
  %42 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %43 = load i64 (i8*, i64)*, i64 (i8*, i64)** %42, align 8, !tbaa !133
  %44 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 6
  store i64 (i8*, i64)* %43, i64 (i8*, i64)** %44, align 8, !tbaa !133
  %45 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %46 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %45, align 8, !tbaa !134
  %47 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 7
  store i1 (i8*, i8*)* %46, i1 (i8*, i8*)** %47, align 8, !tbaa !134
  %48 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 8
  %49 = load void (i8*)*, void (i8*)** %48, align 8, !tbaa !152
  %50 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 8
  store void (i8*)* %49, void (i8*)** %50, align 8, !tbaa !152
  %51 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %52 = load %struct.hash_entry*, %struct.hash_entry** %51, align 8, !tbaa !153
  %53 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i64 0, i32 9
  store %struct.hash_entry* %52, %struct.hash_entry** %53, align 8, !tbaa !153
  %54 = call fastcc i1 @transfer_entries(%struct.hash_table* noundef nonnull %3, %struct.hash_table* noundef nonnull %0, i1 noundef false)
  br i1 %54, label %55, label %66

55:                                               ; preds = %34
  %56 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %57 = bitcast %struct.hash_table* %0 to i8**
  %58 = load i8*, i8** %57, align 8, !tbaa !122
  tail call void @free(i8* noundef %58) #41
  %59 = load %struct.hash_entry*, %struct.hash_entry** %31, align 8, !tbaa !122
  store %struct.hash_entry* %59, %struct.hash_entry** %56, align 8, !tbaa !122
  %60 = load %struct.hash_entry*, %struct.hash_entry** %38, align 8, !tbaa !123
  %61 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 1
  store %struct.hash_entry* %60, %struct.hash_entry** %61, align 8, !tbaa !123
  %62 = bitcast i64* %36 to <2 x i64>*
  %63 = load <2 x i64>, <2 x i64>* %62, align 8, !tbaa !54
  %64 = bitcast i64* %25 to <2 x i64>*
  store <2 x i64> %63, <2 x i64>* %64, align 8, !tbaa !54
  %65 = load %struct.hash_entry*, %struct.hash_entry** %53, align 8, !tbaa !153
  store %struct.hash_entry* %65, %struct.hash_entry** %51, align 8, !tbaa !153
  br label %122

66:                                               ; preds = %34
  %67 = tail call i32* @__errno_location() #44
  %68 = load i32, i32* %67, align 4, !tbaa !22
  %69 = load %struct.hash_entry*, %struct.hash_entry** %53, align 8, !tbaa !153
  store %struct.hash_entry* %69, %struct.hash_entry** %51, align 8, !tbaa !153
  %70 = load %struct.hash_entry*, %struct.hash_entry** %31, align 8, !tbaa !122
  %71 = load %struct.hash_entry*, %struct.hash_entry** %38, align 8, !tbaa !123
  %72 = icmp ult %struct.hash_entry* %70, %71
  br i1 %72, label %73, label %117

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %75 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  br label %76

76:                                               ; preds = %113, %73
  %77 = phi %struct.hash_entry* [ %114, %113 ], [ %70, %73 ]
  %78 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %77, i64 0, i32 0
  %79 = load i8*, i8** %78, align 8, !tbaa !124
  %80 = icmp eq i8* %79, null
  br i1 %80, label %113, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %77, i64 0, i32 1
  %83 = load %struct.hash_entry*, %struct.hash_entry** %82, align 8, !tbaa !126
  %84 = icmp eq %struct.hash_entry* %83, null
  br i1 %84, label %112, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %25, align 8, !tbaa !118
  br label %87

87:                                               ; preds = %108, %85
  %88 = phi i64 [ %94, %108 ], [ %86, %85 ]
  %89 = phi %struct.hash_entry* [ %99, %108 ], [ %83, %85 ]
  %90 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %89, i64 0, i32 0
  %91 = load i8*, i8** %90, align 8, !tbaa !124
  %92 = load i64 (i8*, i64)*, i64 (i8*, i64)** %42, align 8, !tbaa !133
  %93 = tail call i64 %92(i8* noundef %91, i64 noundef %88) #41
  %94 = load i64, i64* %25, align 8, !tbaa !118
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %87
  %97 = load %struct.hash_entry*, %struct.hash_entry** %74, align 8, !tbaa !122
  %98 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %89, i64 0, i32 1
  %99 = load %struct.hash_entry*, %struct.hash_entry** %98, align 8, !tbaa !126
  %100 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %97, i64 %93, i32 0
  %101 = load i8*, i8** %100, align 8, !tbaa !124
  %102 = icmp eq i8* %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %97, i64 %93, i32 1
  br label %108

105:                                              ; preds = %96
  store i8* %91, i8** %100, align 8, !tbaa !124
  %106 = load i64, i64* %75, align 8, !tbaa !120
  %107 = add i64 %106, 1
  store i64 %107, i64* %75, align 8, !tbaa !120
  store i8* null, i8** %90, align 8, !tbaa !124
  br label %108

108:                                              ; preds = %105, %103
  %109 = phi %struct.hash_entry** [ %51, %105 ], [ %104, %103 ]
  %110 = load %struct.hash_entry*, %struct.hash_entry** %109, align 8, !tbaa !12
  store %struct.hash_entry* %110, %struct.hash_entry** %98, align 8, !tbaa !126
  store %struct.hash_entry* %89, %struct.hash_entry** %109, align 8, !tbaa !12
  %111 = icmp eq %struct.hash_entry* %99, null
  br i1 %111, label %112, label %87, !llvm.loop !163

112:                                              ; preds = %108, %81
  store %struct.hash_entry* null, %struct.hash_entry** %82, align 8, !tbaa !126
  br label %113

113:                                              ; preds = %112, %76
  %114 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %77, i64 1
  %115 = icmp ult %struct.hash_entry* %114, %71
  br i1 %115, label %76, label %117, !llvm.loop !164

116:                                              ; preds = %87
  tail call void @abort() #43
  unreachable

117:                                              ; preds = %113, %66
  %118 = call fastcc i1 @transfer_entries(%struct.hash_table* noundef %0, %struct.hash_table* noundef nonnull %3, i1 noundef false)
  br i1 %118, label %120, label %119

119:                                              ; preds = %117
  tail call void @abort() #43
  unreachable

120:                                              ; preds = %117
  %121 = load i8*, i8** %32, align 8, !tbaa !122
  tail call void @free(i8* noundef %121) #41
  store i32 %68, i32* %67, align 4, !tbaa !22
  br label %122

122:                                              ; preds = %28, %120, %55
  %123 = phi i1 [ true, %55 ], [ false, %120 ], [ false, %28 ]
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %29) #41
  br label %124

124:                                              ; preds = %20, %24, %22, %122
  %125 = phi i1 [ %123, %122 ], [ false, %22 ], [ true, %24 ], [ false, %20 ]
  ret i1 %125
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @transfer_entries(%struct.hash_table* nocapture noundef %0, %struct.hash_table* nocapture noundef %1, i1 noundef %2) unnamed_addr #13 {
  %4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 0
  %5 = load %struct.hash_entry*, %struct.hash_entry** %4, align 8, !tbaa !122
  %6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i64 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !123
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
  %21 = load i8*, i8** %20, align 8, !tbaa !124
  %22 = icmp eq i8* %21, null
  br i1 %22, label %58, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 0, i32 1
  %25 = load %struct.hash_entry*, %struct.hash_entry** %24, align 8, !tbaa !126
  %26 = icmp eq %struct.hash_entry* %25, null
  br i1 %26, label %56, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %11, align 8, !tbaa !118
  br label %29

29:                                               ; preds = %27, %50
  %30 = phi i64 [ %36, %50 ], [ %28, %27 ]
  %31 = phi %struct.hash_entry* [ %41, %50 ], [ %25, %27 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8, !tbaa !124
  %34 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8, !tbaa !133
  %35 = tail call i64 %34(i8* noundef %33, i64 noundef %30) #41
  %36 = load i64, i64* %11, align 8, !tbaa !118
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %29
  %39 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !122
  %40 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i64 0, i32 1
  %41 = load %struct.hash_entry*, %struct.hash_entry** %40, align 8, !tbaa !126
  %42 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 %35, i32 0
  %43 = load i8*, i8** %42, align 8, !tbaa !124
  %44 = icmp eq i8* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i64 %35, i32 1
  br label %50

47:                                               ; preds = %38
  store i8* %33, i8** %42, align 8, !tbaa !124
  %48 = load i64, i64* %13, align 8, !tbaa !120
  %49 = add i64 %48, 1
  store i64 %49, i64* %13, align 8, !tbaa !120
  store i8* null, i8** %32, align 8, !tbaa !124
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi %struct.hash_entry** [ %14, %47 ], [ %46, %45 ]
  %52 = load %struct.hash_entry*, %struct.hash_entry** %51, align 8, !tbaa !12
  store %struct.hash_entry* %52, %struct.hash_entry** %40, align 8, !tbaa !126
  store %struct.hash_entry* %31, %struct.hash_entry** %51, align 8, !tbaa !12
  %53 = icmp eq %struct.hash_entry* %41, null
  br i1 %53, label %54, label %29, !llvm.loop !165

54:                                               ; preds = %50
  %55 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !123
  br label %56

56:                                               ; preds = %54, %23
  %57 = phi %struct.hash_entry* [ %55, %54 ], [ %17, %23 ]
  store %struct.hash_entry* null, %struct.hash_entry** %24, align 8, !tbaa !126
  br label %58

58:                                               ; preds = %56, %16
  %59 = phi %struct.hash_entry* [ %57, %56 ], [ %17, %16 ]
  %60 = phi %struct.hash_entry* [ %57, %56 ], [ %18, %16 ]
  %61 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i64 1
  %62 = icmp ult %struct.hash_entry* %61, %60
  br i1 %62, label %16, label %142, !llvm.loop !166

63:                                               ; preds = %9, %138
  %64 = phi %struct.hash_entry* [ %139, %138 ], [ %7, %9 ]
  %65 = phi %struct.hash_entry* [ %140, %138 ], [ %5, %9 ]
  %66 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %65, i64 0, i32 0
  %67 = load i8*, i8** %66, align 8, !tbaa !124
  %68 = icmp eq i8* %67, null
  br i1 %68, label %138, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %65, i64 0, i32 1
  %71 = load %struct.hash_entry*, %struct.hash_entry** %70, align 8, !tbaa !126
  %72 = icmp eq %struct.hash_entry* %71, null
  %73 = load i64, i64* %11, align 8, !tbaa !118
  br i1 %72, label %76, label %83

74:                                               ; preds = %105
  %75 = load i8*, i8** %66, align 8, !tbaa !124
  br label %76

76:                                               ; preds = %69, %74
  %77 = phi i64 [ %90, %74 ], [ %73, %69 ]
  %78 = phi i8* [ %75, %74 ], [ %67, %69 ]
  store %struct.hash_entry* null, %struct.hash_entry** %70, align 8, !tbaa !126
  %79 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8, !tbaa !133
  %80 = tail call i64 %79(i8* noundef %78, i64 noundef %77) #41
  %81 = load i64, i64* %11, align 8, !tbaa !118
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %110, label %109

83:                                               ; preds = %69, %105
  %84 = phi i64 [ %90, %105 ], [ %73, %69 ]
  %85 = phi %struct.hash_entry* [ %96, %105 ], [ %71, %69 ]
  %86 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %85, i64 0, i32 0
  %87 = load i8*, i8** %86, align 8, !tbaa !124
  %88 = load i64 (i8*, i64)*, i64 (i8*, i64)** %10, align 8, !tbaa !133
  %89 = tail call i64 %88(i8* noundef %87, i64 noundef %84) #41
  %90 = load i64, i64* %11, align 8, !tbaa !118
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %93, label %92

92:                                               ; preds = %83, %29
  tail call void @abort() #43
  unreachable

93:                                               ; preds = %83
  %94 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !122
  %95 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %85, i64 0, i32 1
  %96 = load %struct.hash_entry*, %struct.hash_entry** %95, align 8, !tbaa !126
  %97 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %94, i64 %89, i32 0
  %98 = load i8*, i8** %97, align 8, !tbaa !124
  %99 = icmp eq i8* %98, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %94, i64 %89, i32 1
  br label %105

102:                                              ; preds = %93
  store i8* %87, i8** %97, align 8, !tbaa !124
  %103 = load i64, i64* %13, align 8, !tbaa !120
  %104 = add i64 %103, 1
  store i64 %104, i64* %13, align 8, !tbaa !120
  store i8* null, i8** %86, align 8, !tbaa !124
  br label %105

105:                                              ; preds = %102, %100
  %106 = phi %struct.hash_entry** [ %14, %102 ], [ %101, %100 ]
  %107 = load %struct.hash_entry*, %struct.hash_entry** %106, align 8, !tbaa !12
  store %struct.hash_entry* %107, %struct.hash_entry** %95, align 8, !tbaa !126
  store %struct.hash_entry* %85, %struct.hash_entry** %106, align 8, !tbaa !12
  %108 = icmp eq %struct.hash_entry* %96, null
  br i1 %108, label %74, label %83, !llvm.loop !165

109:                                              ; preds = %76
  tail call void @abort() #43
  unreachable

110:                                              ; preds = %76
  %111 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !122
  %112 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %111, i64 %80, i32 0
  %113 = load i8*, i8** %112, align 8, !tbaa !124
  %114 = icmp eq i8* %113, null
  br i1 %114, label %131, label %115

115:                                              ; preds = %110
  %116 = load %struct.hash_entry*, %struct.hash_entry** %14, align 8, !tbaa !153
  %117 = icmp eq %struct.hash_entry* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %116, i64 0, i32 1
  %120 = load %struct.hash_entry*, %struct.hash_entry** %119, align 8, !tbaa !126
  store %struct.hash_entry* %120, %struct.hash_entry** %14, align 8, !tbaa !153
  br label %125

121:                                              ; preds = %115
  %122 = tail call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #41
  %123 = bitcast i8* %122 to %struct.hash_entry*
  %124 = icmp eq i8* %122, null
  br i1 %124, label %142, label %125

125:                                              ; preds = %118, %121
  %126 = phi %struct.hash_entry* [ %116, %118 ], [ %123, %121 ]
  %127 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %126, i64 0, i32 0
  store i8* %78, i8** %127, align 8, !tbaa !124
  %128 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %111, i64 %80, i32 1
  %129 = load %struct.hash_entry*, %struct.hash_entry** %128, align 8, !tbaa !126
  %130 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %126, i64 0, i32 1
  store %struct.hash_entry* %129, %struct.hash_entry** %130, align 8, !tbaa !126
  store %struct.hash_entry* %126, %struct.hash_entry** %128, align 8, !tbaa !126
  br label %134

131:                                              ; preds = %110
  store i8* %78, i8** %112, align 8, !tbaa !124
  %132 = load i64, i64* %13, align 8, !tbaa !120
  %133 = add i64 %132, 1
  store i64 %133, i64* %13, align 8, !tbaa !120
  br label %134

134:                                              ; preds = %125, %131
  store i8* null, i8** %66, align 8, !tbaa !124
  %135 = load i64, i64* %15, align 8, !tbaa !120
  %136 = add i64 %135, -1
  store i64 %136, i64* %15, align 8, !tbaa !120
  %137 = load %struct.hash_entry*, %struct.hash_entry** %6, align 8, !tbaa !123
  br label %138

138:                                              ; preds = %134, %63
  %139 = phi %struct.hash_entry* [ %137, %134 ], [ %64, %63 ]
  %140 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %65, i64 1
  %141 = icmp ult %struct.hash_entry* %140, %139
  br i1 %141, label %63, label %142, !llvm.loop !166

142:                                              ; preds = %138, %121, %58, %3
  %143 = phi i1 [ true, %3 ], [ true, %58 ], [ false, %121 ], [ true, %138 ]
  ret i1 %143
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hash_insert_if_absent(%struct.hash_table* nocapture noundef %0, i8* noundef %1, i8** noundef writeonly %2) local_unnamed_addr #13 {
  %4 = icmp eq i8* %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @abort() #43
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %8 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8, !tbaa !133
  %9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %10 = load i64, i64* %9, align 8, !tbaa !118
  %11 = tail call i64 %8(i8* noundef nonnull %1, i64 noundef %10) #41
  %12 = load i64, i64* %9, align 8, !tbaa !118
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  tail call void @abort() #43
  unreachable

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %17 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8, !tbaa !122
  %18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11
  %19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 0, i32 0
  %20 = load i8*, i8** %19, align 8, !tbaa !124
  %21 = icmp eq i8* %20, null
  br i1 %21, label %58, label %22

22:                                               ; preds = %15
  %23 = icmp eq i8* %20, %1
  br i1 %23, label %54, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %26 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8, !tbaa !134
  %27 = tail call i1 %26(i8* noundef nonnull %1, i8* noundef nonnull %20) #41
  br i1 %27, label %48, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i64 %11, i32 1
  %30 = load %struct.hash_entry*, %struct.hash_entry** %29, align 8, !tbaa !126
  %31 = icmp eq %struct.hash_entry* %30, null
  br i1 %31, label %58, label %32

32:                                               ; preds = %28, %44
  %33 = phi %struct.hash_entry* [ %46, %44 ], [ %30, %28 ]
  %34 = phi %struct.hash_entry** [ %45, %44 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0
  %36 = load i8*, i8** %35, align 8, !tbaa !124
  %37 = icmp eq i8* %36, %1
  br i1 %37, label %51, label %38

38:                                               ; preds = %32
  %39 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %25, align 8, !tbaa !134
  %40 = tail call i1 %39(i8* noundef nonnull %1, i8* noundef %36) #41
  %41 = load %struct.hash_entry*, %struct.hash_entry** %34, align 8, !tbaa !126
  br i1 %40, label %42, label %44

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 0
  br label %48

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i64 0, i32 1
  %46 = load %struct.hash_entry*, %struct.hash_entry** %45, align 8, !tbaa !126
  %47 = icmp eq %struct.hash_entry* %46, null
  br i1 %47, label %58, label %32, !llvm.loop !167

48:                                               ; preds = %24, %42
  %49 = phi i8** [ %43, %42 ], [ %19, %24 ]
  %50 = load i8*, i8** %49, align 8, !tbaa !124
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
  %60 = load i64, i64* %59, align 8, !tbaa !120
  %61 = uitofp i64 %60 to float
  %62 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5
  %63 = load %struct.hash_tuning*, %struct.hash_tuning** %62, align 8, !tbaa !145
  %64 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %63, i64 0, i32 2
  %65 = load float, float* %64, align 4, !tbaa !146
  %66 = load i64, i64* %9, align 8, !tbaa !118
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
  %78 = load float, float* %77, align 4, !tbaa !148
  %79 = fcmp ogt float %78, 0x3FF19999A0000000
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %63, i64 0, i32 0
  %82 = load float, float* %81, align 4, !tbaa !149
  %83 = fcmp ult float %82, 0.000000e+00
  br i1 %83, label %93, label %84

84:                                               ; preds = %80
  %85 = fadd float %82, 0x3FB99999A0000000
  %86 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %63, i64 0, i32 1
  %87 = load float, float* %86, align 4, !tbaa !150
  %88 = fcmp olt float %85, %87
  %89 = fcmp ole float %87, 1.000000e+00
  %90 = and i1 %88, %89
  %91 = fcmp olt float %85, %65
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %94, label %93

93:                                               ; preds = %84, %80, %76, %72
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %62, align 8, !tbaa !145
  br label %94

94:                                               ; preds = %70, %84, %93
  %95 = phi float [ %65, %70 ], [ %65, %84 ], [ 0x3FE99999A0000000, %93 ]
  %96 = phi %struct.hash_tuning* [ @default_tuning, %70 ], [ %63, %84 ], [ @default_tuning, %93 ]
  %97 = fmul float %95, %67
  %98 = fcmp olt float %97, %61
  br i1 %98, label %99, label %160

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %96, i64 0, i32 4
  %101 = load i8, i8* %100, align 4, !tbaa !151, !range !31
  %102 = icmp eq i8 %101, 0
  %103 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %96, i64 0, i32 3
  %104 = load float, float* %103, align 4, !tbaa !148
  %105 = fmul float %104, %67
  %106 = select i1 %102, float %95, float 1.000000e+00
  %107 = fmul float %105, %106
  %108 = fcmp ult float %107, 0x43F0000000000000
  br i1 %108, label %111, label %109

109:                                              ; preds = %99
  %110 = tail call i32* @__errno_location() #44
  store i32 12, i32* %110, align 4, !tbaa !22
  br label %190

111:                                              ; preds = %99
  %112 = fptoui float %107 to i64
  %113 = tail call i1 @hash_rehash(%struct.hash_table* noundef nonnull %0, i64 noundef %112)
  br i1 %113, label %114, label %190

114:                                              ; preds = %111
  %115 = load i64 (i8*, i64)*, i64 (i8*, i64)** %7, align 8, !tbaa !133
  %116 = load i64, i64* %9, align 8, !tbaa !118
  %117 = tail call i64 %115(i8* noundef nonnull %1, i64 noundef %116) #41
  %118 = load i64, i64* %9, align 8, !tbaa !118
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  tail call void @abort() #43
  unreachable

121:                                              ; preds = %114
  %122 = load %struct.hash_entry*, %struct.hash_entry** %16, align 8, !tbaa !122
  %123 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %122, i64 %117
  %124 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %123, i64 0, i32 0
  %125 = load i8*, i8** %124, align 8, !tbaa !124
  %126 = icmp eq i8* %125, null
  br i1 %126, label %160, label %127

127:                                              ; preds = %121
  %128 = icmp eq i8* %125, %1
  br i1 %128, label %156, label %129

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %131 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %130, align 8, !tbaa !134
  %132 = tail call i1 %131(i8* noundef nonnull %1, i8* noundef nonnull %125) #41
  br i1 %132, label %153, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %122, i64 %117, i32 1
  %135 = load %struct.hash_entry*, %struct.hash_entry** %134, align 8, !tbaa !126
  %136 = icmp eq %struct.hash_entry* %135, null
  br i1 %136, label %160, label %137

137:                                              ; preds = %133, %149
  %138 = phi %struct.hash_entry* [ %151, %149 ], [ %135, %133 ]
  %139 = phi %struct.hash_entry** [ %150, %149 ], [ %134, %133 ]
  %140 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %138, i64 0, i32 0
  %141 = load i8*, i8** %140, align 8, !tbaa !124
  %142 = icmp eq i8* %141, %1
  br i1 %142, label %156, label %143

143:                                              ; preds = %137
  %144 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %130, align 8, !tbaa !134
  %145 = tail call i1 %144(i8* noundef nonnull %1, i8* noundef %141) #41
  %146 = load %struct.hash_entry*, %struct.hash_entry** %139, align 8, !tbaa !126
  br i1 %145, label %147, label %149

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %146, i64 0, i32 0
  br label %153

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %146, i64 0, i32 1
  %151 = load %struct.hash_entry*, %struct.hash_entry** %150, align 8, !tbaa !126
  %152 = icmp eq %struct.hash_entry* %151, null
  br i1 %152, label %160, label %137, !llvm.loop !168

153:                                              ; preds = %129, %147
  %154 = phi i8** [ %148, %147 ], [ %124, %129 ]
  %155 = load i8*, i8** %154, align 8, !tbaa !124
  br label %156

156:                                              ; preds = %137, %153, %127
  %157 = phi i8* [ %1, %127 ], [ %155, %153 ], [ %1, %137 ]
  %158 = icmp eq i8* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  tail call void @abort() #43
  unreachable

160:                                              ; preds = %149, %133, %121, %156, %94, %58
  %161 = phi %struct.hash_entry* [ %123, %156 ], [ %18, %94 ], [ %18, %58 ], [ %123, %121 ], [ %123, %133 ], [ %123, %149 ]
  %162 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %161, i64 0, i32 0
  %163 = load i8*, i8** %162, align 8, !tbaa !124
  %164 = icmp eq i8* %163, null
  br i1 %164, label %185, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %167 = load %struct.hash_entry*, %struct.hash_entry** %166, align 8, !tbaa !153
  %168 = icmp eq %struct.hash_entry* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %167, i64 0, i32 1
  %171 = load %struct.hash_entry*, %struct.hash_entry** %170, align 8, !tbaa !126
  store %struct.hash_entry* %171, %struct.hash_entry** %166, align 8, !tbaa !153
  br label %176

172:                                              ; preds = %165
  %173 = tail call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #41
  %174 = bitcast i8* %173 to %struct.hash_entry*
  %175 = icmp eq i8* %173, null
  br i1 %175, label %190, label %176

176:                                              ; preds = %169, %172
  %177 = phi %struct.hash_entry* [ %167, %169 ], [ %174, %172 ]
  %178 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %177, i64 0, i32 0
  store i8* %1, i8** %178, align 8, !tbaa !124
  %179 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %161, i64 0, i32 1
  %180 = load %struct.hash_entry*, %struct.hash_entry** %179, align 8, !tbaa !126
  %181 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %177, i64 0, i32 1
  store %struct.hash_entry* %180, %struct.hash_entry** %181, align 8, !tbaa !126
  store %struct.hash_entry* %177, %struct.hash_entry** %179, align 8, !tbaa !126
  %182 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %183 = load i64, i64* %182, align 8, !tbaa !121
  %184 = add i64 %183, 1
  store i64 %184, i64* %182, align 8, !tbaa !121
  br label %190

185:                                              ; preds = %160
  store i8* %1, i8** %162, align 8, !tbaa !124
  %186 = bitcast i64* %59 to <2 x i64>*
  %187 = load <2 x i64>, <2 x i64>* %186, align 8, !tbaa !54
  %188 = add <2 x i64> %187, <i64 1, i64 1>
  %189 = bitcast i64* %59 to <2 x i64>*
  store <2 x i64> %188, <2 x i64>* %189, align 8, !tbaa !54
  br label %190

190:                                              ; preds = %111, %176, %172, %109, %54, %57, %185
  %191 = phi i32 [ 1, %185 ], [ 0, %57 ], [ 0, %54 ], [ -1, %109 ], [ 1, %176 ], [ -1, %172 ], [ -1, %111 ]
  ret i32 %191
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_insert(%struct.hash_table* nocapture noundef %0, i8* noundef %1) local_unnamed_addr #13 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #41
  %5 = call i32 @hash_insert_if_absent(%struct.hash_table* noundef %0, i8* noundef %1, i8** noundef nonnull %3)
  %6 = icmp eq i32 %5, -1
  %7 = icmp eq i32 %5, 0
  %8 = load i8*, i8** %3, align 8
  %9 = select i1 %7, i8* %8, i8* %1
  %10 = select i1 %6, i8* null, i8* %9
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #41
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_remove(%struct.hash_table* nocapture noundef %0, i8* noundef %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 6
  %4 = load i64 (i8*, i64)*, i64 (i8*, i64)** %3, align 8, !tbaa !133
  %5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 2
  %6 = load i64, i64* %5, align 8, !tbaa !118
  %7 = tail call i64 %4(i8* noundef %1, i64 noundef %6) #41
  %8 = load i64, i64* %5, align 8, !tbaa !118
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @abort() #43
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 0
  %13 = load %struct.hash_entry*, %struct.hash_entry** %12, align 8, !tbaa !122
  %14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7
  %15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8, !tbaa !124
  %17 = icmp eq i8* %16, null
  br i1 %17, label %145, label %18

18:                                               ; preds = %11
  %19 = icmp eq i8* %16, %1
  br i1 %19, label %30, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 7
  %22 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !tbaa !134
  %23 = tail call i1 %22(i8* noundef %1, i8* noundef nonnull %16) #41
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** %15, align 8, !tbaa !124
  br label %30

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1
  %28 = load %struct.hash_entry*, %struct.hash_entry** %27, align 8, !tbaa !126
  %29 = icmp eq %struct.hash_entry* %28, null
  br i1 %29, label %145, label %43

30:                                               ; preds = %24, %18
  %31 = phi i8* [ %25, %24 ], [ %1, %18 ]
  %32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i64 %7, i32 1
  %33 = load %struct.hash_entry*, %struct.hash_entry** %32, align 8, !tbaa !126
  %34 = icmp eq %struct.hash_entry* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = bitcast %struct.hash_entry* %14 to i8*
  %37 = bitcast %struct.hash_entry* %33 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %36, i8* noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false) #41, !tbaa.struct !169
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 0
  store i8* null, i8** %38, align 8, !tbaa !124
  %39 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %40 = load %struct.hash_entry*, %struct.hash_entry** %39, align 8, !tbaa !153
  %41 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %33, i64 0, i32 1
  store %struct.hash_entry* %40, %struct.hash_entry** %41, align 8, !tbaa !126
  store %struct.hash_entry* %33, %struct.hash_entry** %39, align 8, !tbaa !153
  br label %68

42:                                               ; preds = %30
  store i8* null, i8** %15, align 8, !tbaa !124
  br label %68

43:                                               ; preds = %26, %64
  %44 = phi %struct.hash_entry* [ %66, %64 ], [ %28, %26 ]
  %45 = phi %struct.hash_entry** [ %65, %64 ], [ %27, %26 ]
  %46 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %44, i64 0, i32 0
  %47 = load i8*, i8** %46, align 8, !tbaa !124
  %48 = icmp eq i8* %47, %1
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %21, align 8, !tbaa !134
  %51 = tail call i1 %50(i8* noundef %1, i8* noundef %47) #41
  %52 = load %struct.hash_entry*, %struct.hash_entry** %45, align 8, !tbaa !126
  br i1 %51, label %53, label %64

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %52, i64 0, i32 0
  %55 = load i8*, i8** %54, align 8, !tbaa !124
  br label %56

56:                                               ; preds = %43, %53
  %57 = phi i8* [ %55, %53 ], [ %1, %43 ]
  %58 = phi %struct.hash_entry* [ %52, %53 ], [ %44, %43 ]
  %59 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i64 0, i32 0
  %60 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i64 0, i32 1
  %61 = load %struct.hash_entry*, %struct.hash_entry** %60, align 8, !tbaa !126
  store %struct.hash_entry* %61, %struct.hash_entry** %45, align 8, !tbaa !126
  store i8* null, i8** %59, align 8, !tbaa !124
  %62 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %63 = load %struct.hash_entry*, %struct.hash_entry** %62, align 8, !tbaa !153
  store %struct.hash_entry* %63, %struct.hash_entry** %60, align 8, !tbaa !126
  store %struct.hash_entry* %58, %struct.hash_entry** %62, align 8, !tbaa !153
  br label %68

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %52, i64 0, i32 1
  %66 = load %struct.hash_entry*, %struct.hash_entry** %65, align 8, !tbaa !126
  %67 = icmp eq %struct.hash_entry* %66, null
  br i1 %67, label %145, label %43, !llvm.loop !170

68:                                               ; preds = %35, %42, %56
  %69 = phi i8* [ %31, %35 ], [ %31, %42 ], [ %57, %56 ]
  %70 = icmp eq i8* %69, null
  br i1 %70, label %145, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 4
  %73 = load i64, i64* %72, align 8, !tbaa !121
  %74 = add i64 %73, -1
  store i64 %74, i64* %72, align 8, !tbaa !121
  %75 = load i8*, i8** %15, align 8, !tbaa !124
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %145

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 3
  %79 = load i64, i64* %78, align 8, !tbaa !120
  %80 = add i64 %79, -1
  store i64 %80, i64* %78, align 8, !tbaa !120
  %81 = uitofp i64 %80 to float
  %82 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 5
  %83 = load %struct.hash_tuning*, %struct.hash_tuning** %82, align 8, !tbaa !145
  %84 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 0
  %85 = load float, float* %84, align 4, !tbaa !149
  %86 = load i64, i64* %5, align 8, !tbaa !118
  %87 = uitofp i64 %86 to float
  %88 = fmul float %85, %87
  %89 = fcmp ogt float %88, %81
  br i1 %89, label %90, label %145

90:                                               ; preds = %77
  %91 = icmp eq %struct.hash_tuning* %83, @default_tuning
  br i1 %91, label %114, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 2
  %94 = load float, float* %93, align 4, !tbaa !146
  %95 = fcmp ogt float %94, 0x3FB99999A0000000
  %96 = fcmp olt float %94, 0x3FECCCCCC0000000
  %97 = and i1 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 3
  %100 = load float, float* %99, align 4, !tbaa !148
  %101 = fcmp ule float %100, 0x3FF19999A0000000
  %102 = fcmp ult float %85, 0.000000e+00
  %103 = select i1 %101, i1 true, i1 %102
  br i1 %103, label %113, label %104

104:                                              ; preds = %98
  %105 = fadd float %85, 0x3FB99999A0000000
  %106 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %83, i64 0, i32 1
  %107 = load float, float* %106, align 4, !tbaa !150
  %108 = fcmp olt float %105, %107
  %109 = fcmp ole float %107, 1.000000e+00
  %110 = and i1 %108, %109
  %111 = fcmp olt float %105, %94
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %114, label %113

113:                                              ; preds = %104, %98, %92
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %82, align 8, !tbaa !145
  br label %114

114:                                              ; preds = %90, %104, %113
  %115 = phi float [ %85, %90 ], [ %85, %104 ], [ 0.000000e+00, %113 ]
  %116 = phi %struct.hash_tuning* [ @default_tuning, %90 ], [ %83, %104 ], [ @default_tuning, %113 ]
  %117 = fmul float %115, %87
  %118 = fcmp ogt float %117, %81
  br i1 %118, label %119, label %145

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %116, i64 0, i32 4
  %121 = load i8, i8* %120, align 4, !tbaa !151, !range !31
  %122 = icmp eq i8 %121, 0
  %123 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %116, i64 0, i32 1
  %124 = load float, float* %123, align 4, !tbaa !150
  %125 = fmul float %124, %87
  br i1 %122, label %126, label %130

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %116, i64 0, i32 2
  %128 = load float, float* %127, align 4, !tbaa !146
  %129 = fmul float %125, %128
  br label %130

130:                                              ; preds = %119, %126
  %131 = phi float [ %129, %126 ], [ %125, %119 ]
  %132 = fptoui float %131 to i64
  %133 = tail call i1 @hash_rehash(%struct.hash_table* noundef nonnull %0, i64 noundef %132)
  br i1 %133, label %145, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i64 0, i32 9
  %136 = load %struct.hash_entry*, %struct.hash_entry** %135, align 8, !tbaa !153
  %137 = icmp eq %struct.hash_entry* %136, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %134, %138
  %139 = phi %struct.hash_entry* [ %141, %138 ], [ %136, %134 ]
  %140 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %139, i64 0, i32 1
  %141 = load %struct.hash_entry*, %struct.hash_entry** %140, align 8, !tbaa !126
  %142 = bitcast %struct.hash_entry* %139 to i8*
  tail call void @free(i8* noundef %142) #41
  %143 = icmp eq %struct.hash_entry* %141, null
  br i1 %143, label %144, label %138, !llvm.loop !171

144:                                              ; preds = %138, %134
  store %struct.hash_entry* null, %struct.hash_entry** %135, align 8, !tbaa !153
  br label %145

145:                                              ; preds = %64, %26, %11, %71, %114, %77, %144, %130, %68
  %146 = phi i8* [ null, %68 ], [ %69, %130 ], [ %69, %144 ], [ %69, %77 ], [ %69, %114 ], [ %69, %71 ], [ null, %11 ], [ null, %26 ], [ null, %64 ]
  ret i8* %146
}

; Function Attrs: nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @i_ring_init(%struct.I_ring* nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #31 {
  %3 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  store i8 1, i8* %3, align 4, !tbaa !172
  %4 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 2
  %5 = bitcast i32* %4 to <2 x i32>*
  store <2 x i32> zeroinitializer, <2 x i32>* %5, align 4, !tbaa !22
  %6 = insertelement <4 x i32> poison, i32 %1, i64 0
  %7 = shufflevector <4 x i32> %6, <4 x i32> poison, <4 x i32> zeroinitializer
  %8 = bitcast %struct.I_ring* %0 to <4 x i32>*
  store <4 x i32> %7, <4 x i32>* %8, align 4, !tbaa !22
  %9 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 1
  store i32 %1, i32* %9, align 4, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i1 @i_ring_empty(%struct.I_ring* nocapture noundef readonly %0) local_unnamed_addr #24 {
  %2 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  %3 = load i8, i8* %2, align 4, !tbaa !172, !range !31
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @i_ring_push(%struct.I_ring* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #32 {
  %3 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 4, !tbaa !174
  %5 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  %6 = load i8, i8* %5, align 4, !tbaa !172, !range !31
  %7 = xor i8 %6, 1
  %8 = zext i8 %7 to i32
  %9 = add i32 %4, %8
  %10 = and i32 %9, 3
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !22
  store i32 %1, i32* %12, align 4, !tbaa !22
  store i32 %10, i32* %3, align 4, !tbaa !174
  %14 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 3
  %15 = load i32, i32* %14, align 4, !tbaa !175
  %16 = icmp eq i32 %10, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = add i32 %9, %8
  %19 = and i32 %18, 3
  store i32 %19, i32* %14, align 4, !tbaa !175
  br label %20

20:                                               ; preds = %17, %2
  store i8 0, i8* %5, align 4, !tbaa !172
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @i_ring_pop(%struct.I_ring* nocapture noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 4
  %3 = load i8, i8* %2, align 4, !tbaa !172, !range !31
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @abort() #43
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 2
  %8 = load i32, i32* %7, align 4, !tbaa !174
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 0, i64 %9
  %11 = load i32, i32* %10, align 4, !tbaa !22
  %12 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !173
  store i32 %13, i32* %10, align 4, !tbaa !22
  %14 = load i32, i32* %7, align 4, !tbaa !174
  %15 = getelementptr inbounds %struct.I_ring, %struct.I_ring* %0, i64 0, i32 3
  %16 = load i32, i32* %15, align 4, !tbaa !175
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i8 1, i8* %2, align 4, !tbaa !172
  br label %22

19:                                               ; preds = %6
  %20 = add i32 %14, 3
  %21 = and i32 %20, 3
  store i32 %21, i32* %7, align 4, !tbaa !174
  br label %22

22:                                               ; preds = %19, %18
  ret i32 %11
}

; Function Attrs: nofree norecurse nosync nounwind uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 noundef %0, i8* noundef writeonly %1) local_unnamed_addr #31 {
  %3 = getelementptr inbounds i8, i8* %1, i64 20
  store i8 0, i8* %3, align 1, !tbaa !16
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %8, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %13, %4 ]
  %7 = freeze i64 %5
  %8 = udiv i64 %7, 10
  %9 = mul i64 %8, 10
  %10 = sub i64 %7, %9
  %11 = trunc i64 %10 to i8
  %12 = or i8 %11, 48
  %13 = getelementptr inbounds i8, i8* %6, i64 -1
  store i8 %12, i8* %13, align 1, !tbaa !16
  %14 = icmp ult i64 %5, 10
  br i1 %14, label %15, label %4, !llvm.loop !176

15:                                               ; preds = %4
  ret i8* %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @next_prime(i64 noundef %0) local_unnamed_addr #30 {
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
  br i1 %23, label %24, label %7, !llvm.loop !177

24:                                               ; preds = %20, %14, %1
  %25 = phi i64 [ -1, %1 ], [ %8, %14 ], [ %21, %20 ]
  ret i64 %25
}

; Function Attrs: nounwind uwtable
define dso_local i32 @openat_safer(i32 noundef %0, i8* noundef %1, i32 noundef %2, ...) local_unnamed_addr #13 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = and i32 %2, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = bitcast %"struct.std::__va_list"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #41
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
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #41
  br label %28

28:                                               ; preds = %24, %3
  %29 = phi i32 [ %27, %24 ], [ 0, %3 ]
  %30 = call i32 (i32, i8*, i32, ...) @openat(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %29) #41
  %31 = call i32 @fd_safer(i32 noundef %30) #41
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.__dirstream* @opendirat(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32* nocapture noundef writeonly %3) local_unnamed_addr #13 {
  %5 = or i32 %2, 542976
  %6 = tail call i32 (i32, i8*, i32, ...) @openat_safer(i32 noundef %0, i8* noundef %1, i32 noundef %5) #41
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = tail call %struct.__dirstream* @fdopendir(i32 noundef %6) #41
  %10 = icmp eq %struct.__dirstream* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i32 %6, i32* %3, align 4, !tbaa !22
  br label %16

12:                                               ; preds = %8
  %13 = tail call i32* @__errno_location() #44
  %14 = load i32, i32* %13, align 4, !tbaa !22
  %15 = tail call i32 @close(i32 noundef %6) #41
  store i32 %14, i32* %13, align 4, !tbaa !22
  br label %16

16:                                               ; preds = %11, %12, %4
  %17 = phi %struct.__dirstream* [ null, %4 ], [ null, %12 ], [ %9, %11 ]
  ret %struct.__dirstream* %17
}

declare %struct.__dirstream* @fdopendir(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #33 {
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #42
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
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.153, i64 0, i64 0), i64 7) #41
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.154, i64 0, i64 0), i64 noundef 3) #42
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
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #13 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #41
  %6 = icmp eq i8* %5, %0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #41
  %10 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #41
  store i64 0, i64* %4, align 8
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #41
  %12 = icmp eq i64 %11, 2
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false
  %16 = select i1 %15, i8* %1, i8* %0
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #41
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #41
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ]
  ret i8* %18
}

; Function Attrs: nounwind
declare i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #13 {
  %2 = tail call i32* @__errno_location() #44
  %3 = load i32, i32* %2, align 4, !tbaa !22
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = bitcast %struct.quoting_options* %5 to i8*
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #48
  %8 = bitcast i8* %7 to %struct.quoting_options*
  store i32 %3, i32* %2, align 4, !tbaa !22
  ret %struct.quoting_options* %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #24 {
  %2 = icmp eq %struct.quoting_options* %0, null
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %5 = load i32, i32* %4, align 8, !tbaa !178
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #16 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %5, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #32 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = lshr i8 %1, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7
  %9 = and i8 %1, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4, !tbaa !22
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = and i32 %2, 1
  %15 = xor i32 %13, %14
  %16 = shl i32 %15, %10
  %17 = xor i32 %16, %11
  store i32 %17, i32* %8, align 4, !tbaa !22
  ret i32 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #32 {
  %3 = icmp eq %struct.quoting_options* %0, null
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 4, !tbaa !180
  store i32 %1, i32* %5, align 4, !tbaa !180
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #13 {
  %4 = icmp eq %struct.quoting_options* %0, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %6, align 8, !tbaa !178
  %7 = icmp ne i8* %1, null
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @abort() #43
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %12, align 8, !tbaa !181
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %13, align 8, !tbaa !182
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #13 {
  %6 = icmp eq %struct.quoting_options* %4, null
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4
  %8 = tail call i32* @__errno_location() #44
  %9 = load i32, i32* %8, align 4, !tbaa !22
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0
  %11 = load i32, i32* %10, align 8, !tbaa !178
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1
  %13 = load i32, i32* %12, align 4, !tbaa !180
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3
  %16 = load i8*, i8** %15, align 8, !tbaa !181
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4
  %18 = load i8*, i8** %17, align 8, !tbaa !182
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18)
  store i32 %9, i32* %8, align 4, !tbaa !22
  ret i64 %19
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #13 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  %17 = tail call i64 @__ctype_get_mb_cur_max() #41
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
  store i8 34, i8* %0, align 1, !tbaa !16
  br label %111

54:                                               ; preds = %36, %36
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.167, i64 0, i64 0), i32 noundef 5) #41
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.167, i64 0, i64 0)
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #41
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #41
  store i64 0, i64* %13, align 8
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #41
  %59 = icmp eq i64 %58, 3
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false
  %63 = icmp eq i32 %37, 9
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.169, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.170, i64 0, i64 0)
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #41
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #41
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ]
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.170, i64 0, i64 0), i32 noundef 5) #41
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.170, i64 0, i64 0)
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #41
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #41
  store i64 0, i64* %11, align 8
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #41
  %72 = icmp eq i64 %71, 3
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false
  %76 = icmp eq i32 %37, 9
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.169, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.170, i64 0, i64 0)
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #41
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #41
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  br i1 %45, label %97, label %82

82:                                               ; preds = %79
  %83 = load i8, i8* %80, align 1, !tbaa !16
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
  store i8 %86, i8* %91, align 1, !tbaa !16
  br label %92

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1
  %94 = getelementptr inbounds i8, i8* %87, i64 1
  %95 = load i8, i8* %94, align 1, !tbaa !16
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %85, !llvm.loop !183

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ]
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #42
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
  store i8 39, i8* %0, align 1, !tbaa !16
  br label %111

109:                                              ; preds = %36
  br label %111

110:                                              ; preds = %36
  call void @abort() #43
  unreachable

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ]
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.169, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.169, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.169, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.170, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.170, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.170, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.169, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.170, i64 0, i64 0), %102 ]
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
  %144 = load i8, i8* %143, align 1, !tbaa !16
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
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #42
  br label %154

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ]
  %156 = icmp ugt i64 %150, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #41
  %160 = icmp ne i32 %159, 0
  %161 = or i1 %160, %125
  %162 = xor i1 %160, true
  br i1 %161, label %163, label %647

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  %166 = getelementptr inbounds i8, i8* %2, i64 %139
  %167 = load i8, i8* %166, align 1, !tbaa !16
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
  store i8 39, i8* %175, align 1, !tbaa !16
  br label %176

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1
  %178 = icmp ult i64 %177, %140
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177
  store i8 36, i8* %180, align 1, !tbaa !16
  br label %181

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2
  %183 = icmp ult i64 %182, %140
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182
  store i8 39, i8* %185, align 1, !tbaa !16
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
  store i8 92, i8* %193, align 1, !tbaa !16
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
  %201 = load i8, i8* %200, align 1, !tbaa !16
  %202 = add i8 %201, -48
  %203 = icmp ult i8 %202, 10
  br i1 %203, label %204, label %456

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140
  br i1 %205, label %206, label %208

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195
  store i8 48, i8* %207, align 1, !tbaa !16
  br label %208

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2
  %210 = icmp ult i64 %209, %140
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209
  store i8 48, i8* %212, align 1, !tbaa !16
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
  %225 = load i8, i8* %224, align 1, !tbaa !16
  %226 = icmp eq i8 %225, 63
  br i1 %226, label %227, label %456

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220
  %229 = load i8, i8* %228, align 1, !tbaa !16
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
  store i8 63, i8* %234, align 1, !tbaa !16
  br label %235

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1
  %237 = icmp ult i64 %236, %140
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236
  store i8 34, i8* %239, align 1, !tbaa !16
  br label %240

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2
  %242 = icmp ult i64 %241, %140
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241
  store i8 34, i8* %244, align 1, !tbaa !16
  br label %245

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3
  %247 = icmp ult i64 %246, %140
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246
  store i8 63, i8* %249, align 1, !tbaa !16
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
  %267 = load i8, i8* %27, align 1, !tbaa !16
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
  store i8 39, i8* %285, align 1, !tbaa !16
  br label %286

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1
  %288 = icmp ult i64 %287, %282
  br i1 %288, label %289, label %291

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287
  store i8 92, i8* %290, align 1, !tbaa !16
  br label %291

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2
  %293 = icmp ult i64 %292, %282
  br i1 %293, label %294, label %296

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292
  store i8 39, i8* %295, align 1, !tbaa !16
  br label %296

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3
  br label %456

298:                                              ; preds = %163
  br i1 %18, label %299, label %307

299:                                              ; preds = %298
  %300 = tail call i16** @__ctype_b_loc() #44
  %301 = load i16*, i16** %300, align 8, !tbaa !12
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302
  %304 = load i16, i16* %303, align 2, !tbaa !24
  %305 = and i16 %304, 16384
  %306 = icmp ne i16 %305, 0
  br label %352

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #41
  store i64 0, i64* %14, align 8
  %308 = icmp eq i64 %164, -1
  br i1 %308, label %309, label %311

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #42
  br label %311

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #41
  %313 = sub i64 %312, %139
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #41
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ]

315:                                              ; preds = %311
  %316 = icmp ugt i64 %312, %139
  br i1 %316, label %319, label %317

317:                                              ; preds = %315
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #41
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #41
  br label %352

318:                                              ; preds = %311
  br label %346

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  %322 = getelementptr inbounds i8, i8* %2, i64 %320
  %323 = load i8, i8* %322, align 1, !tbaa !16
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %348, label %325

325:                                              ; preds = %319
  %326 = add i64 %321, 1
  %327 = add i64 %326, %139
  %328 = icmp eq i64 %326, %313
  br i1 %328, label %348, label %319, !llvm.loop !184

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false
  br i1 %331, label %332, label %340

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  %334 = add i64 %333, %139
  %335 = getelementptr inbounds i8, i8* %2, i64 %334
  %336 = load i8, i8* %335, align 1, !tbaa !16
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
  br i1 %339, label %340, label %332, !llvm.loop !185

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !tbaa !22
  %342 = call i32 @iswprint(i32 noundef %341) #41
  %343 = icmp ne i32 %342, 0
  br label %348

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #41
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #41
  %345 = select i1 %118, i32 4, i32 2
  br label %643

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #41
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #41
  br label %352

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #41
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #41
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
  store i8 39, i8* %376, align 1, !tbaa !16
  br label %377

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1
  %379 = icmp ult i64 %378, %140
  br i1 %379, label %380, label %382

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378
  store i8 36, i8* %381, align 1, !tbaa !16
  br label %382

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2
  %384 = icmp ult i64 %383, %140
  br i1 %384, label %385, label %387

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383
  store i8 39, i8* %386, align 1, !tbaa !16
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
  store i8 92, i8* %394, align 1, !tbaa !16
  br label %395

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1
  %397 = icmp ult i64 %396, %140
  br i1 %397, label %398, label %402

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6
  %400 = or i8 %399, 48
  %401 = getelementptr inbounds i8, i8* %0, i64 %396
  store i8 %400, i8* %401, align 1, !tbaa !16
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
  store i8 %408, i8* %409, align 1, !tbaa !16
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
  store i8 92, i8* %418, align 1, !tbaa !16
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
  store i8 39, i8* %436, align 1, !tbaa !16
  br label %437

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1
  %439 = icmp ult i64 %438, %140
  br i1 %439, label %440, label %442

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438
  store i8 39, i8* %441, align 1, !tbaa !16
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
  store i8 %426, i8* %449, align 1, !tbaa !16
  br label %450

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1
  %452 = getelementptr inbounds i8, i8* %2, i64 %427
  %453 = load i8, i8* %452, align 1, !tbaa !16
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
  %493 = load i32, i32* %492, align 4, !tbaa !22
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
  store i8 39, i8* %525, align 1, !tbaa !16
  br label %526

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1
  %528 = icmp ult i64 %527, %519
  br i1 %528, label %529, label %531

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527
  store i8 36, i8* %530, align 1, !tbaa !16
  br label %531

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2
  %533 = icmp ult i64 %532, %519
  br i1 %533, label %534, label %536

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532
  store i8 39, i8* %535, align 1, !tbaa !16
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
  store i8 92, i8* %543, align 1, !tbaa !16
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
  store i8 39, i8* %562, align 1, !tbaa !16
  br label %563

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1
  %565 = icmp ult i64 %564, %556
  br i1 %565, label %566, label %568

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564
  store i8 39, i8* %567, align 1, !tbaa !16
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
  store i8 %572, i8* %582, align 1, !tbaa !16
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
  br label %132, !llvm.loop !186

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
  %617 = load i8, i8* %116, align 1, !tbaa !16
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
  store i8 %620, i8* %625, align 1, !tbaa !16
  br label %626

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1
  %628 = getelementptr inbounds i8, i8* %621, i64 1
  %629 = load i8, i8* %628, align 1, !tbaa !16
  %630 = icmp eq i8 %629, 0
  br i1 %630, label %631, label %619, !llvm.loop !187

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ]
  %633 = icmp ult i64 %632, %140
  br i1 %633, label %634, label %653

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632
  store i8 0, i8* %635, align 1, !tbaa !16
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
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #13 {
  %4 = icmp eq %struct.quoting_options* %2, null
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2
  %6 = tail call i32* @__errno_location() #44
  %7 = load i32, i32* %6, align 4, !tbaa !22
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !180
  %10 = or i32 %9, 1
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  %12 = load i32, i32* %11, align 8, !tbaa !178
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  %15 = load i8*, i8** %14, align 8, !tbaa !181
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  %17 = load i8*, i8** %16, align 8, !tbaa !182
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #41
  %19 = add i64 %18, 1
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #46
  %21 = load i32, i32* %11, align 8, !tbaa !178
  %22 = load i8*, i8** %14, align 8, !tbaa !181
  %23 = load i8*, i8** %16, align 8, !tbaa !182
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #41
  store i32 %7, i32* %6, align 4, !tbaa !22
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #13 {
  %5 = icmp eq %struct.quoting_options* %3, null
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3
  %7 = tail call i32* @__errno_location() #44
  %8 = load i32, i32* %7, align 4, !tbaa !22
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1
  %10 = load i32, i32* %9, align 4, !tbaa !180
  %11 = icmp eq i64* %2, null
  %12 = zext i1 %11 to i32
  %13 = or i32 %10, %12
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  %15 = load i32, i32* %14, align 8, !tbaa !178
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  %18 = load i8*, i8** %17, align 8, !tbaa !181
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  %20 = load i8*, i8** %19, align 8, !tbaa !182
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20)
  %22 = add i64 %21, 1
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #46
  %24 = load i32, i32* %14, align 8, !tbaa !178
  %25 = load i8*, i8** %17, align 8, !tbaa !181
  %26 = load i8*, i8** %19, align 8, !tbaa !182
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26)
  store i32 %8, i32* %7, align 4, !tbaa !22
  br i1 %11, label %29, label %28

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !tbaa !54
  br label %29

29:                                               ; preds = %28, %4
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #13 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !tbaa !12
  %2 = load i32, i32* @nslots, align 4, !tbaa !22
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64
  br label %10

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1
  %8 = load i8*, i8** %7, align 8, !tbaa !188
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %9, label %17, label %16

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1
  %13 = load i8*, i8** %12, align 8, !tbaa !188
  tail call void @free(i8* noundef %13) #41
  %14 = add nuw nsw i64 %11, 1
  %15 = icmp eq i64 %14, %5
  br i1 %15, label %6, label %10, !llvm.loop !190

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #41
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !tbaa !191
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !tbaa !188
  br label %17

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*
  tail call void @free(i8* noundef %20) #41
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !tbaa !12
  br label %21

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !tbaa !22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #13 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options)
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #13 {
  %5 = alloca i64, align 8
  %6 = tail call i32* @__errno_location() #44
  %7 = load i32, i32* %6, align 4, !tbaa !22
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !tbaa !12
  %9 = icmp ugt i32 %0, 2147483646
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @abort() #43
  unreachable

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !tbaa !22
  %13 = icmp sgt i32 %12, %0
  br i1 %13, label %36, label %14

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0
  %16 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #41
  %17 = sext i32 %12 to i64
  store i64 %17, i64* %5, align 8, !tbaa !54
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8
  %19 = bitcast %struct.slotvec* %18 to i8*
  %20 = add nuw nsw i32 %0, 1
  %21 = sub i32 %20, %12
  %22 = sext i32 %21 to i64
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #41
  %24 = bitcast i8* %23 to %struct.slotvec*
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !tbaa !12
  br i1 %15, label %25, label %26

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !tbaa.struct !192
  br label %26

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !tbaa !22
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28
  %30 = bitcast %struct.slotvec* %29 to i8*
  %31 = load i64, i64* %5, align 8, !tbaa !54
  %32 = sub nsw i64 %31, %28
  %33 = shl i64 %32, 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #41
  %34 = load i64, i64* %5, align 8, !tbaa !54
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* @nslots, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #41
  br label %36

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ]
  %38 = zext i32 %0 to i64
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !191
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1
  %42 = load i8*, i8** %41, align 8, !tbaa !188
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1
  %44 = load i32, i32* %43, align 4, !tbaa !180
  %45 = or i32 %44, 1
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  %47 = load i32, i32* %46, align 8, !tbaa !178
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3
  %50 = load i8*, i8** %49, align 8, !tbaa !181
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4
  %52 = load i8*, i8** %51, align 8, !tbaa !182
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52)
  %54 = icmp ugt i64 %40, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %36
  %56 = add i64 %53, 1
  store i64 %56, i64* %39, align 8, !tbaa !191
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #41
  br label %59

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #46
  store i8* %60, i8** %41, align 8, !tbaa !188
  %61 = load i32, i32* %46, align 8, !tbaa !178
  %62 = load i8*, i8** %49, align 8, !tbaa !181
  %63 = load i8*, i8** %51, align 8, !tbaa !182
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63)
  br label %65

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ]
  store i32 %7, i32* %6, align 4, !tbaa !22
  ret i8* %66
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #13 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #13 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #41
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #13 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #41
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #13 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #41, !alias.scope !193
  %6 = icmp eq i32 %1, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #43, !noalias !193
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %9, align 8, !tbaa !178, !alias.scope !193
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #41
  ret i8* %10
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #13 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #41, !alias.scope !196
  %7 = icmp eq i32 %1, 10
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @abort() #43, !noalias !196
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 %1, i32* %10, align 8, !tbaa !178, !alias.scope !196
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #41
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #13 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199) #41
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #41, !alias.scope !199
  %5 = icmp eq i32 %0, 10
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @abort() #43, !noalias !199
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0
  store i32 %0, i32* %8, align 8, !tbaa !178, !alias.scope !199
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #41
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #41
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #13 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202) #41
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #41, !alias.scope !202
  %6 = icmp eq i32 %0, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #43, !noalias !202
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %0, i32* %9, align 8, !tbaa !178, !alias.scope !202
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #41
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #41
  ret i8* %10
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #13 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !tbaa.struct !205
  %6 = lshr i8 %2, 5
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7
  %9 = and i8 %2, 31
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %8, align 4, !tbaa !22
  %12 = lshr i32 %11, %10
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = shl i32 %14, %10
  %16 = xor i32 %15, %11
  store i32 %16, i32* %8, align 4, !tbaa !22
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #41
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #13 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #41, !tbaa.struct !205
  %5 = lshr i8 %1, 5
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6
  %8 = and i8 %1, 31
  %9 = zext i8 %8 to i32
  %10 = load i32, i32* %7, align 4, !tbaa !22
  %11 = lshr i32 %10, %9
  %12 = and i32 %11, 1
  %13 = xor i32 %12, 1
  %14 = shl i32 %13, %9
  %15 = xor i32 %14, %10
  store i32 %15, i32* %7, align 4, !tbaa !22
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #41
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #41
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #13 {
  %2 = alloca %struct.quoting_options, align 8
  %3 = bitcast %struct.quoting_options* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #41, !tbaa.struct !205
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1
  %5 = load i32, i32* %4, align 4, !tbaa !22
  %6 = or i32 %5, 67108864
  store i32 %6, i32* %4, align 4, !tbaa !22
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #41
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #41
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #13 {
  %3 = alloca %struct.quoting_options, align 8
  %4 = bitcast %struct.quoting_options* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #41, !tbaa.struct !205
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1
  %6 = load i32, i32* %5, align 4, !tbaa !22
  %7 = or i32 %6, 67108864
  store i32 %7, i32* %5, align 4, !tbaa !22
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #41
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #41
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #13 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #41
  %6 = icmp eq i32 %1, 10
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @abort() #43, !noalias !206
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 %1, i32* %9, align 8, !tbaa.struct !205
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1
  %11 = bitcast i32* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false)
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1
  %13 = load i32, i32* %12, align 4, !tbaa !22
  %14 = or i32 %13, 67108864
  store i32 %14, i32* %12, align 4, !tbaa !22
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #41
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #13 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #41, !tbaa.struct !205
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8, !tbaa !178
  %8 = icmp ne i8* %1, null
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @abort() #43
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %1, i8** %13, align 8, !tbaa !181
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %2, i8** %14, align 8, !tbaa !182
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #41
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #41
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #13 {
  %6 = alloca %struct.quoting_options, align 8
  %7 = bitcast %struct.quoting_options* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !tbaa.struct !205
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0
  store i32 10, i32* %8, align 8, !tbaa !178
  %9 = icmp ne i8* %1, null
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @abort() #43
  unreachable

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3
  store i8* %1, i8** %14, align 8, !tbaa !181
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4
  store i8* %2, i8** %15, align 8, !tbaa !182
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #41
  ret i8* %16
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #13 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = bitcast %struct.quoting_options* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #41, !tbaa.struct !205
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0
  store i32 10, i32* %6, align 8, !tbaa !178
  %7 = icmp ne i8* %0, null
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @abort() #43
  unreachable

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3
  store i8* %0, i8** %12, align 8, !tbaa !181
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4
  store i8* %1, i8** %13, align 8, !tbaa !182
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #41
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #41
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #13 {
  %5 = alloca %struct.quoting_options, align 8
  %6 = bitcast %struct.quoting_options* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #41, !tbaa.struct !205
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0
  store i32 10, i32* %7, align 8, !tbaa !178
  %8 = icmp ne i8* %0, null
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @abort() #43
  unreachable

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3
  store i8* %0, i8** %13, align 8, !tbaa !181
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4
  store i8* %1, i8** %14, align 8, !tbaa !182
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #41
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #41
  ret i8* %15
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #13 {
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options)
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #13 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #41
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #13 {
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #41
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #13 {
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #41
  ret i8* %2
}

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #18 {
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
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #41
  br label %15

13:                                               ; preds = %5
  %14 = tail call i32* @__errno_location() #44
  store i32 12, i32* %14, align 4, !tbaa !22
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ]
  ret i8* %16
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind uwtable
define dso_local %struct.dev_ino* @get_root_dev_ino(%struct.dev_ino* noundef nonnull writeonly %0) local_unnamed_addr #23 {
  %2 = alloca %struct.stat, align 16
  %3 = bitcast %struct.stat* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #41
  %4 = call i32 @lstat(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.185, i64 0, i64 0), %struct.stat* noundef nonnull %2) #41
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = bitcast %struct.stat* %2 to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 16, !tbaa !54
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %10 = bitcast %struct.dev_ino* %0 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %10, align 8, !tbaa !54
  br label %11

11:                                               ; preds = %1, %6
  %12 = phi %struct.dev_ino* [ %0, %6 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #41
  ret %struct.dev_ino* %12
}

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #13 {
  %2 = icmp ult i32 %0, 3
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #41
  %5 = tail call i32* @__errno_location() #44
  %6 = load i32, i32* %5, align 4, !tbaa !22
  %7 = tail call i32 @close(i32 noundef %0) #41
  store i32 %6, i32* %5, align 4, !tbaa !22
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local i8* @parse_user_spec_warn(i8* noundef %0, i32* nocapture noundef %1, i32* noundef %2, i8** noundef %3, i8** noundef %4, i8* noundef writeonly %5) local_unnamed_addr #13 {
  %7 = icmp eq i32* %2, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call fastcc i8* @parse_with_separator(i8* noundef %0, i8* noundef null, i32* noundef %1, i32* noundef null, i8** noundef %3, i8** noundef %4)
  br label %25

10:                                               ; preds = %6
  %11 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 58) #42
  %12 = tail call fastcc i8* @parse_with_separator(i8* noundef %0, i8* noundef %11, i32* noundef %1, i32* noundef nonnull %2, i8** noundef %3, i8** noundef %4)
  %13 = icmp eq i8* %11, null
  %14 = icmp ne i8* %12, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 46) #42
  %18 = icmp eq i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = tail call fastcc i8* @parse_with_separator(i8* noundef %0, i8* noundef nonnull %17, i32* noundef %1, i32* noundef nonnull %2, i8** noundef %3, i8** noundef %4)
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = icmp eq i8* %5, null
  %24 = select i1 %23, i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.190, i64 0, i64 0)
  br label %25

25:                                               ; preds = %8, %16, %19, %22, %10
  %26 = phi i1 [ false, %10 ], [ false, %19 ], [ true, %22 ], [ false, %16 ], [ false, %8 ]
  %27 = phi i8* [ %12, %10 ], [ %12, %19 ], [ %24, %22 ], [ %12, %16 ], [ %9, %8 ]
  %28 = icmp eq i8* %5, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = zext i1 %26 to i8
  store i8 %30, i8* %5, align 1, !tbaa !29
  br label %31

31:                                               ; preds = %29, %25
  ret i8* %27
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @parse_with_separator(i8* noundef %0, i8* noundef %1, i32* nocapture noundef %2, i32* noundef %3, i8** noundef writeonly %4, i8** noundef writeonly %5) unnamed_addr #13 {
  %7 = alloca i64, align 8
  %8 = alloca [21 x i8], align 1
  %9 = alloca i64, align 8
  %10 = icmp eq i8** %4, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  store i8* null, i8** %4, align 8, !tbaa !12
  br label %12

12:                                               ; preds = %11, %6
  %13 = icmp eq i8** %5, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  store i8* null, i8** %5, align 8, !tbaa !12
  br label %15

15:                                               ; preds = %14, %12
  %16 = icmp eq i8* %1, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = load i8, i8* %0, align 1, !tbaa !16
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %17
  %21 = tail call noalias nonnull i8* @xstrdup(i8* noundef nonnull %0) #41
  br label %37

22:                                               ; preds = %15
  %23 = ptrtoint i8* %1 to i64
  %24 = ptrtoint i8* %0 to i64
  %25 = sub i64 %23, %24
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = add nsw i64 %25, 1
  %29 = tail call noalias nonnull i8* @ximemdup(i8* noundef %0, i64 noundef %28) #48
  %30 = getelementptr inbounds i8, i8* %29, i64 %25
  store i8 0, i8* %30, align 1, !tbaa !16
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i8* [ %29, %27 ], [ null, %22 ]
  %33 = getelementptr inbounds i8, i8* %1, i64 1
  %34 = load i8, i8* %33, align 1, !tbaa !16
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i8* null, i8* %33
  br label %37

37:                                               ; preds = %20, %17, %31
  %38 = phi i8* [ %32, %31 ], [ null, %17 ], [ %21, %20 ]
  %39 = phi i8* [ %36, %31 ], [ null, %17 ], [ null, %20 ]
  %40 = load i32, i32* %2, align 4, !tbaa !22
  %41 = icmp eq i32* %3, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4, !tbaa !22
  br label %44

44:                                               ; preds = %37, %42
  %45 = phi i32 [ %43, %42 ], [ -1, %37 ]
  %46 = icmp eq i8* %38, null
  br i1 %46, label %96, label %47

47:                                               ; preds = %44
  %48 = load i8, i8* %38, align 1, !tbaa !16
  %49 = icmp eq i8 %48, 43
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = tail call %struct.passwd* @getpwnam(i8* noundef nonnull %38)
  %52 = icmp eq %struct.passwd* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %47, %50
  %54 = icmp ne i8* %1, null
  %55 = icmp eq i8* %39, null
  %56 = and i1 %54, %55
  br i1 %56, label %90, label %57

57:                                               ; preds = %53
  %58 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #41
  %59 = call i32 @xstrtoul(i8* noundef nonnull %38, i8** noundef null, i32 noundef 10, i64* noundef nonnull %7, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.191, i64 0, i64 0)) #41
  %60 = icmp eq i32 %59, 0
  %61 = load i64, i64* %7, align 8
  %62 = icmp ult i64 %61, 4294967296
  %63 = select i1 %60, i1 %62, i1 false
  %64 = trunc i64 %61 to i32
  %65 = icmp ne i32 %64, -1
  %66 = select i1 %63, i1 %65, i1 false
  %67 = select i1 %66, i32 %64, i32 %40
  %68 = select i1 %66, i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.192, i64 0, i64 0)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #41
  br label %90

69:                                               ; preds = %50
  %70 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 2
  %71 = load i32, i32* %70, align 8, !tbaa !209
  %72 = icmp eq i8* %39, null
  %73 = icmp ne i8* %1, null
  %74 = and i1 %73, %72
  br i1 %74, label %75, label %90

75:                                               ; preds = %69
  %76 = getelementptr inbounds [21 x i8], [21 x i8]* %8, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %76) #41
  %77 = getelementptr inbounds %struct.passwd, %struct.passwd* %51, i64 0, i32 3
  %78 = load i32, i32* %77, align 4, !tbaa !210
  %79 = tail call %struct.group* @getgrgid(i32 noundef %78) #41
  %80 = icmp eq %struct.group* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.group, %struct.group* %79, i64 0, i32 0
  %83 = load i8*, i8** %82, align 8, !tbaa !45
  br label %87

84:                                               ; preds = %75
  %85 = zext i32 %78 to i64
  %86 = call i8* @umaxtostr(i64 noundef %85, i8* noundef nonnull %76) #41
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i8* [ %83, %81 ], [ %86, %84 ]
  %89 = call noalias nonnull i8* @xstrdup(i8* noundef %88) #41
  call void @endgrent() #41
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %76) #41
  br label %90

90:                                               ; preds = %57, %53, %69, %87
  %91 = phi i8* [ %89, %87 ], [ null, %69 ], [ null, %53 ], [ null, %57 ]
  %92 = phi i32 [ %71, %87 ], [ %71, %69 ], [ %40, %53 ], [ %67, %57 ]
  %93 = phi i32 [ %78, %87 ], [ %45, %69 ], [ %45, %53 ], [ %45, %57 ]
  %94 = phi i8* [ null, %87 ], [ null, %69 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.193, i64 0, i64 0), %53 ], [ %68, %57 ]
  %95 = phi i8** [ %4, %87 ], [ %4, %69 ], [ null, %53 ], [ null, %57 ]
  call void @endpwent() #41
  br label %96

96:                                               ; preds = %90, %44
  %97 = phi i8* [ %91, %90 ], [ null, %44 ]
  %98 = phi i32 [ %92, %90 ], [ %40, %44 ]
  %99 = phi i32 [ %93, %90 ], [ %45, %44 ]
  %100 = phi i8* [ %94, %90 ], [ null, %44 ]
  %101 = phi i8** [ %95, %90 ], [ %4, %44 ]
  %102 = icmp ne i8* %39, null
  %103 = icmp eq i8* %100, null
  %104 = and i1 %102, %103
  br i1 %104, label %105, label %131

105:                                              ; preds = %96
  %106 = load i8, i8* %39, align 1, !tbaa !16
  %107 = icmp eq i8 %106, 43
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = call %struct.group* @getgrnam(i8* noundef nonnull %39) #41
  %110 = icmp eq %struct.group* %109, null
  br i1 %110, label %111, label %123

111:                                              ; preds = %105, %108
  %112 = bitcast i64* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %112) #41
  %113 = call i32 @xstrtoul(i8* noundef nonnull %39, i8** noundef null, i32 noundef 10, i64* noundef nonnull %9, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.191, i64 0, i64 0)) #41
  %114 = icmp eq i32 %113, 0
  %115 = load i64, i64* %9, align 8
  %116 = icmp ult i64 %115, 4294967296
  %117 = select i1 %114, i1 %116, i1 false
  %118 = trunc i64 %115 to i32
  %119 = icmp ne i32 %118, -1
  %120 = select i1 %117, i1 %119, i1 false
  %121 = select i1 %120, i32 %118, i32 %99
  %122 = select i1 %120, i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4.194, i64 0, i64 0)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %112) #41
  br label %126

123:                                              ; preds = %108
  %124 = getelementptr inbounds %struct.group, %struct.group* %109, i64 0, i32 2
  %125 = load i32, i32* %124, align 8, !tbaa !211
  br label %126

126:                                              ; preds = %123, %111
  %127 = phi i32 [ %121, %111 ], [ %125, %123 ]
  %128 = phi i8* [ %122, %111 ], [ null, %123 ]
  %129 = phi i8** [ null, %111 ], [ %5, %123 ]
  call void @endgrent() #41
  %130 = call noalias nonnull i8* @xstrdup(i8* noundef nonnull %39) #41
  br label %131

131:                                              ; preds = %126, %96
  %132 = phi i8* [ %130, %126 ], [ %97, %96 ]
  %133 = phi i32 [ %127, %126 ], [ %99, %96 ]
  %134 = phi i8* [ %128, %126 ], [ %100, %96 ]
  %135 = phi i8** [ %129, %126 ], [ %5, %96 ]
  %136 = icmp eq i8* %134, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %131
  store i32 %98, i32* %2, align 4, !tbaa !22
  br i1 %41, label %139, label %138

138:                                              ; preds = %137
  store i32 %133, i32* %3, align 4, !tbaa !22
  br label %139

139:                                              ; preds = %138, %137
  %140 = icmp eq i8** %101, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %139
  store i8* %38, i8** %101, align 8, !tbaa !12
  br label %142

142:                                              ; preds = %141, %139
  %143 = phi i8* [ null, %141 ], [ %38, %139 ]
  %144 = icmp eq i8** %135, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  store i8* %132, i8** %135, align 8, !tbaa !12
  br label %146

146:                                              ; preds = %142, %145
  %147 = phi i8* [ null, %145 ], [ %132, %142 ]
  call void @free(i8* noundef %143) #41
  call void @free(i8* noundef %147) #41
  br label %150

148:                                              ; preds = %131
  call void @free(i8* noundef %38) #41
  call void @free(i8* noundef %132) #41
  %149 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.195, i64 0, i64 0), i8* noundef nonnull %134, i32 noundef 5) #41
  br label %150

150:                                              ; preds = %146, %148
  %151 = phi i8* [ %149, %148 ], [ null, %146 ]
  ret i8* %151
}

; Function Attrs: nofree nounwind
declare noundef %struct.passwd* @getpwnam(i8* nocapture noundef readonly) local_unnamed_addr #4

declare void @endgrent() local_unnamed_addr #3

declare void @endpwent() local_unnamed_addr #3

declare %struct.group* @getgrnam(i8* noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i8* @parse_user_spec(i8* noundef %0, i32* nocapture noundef %1, i32* noundef %2, i8** noundef %3, i8** noundef %4) local_unnamed_addr #13 {
  %6 = tail call i8* @parse_user_spec_warn(i8* noundef %0, i32* noundef %1, i32* noundef %2, i8** noundef %3, i8** noundef %4, i8* noundef null)
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #13 {
  %7 = icmp eq i8* %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.196, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #41
  br label %12

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.197, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #41
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.199, i64 0, i64 0), i32 noundef 5) #41
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #41
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.200, i64 0, i64 0), %struct._IO_FILE* noundef %0)
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.201, i64 0, i64 0), i32 noundef 5) #41
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.202, i64 0, i64 0)) #41
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.200, i64 0, i64 0), %struct._IO_FILE* noundef %0)
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
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.203, i64 0, i64 0), i32 noundef 5) #41
  %21 = load i8*, i8** %4, align 8, !tbaa !12
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #41
  br label %147

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.204, i64 0, i64 0), i32 noundef 5) #41
  %25 = load i8*, i8** %4, align 8, !tbaa !12
  %26 = getelementptr inbounds i8*, i8** %4, i64 1
  %27 = load i8*, i8** %26, align 8, !tbaa !12
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #41
  br label %147

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.205, i64 0, i64 0), i32 noundef 5) #41
  %31 = load i8*, i8** %4, align 8, !tbaa !12
  %32 = getelementptr inbounds i8*, i8** %4, i64 1
  %33 = load i8*, i8** %32, align 8, !tbaa !12
  %34 = getelementptr inbounds i8*, i8** %4, i64 2
  %35 = load i8*, i8** %34, align 8, !tbaa !12
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #41
  br label %147

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.206, i64 0, i64 0), i32 noundef 5) #41
  %39 = load i8*, i8** %4, align 8, !tbaa !12
  %40 = getelementptr inbounds i8*, i8** %4, i64 1
  %41 = load i8*, i8** %40, align 8, !tbaa !12
  %42 = getelementptr inbounds i8*, i8** %4, i64 2
  %43 = load i8*, i8** %42, align 8, !tbaa !12
  %44 = getelementptr inbounds i8*, i8** %4, i64 3
  %45 = load i8*, i8** %44, align 8, !tbaa !12
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #41
  br label %147

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.207, i64 0, i64 0), i32 noundef 5) #41
  %49 = load i8*, i8** %4, align 8, !tbaa !12
  %50 = getelementptr inbounds i8*, i8** %4, i64 1
  %51 = load i8*, i8** %50, align 8, !tbaa !12
  %52 = getelementptr inbounds i8*, i8** %4, i64 2
  %53 = load i8*, i8** %52, align 8, !tbaa !12
  %54 = getelementptr inbounds i8*, i8** %4, i64 3
  %55 = load i8*, i8** %54, align 8, !tbaa !12
  %56 = getelementptr inbounds i8*, i8** %4, i64 4
  %57 = load i8*, i8** %56, align 8, !tbaa !12
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #41
  br label %147

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.208, i64 0, i64 0), i32 noundef 5) #41
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
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #41
  br label %147

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.209, i64 0, i64 0), i32 noundef 5) #41
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
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #41
  br label %147

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.210, i64 0, i64 0), i32 noundef 5) #41
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
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #41
  br label %147

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.211, i64 0, i64 0), i32 noundef 5) #41
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
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #41
  br label %147

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.212, i64 0, i64 0), i32 noundef 5) #41
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
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #41
  br label %147

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #13 {
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ]
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7
  %9 = load i8*, i8** %8, align 8, !tbaa !12
  %10 = icmp eq i8* %9, null
  %11 = add i64 %7, 1
  br i1 %10, label %12, label %6, !llvm.loop !212

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #13 {
  %6 = alloca [10 x i8*], align 8
  %7 = bitcast [10 x i8*]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #41
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
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #13 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #41
  call void @llvm.va_start(i8* nonnull %7)
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #41
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !59
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #41
  call void @llvm.va_end(i8* nonnull %7)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #13 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.200, i64 0, i64 0), %struct._IO_FILE* noundef %1)
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.217, i64 0, i64 0), i32 noundef 5) #41
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.218, i64 0, i64 0)) #41
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.219, i64 0, i64 0), i32 noundef 5) #41
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.220, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.221, i64 0, i64 0)) #41
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.198, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.222, i64 0, i64 0), i32 noundef 5) #41
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.223, i64 0, i64 0)) #41
  ret void
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #41
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #43
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #41
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #43
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #36 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #41
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #43
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #36 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #41
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #43
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #36 {
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #41
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #43
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #37 {
  %3 = icmp eq i64 %1, 0
  %4 = select i1 %3, i64 1, i64 %1
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #41
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @xalloc_die() #43
  unreachable

8:                                                ; preds = %2
  ret i8* %5
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #37 {
  %3 = icmp eq i64 %1, 0
  %4 = select i1 %3, i64 1, i64 %1
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #41
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @xalloc_die() #43
  unreachable

8:                                                ; preds = %2
  ret i8* %5
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 {
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #41
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @xalloc_die() #43
  unreachable

7:                                                ; preds = %3
  ret i8* %4
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 {
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #41
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #43
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 {
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #41
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #43
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #13 {
  %3 = load i64, i64* %1, align 8, !tbaa !54
  %4 = icmp eq i8* %0, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0
  %7 = select i1 %6, i64 128, i64 %3
  br label %15

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1
  %10 = add nuw i64 %9, 1
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #41
  %12 = extractvalue { i64, i1 } %11, 1
  %13 = extractvalue { i64, i1 } %11, 0
  br i1 %12, label %14, label %15

14:                                               ; preds = %8
  tail call void @xalloc_die() #43
  unreachable

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ]
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #41
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @xalloc_die() #43
  unreachable

20:                                               ; preds = %15
  store i64 %16, i64* %1, align 8, !tbaa !54
  ret i8* %17
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #13 {
  %4 = load i64, i64* %1, align 8, !tbaa !54
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
  tail call void @xalloc_die() #43
  unreachable

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ]
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #41
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @xalloc_die() #43
  unreachable

25:                                               ; preds = %20
  store i64 %21, i64* %1, align 8, !tbaa !54
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #13 {
  %6 = load i64, i64* %1, align 8, !tbaa !54
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
  store i64 0, i64* %1, align 8, !tbaa !54
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
  tail call void @xalloc_die() #43
  unreachable

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ]
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ]
  %100 = icmp eq i64 %99, 0
  %101 = select i1 %100, i64 1, i64 %99
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #41
  %103 = icmp eq i8* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  tail call void @xalloc_die() #43
  unreachable

105:                                              ; preds = %97
  store i64 %98, i64* %1, align 8, !tbaa !54
  ret i8* %102
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #36 {
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #41
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #43
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 {
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #41
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #43
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #36 {
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #41
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @xalloc_die() #43
  unreachable

5:                                                ; preds = %1
  ret i8* %2
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #38 {
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #41
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #43
  unreachable

6:                                                ; preds = %2
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #37 {
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #41
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #43
  unreachable

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41
  ret i8* %3
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #37 {
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #41
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @xalloc_die() #43
  unreachable

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41
  ret i8* %3
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #13 {
  %3 = add nsw i64 %1, 1
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #41
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @xalloc_die() #43
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, i8* %4, i64 %1
  store i8 0, i8* %8, align 1, !tbaa !16
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #41
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #42
  %3 = add i64 %2, 1
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #41
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @xalloc_die() #43
  unreachable

7:                                                ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #41
  ret i8* %4
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !tbaa !22
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.240, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.241, i64 0, i64 0), i32 noundef 5) #41
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.242, i64 0, i64 0), i8* noundef %2) #41
  %3 = icmp eq i32 %1, 0
  tail call void @llvm.assume(i1 %3)
  tail call void @abort() #43
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.FTS* @xfts_open(i8** noundef nonnull %0, i32 noundef %1, i32 (%struct._ftsent**, %struct._ftsent**)* noundef %2) local_unnamed_addr #13 {
  %4 = or i32 %1, 512
  %5 = tail call %struct.FTS* @rpl_fts_open(i8** noundef nonnull %0, i32 noundef %4, i32 (%struct._ftsent**, %struct._ftsent**)* noundef %2) #41
  %6 = icmp eq %struct.FTS* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = tail call i32* @__errno_location() #44
  %9 = load i32, i32* %8, align 4, !tbaa !22
  %10 = icmp eq i32 %9, 22
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.245, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.246, i64 0, i64 0), i32 noundef 40, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xfts_open, i64 0, i64 0)) #43
  unreachable

12:                                               ; preds = %7
  tail call void @xalloc_die() #43
  unreachable

13:                                               ; preds = %3
  ret %struct.FTS* %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i1 @cycle_warning_required(%struct.FTS* nocapture noundef nonnull readonly %0, %struct._ftsent* nocapture noundef nonnull readonly %1) local_unnamed_addr #24 {
  %3 = getelementptr inbounds %struct.FTS, %struct.FTS* %0, i64 0, i32 10
  %4 = load i32, i32* %3, align 8, !tbaa !69
  %5 = and i32 %4, 17
  switch i32 %5, label %10 [
    i32 16, label %11
    i32 17, label %6
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._ftsent, %struct._ftsent* %1, i64 0, i32 12
  %8 = load i64, i64* %7, align 8, !tbaa !54
  %9 = icmp ne i64 %8, 0
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %2, %10, %6
  %12 = phi i1 [ %9, %6 ], [ true, %2 ], [ false, %10 ]
  ret i1 %12
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @xstrtoul(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* nocapture noundef writeonly %3, i8* noundef readonly %4) local_unnamed_addr #23 {
  %6 = alloca i8*, align 8
  %7 = bitcast i8** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #41
  %8 = icmp eq i8** %1, null
  %9 = tail call i16** @__ctype_b_loc() #44
  %10 = load i16*, i16** %9, align 8, !tbaa !12
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i8* [ %0, %5 ], [ %19, %11 ]
  %13 = load i8, i8* %12, align 1, !tbaa !16
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i16, i16* %10, i64 %14
  %16 = load i16, i16* %15, align 2, !tbaa !24
  %17 = and i16 %16, 8192
  %18 = icmp eq i16 %17, 0
  %19 = getelementptr inbounds i8, i8* %12, i64 1
  br i1 %18, label %20, label %11, !llvm.loop !213

20:                                               ; preds = %11
  %21 = select i1 %8, i8** %6, i8** %1
  %22 = icmp eq i8 %13, 45
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i8* %0, i8** %21, align 8, !tbaa !12
  br label %387

24:                                               ; preds = %20
  %25 = tail call i32* @__errno_location() #44
  store i32 0, i32* %25, align 4, !tbaa !22
  %26 = call i64 @strtoul(i8* noundef %0, i8** noundef %21, i32 noundef %2) #41
  %27 = load i8*, i8** %21, align 8, !tbaa !12
  %28 = icmp eq i8* %27, %0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = icmp eq i8* %4, null
  br i1 %30, label %387, label %31

31:                                               ; preds = %29
  %32 = load i8, i8* %0, align 1, !tbaa !16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %387, label %34

34:                                               ; preds = %31
  %35 = zext i8 %32 to i32
  %36 = tail call i8* @strchr(i8* noundef nonnull %4, i32 noundef %35) #42
  %37 = icmp eq i8* %36, null
  br i1 %37, label %387, label %45

38:                                               ; preds = %24
  %39 = load i32, i32* %25, align 4, !tbaa !22
  switch i32 %39, label %387 [
    i32 0, label %41
    i32 34, label %40
  ]

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %38, %40
  %42 = phi i32 [ 1, %40 ], [ %39, %38 ]
  %43 = icmp eq i8* %4, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i64 %26, i64* %3, align 8, !tbaa !54
  br label %387

45:                                               ; preds = %34, %41
  %46 = phi i32 [ %42, %41 ], [ 0, %34 ]
  %47 = phi i64 [ %26, %41 ], [ 1, %34 ]
  %48 = load i8, i8* %27, align 1, !tbaa !16
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %384, label %50

50:                                               ; preds = %45
  %51 = zext i8 %48 to i32
  %52 = tail call i8* @strchr(i8* noundef nonnull %4, i32 noundef %51) #42
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  store i64 %47, i64* %3, align 8, !tbaa !54
  %55 = or i32 %46, 2
  br label %387

56:                                               ; preds = %50
  switch i8 %48, label %69 [
    i8 69, label %57
    i8 71, label %57
    i8 103, label %57
    i8 107, label %57
    i8 75, label %57
    i8 77, label %57
    i8 109, label %57
    i8 80, label %57
    i8 81, label %57
    i8 82, label %57
    i8 84, label %57
    i8 116, label %57
    i8 89, label %57
    i8 90, label %57
  ]

57:                                               ; preds = %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56
  %58 = tail call i8* @strchr(i8* noundef nonnull %4, i32 noundef 48) #42
  %59 = icmp eq i8* %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, i8* %27, i64 1
  %62 = load i8, i8* %61, align 1, !tbaa !16
  switch i8 %62, label %69 [
    i8 105, label %63
    i8 66, label %68
    i8 68, label %68
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, i8* %27, i64 2
  %65 = load i8, i8* %64, align 1, !tbaa !16
  %66 = icmp eq i8 %65, 66
  %67 = select i1 %66, i64 3, i64 1
  br label %69

68:                                               ; preds = %60, %60
  br label %69

69:                                               ; preds = %63, %57, %60, %68, %56
  %70 = phi i64 [ 1024, %56 ], [ 1024, %60 ], [ 1000, %68 ], [ 1024, %57 ], [ 1024, %63 ]
  %71 = phi i64 [ 1, %56 ], [ 1, %60 ], [ 2, %68 ], [ 1, %57 ], [ %67, %63 ]
  switch i8 %48, label %382 [
    i8 98, label %303
    i8 66, label %308
    i8 99, label %373
    i8 69, label %272
    i8 71, label %313
    i8 103, label %313
    i8 107, label %329
    i8 75, label %329
    i8 77, label %335
    i8 109, label %335
    i8 80, label %246
    i8 81, label %195
    i8 82, label %149
    i8 84, label %346
    i8 116, label %346
    i8 119, label %367
    i8 89, label %108
    i8 90, label %72
  ]

72:                                               ; preds = %69
  %73 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #41
  %74 = extractvalue { i64, i1 } %73, 1
  %75 = mul i64 %47, %70
  %76 = select i1 %74, i64 -1, i64 %75
  %77 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %76) #41
  %78 = extractvalue { i64, i1 } %77, 1
  %79 = mul i64 %76, %70
  %80 = select i1 %78, i64 -1, i64 %79
  %81 = or i1 %74, %78
  %82 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %80) #41
  %83 = extractvalue { i64, i1 } %82, 1
  %84 = mul i64 %80, %70
  %85 = select i1 %83, i64 -1, i64 %84
  %86 = or i1 %81, %83
  %87 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %85) #41
  %88 = extractvalue { i64, i1 } %87, 1
  %89 = mul i64 %85, %70
  %90 = select i1 %88, i64 -1, i64 %89
  %91 = or i1 %86, %88
  %92 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %90) #41
  %93 = extractvalue { i64, i1 } %92, 1
  %94 = mul i64 %90, %70
  %95 = select i1 %93, i64 -1, i64 %94
  %96 = or i1 %91, %93
  %97 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %95) #41
  %98 = extractvalue { i64, i1 } %97, 1
  %99 = mul i64 %95, %70
  %100 = select i1 %98, i64 -1, i64 %99
  %101 = or i1 %96, %98
  %102 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %100) #41
  %103 = extractvalue { i64, i1 } %102, 1
  %104 = mul i64 %100, %70
  %105 = select i1 %103, i64 -1, i64 %104
  %106 = or i1 %101, %103
  %107 = zext i1 %106 to i32
  br label %373

108:                                              ; preds = %69
  %109 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #41
  %110 = extractvalue { i64, i1 } %109, 1
  %111 = mul i64 %47, %70
  %112 = select i1 %110, i64 -1, i64 %111
  %113 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %112) #41
  %114 = extractvalue { i64, i1 } %113, 1
  %115 = mul i64 %112, %70
  %116 = select i1 %114, i64 -1, i64 %115
  %117 = or i1 %110, %114
  %118 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %116) #41
  %119 = extractvalue { i64, i1 } %118, 1
  %120 = mul i64 %116, %70
  %121 = select i1 %119, i64 -1, i64 %120
  %122 = or i1 %117, %119
  %123 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %121) #41
  %124 = extractvalue { i64, i1 } %123, 1
  %125 = mul i64 %121, %70
  %126 = select i1 %124, i64 -1, i64 %125
  %127 = or i1 %122, %124
  %128 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %126) #41
  %129 = extractvalue { i64, i1 } %128, 1
  %130 = mul i64 %126, %70
  %131 = select i1 %129, i64 -1, i64 %130
  %132 = or i1 %127, %129
  %133 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %131) #41
  %134 = extractvalue { i64, i1 } %133, 1
  %135 = mul i64 %131, %70
  %136 = select i1 %134, i64 -1, i64 %135
  %137 = or i1 %132, %134
  %138 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %136) #41
  %139 = extractvalue { i64, i1 } %138, 1
  %140 = mul i64 %136, %70
  %141 = select i1 %139, i64 -1, i64 %140
  %142 = or i1 %137, %139
  %143 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %141) #41
  %144 = extractvalue { i64, i1 } %143, 1
  %145 = mul i64 %141, %70
  %146 = select i1 %144, i64 -1, i64 %145
  %147 = or i1 %142, %144
  %148 = zext i1 %147 to i32
  br label %373

149:                                              ; preds = %69
  %150 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #41
  %151 = extractvalue { i64, i1 } %150, 1
  %152 = mul i64 %47, %70
  %153 = select i1 %151, i64 -1, i64 %152
  %154 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %153) #41
  %155 = extractvalue { i64, i1 } %154, 1
  %156 = mul i64 %153, %70
  %157 = select i1 %155, i64 -1, i64 %156
  %158 = or i1 %151, %155
  %159 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %157) #41
  %160 = extractvalue { i64, i1 } %159, 1
  %161 = mul i64 %157, %70
  %162 = select i1 %160, i64 -1, i64 %161
  %163 = or i1 %158, %160
  %164 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %162) #41
  %165 = extractvalue { i64, i1 } %164, 1
  %166 = mul i64 %162, %70
  %167 = select i1 %165, i64 -1, i64 %166
  %168 = or i1 %163, %165
  %169 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %167) #41
  %170 = extractvalue { i64, i1 } %169, 1
  %171 = mul i64 %167, %70
  %172 = select i1 %170, i64 -1, i64 %171
  %173 = or i1 %168, %170
  %174 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %172) #41
  %175 = extractvalue { i64, i1 } %174, 1
  %176 = mul i64 %172, %70
  %177 = select i1 %175, i64 -1, i64 %176
  %178 = or i1 %173, %175
  %179 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %177) #41
  %180 = extractvalue { i64, i1 } %179, 1
  %181 = mul i64 %177, %70
  %182 = select i1 %180, i64 -1, i64 %181
  %183 = or i1 %178, %180
  %184 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %182) #41
  %185 = extractvalue { i64, i1 } %184, 1
  %186 = mul i64 %182, %70
  %187 = select i1 %185, i64 -1, i64 %186
  %188 = or i1 %183, %185
  %189 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %187) #41
  %190 = extractvalue { i64, i1 } %189, 1
  %191 = mul i64 %187, %70
  %192 = select i1 %190, i64 -1, i64 %191
  %193 = or i1 %188, %190
  %194 = zext i1 %193 to i32
  br label %373

195:                                              ; preds = %69
  %196 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #41
  %197 = extractvalue { i64, i1 } %196, 1
  %198 = mul i64 %47, %70
  %199 = select i1 %197, i64 -1, i64 %198
  %200 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %199) #41
  %201 = extractvalue { i64, i1 } %200, 1
  %202 = mul i64 %199, %70
  %203 = select i1 %201, i64 -1, i64 %202
  %204 = or i1 %197, %201
  %205 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %203) #41
  %206 = extractvalue { i64, i1 } %205, 1
  %207 = mul i64 %203, %70
  %208 = select i1 %206, i64 -1, i64 %207
  %209 = or i1 %204, %206
  %210 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %208) #41
  %211 = extractvalue { i64, i1 } %210, 1
  %212 = mul i64 %208, %70
  %213 = select i1 %211, i64 -1, i64 %212
  %214 = or i1 %209, %211
  %215 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %213) #41
  %216 = extractvalue { i64, i1 } %215, 1
  %217 = mul i64 %213, %70
  %218 = select i1 %216, i64 -1, i64 %217
  %219 = or i1 %214, %216
  %220 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %218) #41
  %221 = extractvalue { i64, i1 } %220, 1
  %222 = mul i64 %218, %70
  %223 = select i1 %221, i64 -1, i64 %222
  %224 = or i1 %219, %221
  %225 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %223) #41
  %226 = extractvalue { i64, i1 } %225, 1
  %227 = mul i64 %223, %70
  %228 = select i1 %226, i64 -1, i64 %227
  %229 = or i1 %224, %226
  %230 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %228) #41
  %231 = extractvalue { i64, i1 } %230, 1
  %232 = mul i64 %228, %70
  %233 = select i1 %231, i64 -1, i64 %232
  %234 = or i1 %229, %231
  %235 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %233) #41
  %236 = extractvalue { i64, i1 } %235, 1
  %237 = mul i64 %233, %70
  %238 = select i1 %236, i64 -1, i64 %237
  %239 = or i1 %234, %236
  %240 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %238) #41
  %241 = extractvalue { i64, i1 } %240, 1
  %242 = mul i64 %238, %70
  %243 = select i1 %241, i64 -1, i64 %242
  %244 = or i1 %239, %241
  %245 = zext i1 %244 to i32
  br label %373

246:                                              ; preds = %69
  %247 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #41
  %248 = extractvalue { i64, i1 } %247, 1
  %249 = mul i64 %47, %70
  %250 = select i1 %248, i64 -1, i64 %249
  %251 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %250) #41
  %252 = extractvalue { i64, i1 } %251, 1
  %253 = mul i64 %250, %70
  %254 = select i1 %252, i64 -1, i64 %253
  %255 = or i1 %248, %252
  %256 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %254) #41
  %257 = extractvalue { i64, i1 } %256, 1
  %258 = mul i64 %254, %70
  %259 = select i1 %257, i64 -1, i64 %258
  %260 = or i1 %255, %257
  %261 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %259) #41
  %262 = extractvalue { i64, i1 } %261, 1
  %263 = mul i64 %259, %70
  %264 = select i1 %262, i64 -1, i64 %263
  %265 = or i1 %260, %262
  %266 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %264) #41
  %267 = extractvalue { i64, i1 } %266, 1
  %268 = mul i64 %264, %70
  %269 = select i1 %267, i64 -1, i64 %268
  %270 = or i1 %265, %267
  %271 = zext i1 %270 to i32
  br label %373

272:                                              ; preds = %69
  %273 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #41
  %274 = extractvalue { i64, i1 } %273, 1
  %275 = mul i64 %47, %70
  %276 = select i1 %274, i64 -1, i64 %275
  %277 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %276) #41
  %278 = extractvalue { i64, i1 } %277, 1
  %279 = mul i64 %276, %70
  %280 = select i1 %278, i64 -1, i64 %279
  %281 = or i1 %274, %278
  %282 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %280) #41
  %283 = extractvalue { i64, i1 } %282, 1
  %284 = mul i64 %280, %70
  %285 = select i1 %283, i64 -1, i64 %284
  %286 = or i1 %281, %283
  %287 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %285) #41
  %288 = extractvalue { i64, i1 } %287, 1
  %289 = mul i64 %285, %70
  %290 = select i1 %288, i64 -1, i64 %289
  %291 = or i1 %286, %288
  %292 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %290) #41
  %293 = extractvalue { i64, i1 } %292, 1
  %294 = mul i64 %290, %70
  %295 = select i1 %293, i64 -1, i64 %294
  %296 = or i1 %291, %293
  %297 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %295) #41
  %298 = extractvalue { i64, i1 } %297, 1
  %299 = mul i64 %295, %70
  %300 = select i1 %298, i64 -1, i64 %299
  %301 = or i1 %296, %298
  %302 = zext i1 %301 to i32
  br label %373

303:                                              ; preds = %69
  %304 = icmp ugt i64 %47, 36028797018963967
  %305 = shl i64 %47, 9
  %306 = select i1 %304, i64 -1, i64 %305
  %307 = zext i1 %304 to i32
  br label %373

308:                                              ; preds = %69
  %309 = icmp ugt i64 %47, 18014398509481983
  %310 = shl i64 %47, 10
  %311 = select i1 %309, i64 -1, i64 %310
  %312 = zext i1 %309 to i32
  br label %373

313:                                              ; preds = %69, %69
  %314 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #41
  %315 = extractvalue { i64, i1 } %314, 1
  %316 = mul i64 %47, %70
  %317 = select i1 %315, i64 -1, i64 %316
  %318 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %317) #41
  %319 = extractvalue { i64, i1 } %318, 1
  %320 = mul i64 %317, %70
  %321 = select i1 %319, i64 -1, i64 %320
  %322 = or i1 %315, %319
  %323 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %321) #41
  %324 = extractvalue { i64, i1 } %323, 1
  %325 = mul i64 %321, %70
  %326 = select i1 %324, i64 -1, i64 %325
  %327 = or i1 %322, %324
  %328 = zext i1 %327 to i32
  br label %373

329:                                              ; preds = %69, %69
  %330 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #41
  %331 = extractvalue { i64, i1 } %330, 1
  %332 = mul i64 %47, %70
  %333 = select i1 %331, i64 -1, i64 %332
  %334 = zext i1 %331 to i32
  br label %373

335:                                              ; preds = %69, %69
  %336 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #41
  %337 = extractvalue { i64, i1 } %336, 1
  %338 = mul i64 %47, %70
  %339 = select i1 %337, i64 -1, i64 %338
  %340 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %339) #41
  %341 = extractvalue { i64, i1 } %340, 1
  %342 = mul i64 %339, %70
  %343 = select i1 %341, i64 -1, i64 %342
  %344 = or i1 %337, %341
  %345 = zext i1 %344 to i32
  br label %373

346:                                              ; preds = %69, %69
  %347 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #41
  %348 = extractvalue { i64, i1 } %347, 1
  %349 = mul i64 %47, %70
  %350 = select i1 %348, i64 -1, i64 %349
  %351 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %350) #41
  %352 = extractvalue { i64, i1 } %351, 1
  %353 = mul i64 %350, %70
  %354 = select i1 %352, i64 -1, i64 %353
  %355 = or i1 %348, %352
  %356 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %354) #41
  %357 = extractvalue { i64, i1 } %356, 1
  %358 = mul i64 %354, %70
  %359 = select i1 %357, i64 -1, i64 %358
  %360 = or i1 %355, %357
  %361 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %359) #41
  %362 = extractvalue { i64, i1 } %361, 1
  %363 = mul i64 %359, %70
  %364 = select i1 %362, i64 -1, i64 %363
  %365 = or i1 %360, %362
  %366 = zext i1 %365 to i32
  br label %373

367:                                              ; preds = %69
  %368 = shl i64 %47, 1
  %369 = icmp sgt i64 %47, -1
  %370 = select i1 %369, i64 %368, i64 -1
  %371 = lshr i64 %47, 63
  %372 = trunc i64 %371 to i32
  br label %373

373:                                              ; preds = %72, %108, %346, %149, %195, %246, %335, %329, %313, %272, %303, %308, %367, %69
  %374 = phi i64 [ %370, %367 ], [ %47, %69 ], [ %311, %308 ], [ %306, %303 ], [ %300, %272 ], [ %326, %313 ], [ %333, %329 ], [ %343, %335 ], [ %269, %246 ], [ %243, %195 ], [ %192, %149 ], [ %364, %346 ], [ %146, %108 ], [ %105, %72 ]
  %375 = phi i32 [ %372, %367 ], [ 0, %69 ], [ %312, %308 ], [ %307, %303 ], [ %302, %272 ], [ %328, %313 ], [ %334, %329 ], [ %345, %335 ], [ %271, %246 ], [ %245, %195 ], [ %194, %149 ], [ %366, %346 ], [ %148, %108 ], [ %107, %72 ]
  %376 = or i32 %375, %46
  %377 = getelementptr inbounds i8, i8* %27, i64 %71
  store i8* %377, i8** %21, align 8, !tbaa !12
  %378 = load i8, i8* %377, align 1, !tbaa !16
  %379 = icmp eq i8 %378, 0
  %380 = or i32 %376, 2
  %381 = select i1 %379, i32 %376, i32 %380
  br label %384

382:                                              ; preds = %69
  store i64 %47, i64* %3, align 8, !tbaa !54
  %383 = or i32 %46, 2
  br label %387

384:                                              ; preds = %373, %45
  %385 = phi i64 [ %47, %45 ], [ %374, %373 ]
  %386 = phi i32 [ %46, %45 ], [ %381, %373 ]
  store i64 %385, i64* %3, align 8, !tbaa !54
  br label %387

387:                                              ; preds = %44, %54, %384, %34, %31, %29, %38, %382, %23
  %388 = phi i32 [ 4, %23 ], [ %386, %384 ], [ %383, %382 ], [ %55, %54 ], [ %42, %44 ], [ 4, %34 ], [ 4, %31 ], [ 4, %29 ], [ 4, %38 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #41
  ret i32 %388
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #39

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #13 {
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #41
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8, !tbaa !214
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #41
  %8 = icmp eq i32 %7, 0
  br i1 %6, label %9, label %19

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0
  %11 = select i1 %8, i1 true, i1 %10
  %12 = xor i1 %8, true
  %13 = sext i1 %12 to i32
  br i1 %11, label %22, label %14

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #44
  %16 = load i32, i32* %15, align 4, !tbaa !22
  %17 = icmp ne i32 %16, 9
  %18 = sext i1 %17 to i32
  br label %22

19:                                               ; preds = %1
  br i1 %8, label %20, label %22

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #44
  store i32 0, i32* %21, align 4, !tbaa !22
  br label %22

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ]
  ret i32 %23
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @cycle_check_init(%struct.cycle_check_state* nocapture noundef writeonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 1
  store i64 0, i64* %2, align 8, !tbaa !94
  %3 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 2
  store i32 9827862, i32* %3, align 8, !tbaa !215
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i1 @cycle_check(%struct.cycle_check_state* nocapture noundef %0, %struct.stat* nocapture noundef readonly %1) local_unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 8, !tbaa !215
  %5 = icmp eq i32 %4, 9827862
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.257, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.258, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.cycle_check, i64 0, i64 0)) #43
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 1
  %9 = load i64, i64* %8, align 8, !tbaa !94
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8, !tbaa !96
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 1
  %17 = load i64, i64* %16, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.cycle_check_state, %struct.cycle_check_state* %0, i64 0, i32 0, i32 0
  %19 = load i64, i64* %18, align 8, !tbaa !97
  %20 = icmp eq i64 %13, %15
  %21 = icmp eq i64 %17, %19
  %22 = and i1 %20, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %11, %7
  %24 = add i64 %9, 1
  store i64 %24, i64* %8, align 8, !tbaa !94
  %25 = tail call i64 @llvm.ctpop.i64(i64 %24) #41, !range !216
  %26 = icmp ult i64 %25, 2
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = icmp eq i64 %24, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %27
  %30 = bitcast %struct.stat* %1 to <2 x i64>*
  %31 = load <2 x i64>, <2 x i64>* %30, align 8, !tbaa !54
  %32 = shufflevector <2 x i64> %31, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %33 = bitcast %struct.cycle_check_state* %0 to <2 x i64>*
  store <2 x i64> %32, <2 x i64>* %33, align 8, !tbaa !54
  br label %34

34:                                               ; preds = %23, %29, %27, %11
  %35 = phi i1 [ true, %11 ], [ true, %27 ], [ false, %29 ], [ false, %23 ]
  ret i1 %35
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #13 {
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #41
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  br label %24

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #41
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #41
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #41
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #41
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %9
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  br label %24

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #44
  %20 = load i32, i32* %19, align 4, !tbaa !22
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0)
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !tbaa !22
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
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #13 {
  %3 = alloca %"struct.std::__va_list", align 8
  %4 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #41
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
  %25 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %24) #41
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
  %46 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !tbaa !22
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %45) #41
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = tail call i32* @__errno_location() #44
  %53 = load i32, i32* %52, align 4, !tbaa !22
  %54 = icmp eq i32 %53, 22
  br i1 %54, label %56, label %55

55:                                               ; preds = %51, %48
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !tbaa !22
  br label %124

56:                                               ; preds = %51
  %57 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #41
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %124

59:                                               ; preds = %56
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !tbaa !22
  br label %64

60:                                               ; preds = %42
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #41
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
  %70 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 1) #41
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = or i32 %70, 1
  %74 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 2, i32 noundef %73) #41
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %124

76:                                               ; preds = %72, %69
  %77 = tail call i32* @__errno_location() #44
  %78 = load i32, i32* %77, align 4, !tbaa !22
  %79 = call i32 @close(i32 noundef %66) #41
  store i32 %78, i32* %77, align 4, !tbaa !22
  br label %124

80:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %81 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #41
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
  %102 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %101) #41
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
  %123 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i8* noundef %122) #41
  br label %124

124:                                              ; preds = %76, %72, %64, %56, %55, %80, %98, %119, %21
  %125 = phi i32 [ %123, %119 ], [ %102, %98 ], [ %81, %80 ], [ %25, %21 ], [ %66, %64 ], [ -1, %76 ], [ %66, %72 ], [ %57, %56 ], [ %49, %55 ]
  call void @llvm.va_end(i8* nonnull %4)
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #41
  ret i32 %125
}

; Function Attrs: nounwind uwtable
define dso_local i32 @open_safer(i8* nocapture noundef readonly %0, i32 noundef %1, ...) local_unnamed_addr #13 {
  %3 = alloca %"struct.std::__va_list", align 8
  %4 = and i32 %1, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = bitcast %"struct.std::__va_list"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #41
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
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #41
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi i32 [ %26, %23 ], [ 0, %2 ]
  %29 = call i32 (i8*, i32, ...) @open(i8* noundef %0, i32 noundef %1, i32 noundef %28) #41
  %30 = call i32 @fd_safer(i32 noundef %29) #41
  ret i32 %30
}

; Function Attrs: nofree
declare noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #25

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #13 {
  %2 = icmp eq %struct._IO_FILE* %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #41
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0)
  br label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8, !tbaa !214
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #41
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
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #13 {
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8, !tbaa !217
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8, !tbaa !218
  %8 = icmp eq i8* %5, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5
  %11 = load i8*, i8** %10, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4
  %13 = load i8*, i8** %12, align 8, !tbaa !219
  %14 = icmp eq i8* %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9
  %17 = load i8*, i8** %16, align 8, !tbaa !220
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #41
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #41
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %25 = load i32, i32* %24, align 8, !tbaa !214
  %26 = and i32 %25, -17
  store i32 %26, i32* %24, align 8, !tbaa !214
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21
  store i64 %21, i64* %27, align 8, !tbaa !221
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
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #13 {
  %5 = icmp eq i8* %1, null
  %6 = select i1 %5, i32* null, i32* %0
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.271, i64 0, i64 0), i8* %1
  %8 = select i1 %5, i64 1, i64 %2
  %9 = icmp eq %struct.__mbstate_t* %3, null
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #41
  %12 = icmp ult i64 %11, -3
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #42
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
  tail call void @abort() #43
  unreachable

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #41
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !tbaa !16
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %6, align 4, !tbaa !22
  br label %30

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ]
  ret i64 %31
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #40

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #13 {
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #41
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #13 {
  %2 = alloca [257 x i8], align 1
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #41
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #41
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.276, i64 0, i64 0), i64 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.277, i64 0, i64 0), i64 6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %6
  br label %13

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ]
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #41
  ret i1 %14
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #13 {
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #41
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #13 {
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #41
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #13 {
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #41
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #13 {
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #41
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !tbaa !16
  br label %19

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #42
  %11 = icmp ult i64 %10, %2
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #41
  br label %19

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = add i64 %2, -1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #41
  %18 = getelementptr inbounds i8, i8* %1, i64 %17
  store i8 0, i8* %18, align 1, !tbaa !16
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
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { nofree nounwind readonly "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #15 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { argmemonly nofree nounwind willreturn writeonly }
attributes #18 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { nofree nosync nounwind willreturn }
attributes #22 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { mustprogress nofree nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { mustprogress nofree nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #36 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #37 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #38 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #39 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #40 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #41 = { nounwind }
attributes #42 = { nounwind readonly willreturn }
attributes #43 = { noreturn nounwind }
attributes #44 = { nounwind readnone willreturn }
attributes #45 = { noreturn }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { cold }
attributes #48 = { nounwind allocsize(1) }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!14, !14, i64 0}
!17 = !{!18, !13, i64 0}
!18 = !{!"infomap", !13, i64 0, !13, i64 8}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!18, !13, i64 8}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !14, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !14, i64 0}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !20}
!29 = !{!30, !30, i64 0}
!30 = !{!"_Bool", !14, i64 0}
!31 = !{i8 0, i8 2}
!32 = !{!33, !30, i64 4}
!33 = !{!"Chown_option", !14, i64 0, !30, i64 4, !13, i64 8, !30, i64 16, !30, i64 17, !13, i64 24, !13, i64 32}
!34 = !{!33, !14, i64 0}
!35 = !{!33, !30, i64 17}
!36 = !{!33, !30, i64 16}
!37 = !{!38, !23, i64 24}
!38 = !{!"stat", !39, i64 0, !39, i64 8, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !39, i64 32, !39, i64 40, !39, i64 48, !23, i64 56, !23, i64 60, !39, i64 64, !40, i64 72, !40, i64 88, !40, i64 104, !14, i64 120}
!39 = !{!"long", !14, i64 0}
!40 = !{!"timespec", !39, i64 0, !39, i64 8}
!41 = !{!33, !13, i64 24}
!42 = !{!38, !23, i64 28}
!43 = !{!33, !13, i64 32}
!44 = !{!33, !13, i64 8}
!45 = !{!46, !13, i64 0}
!46 = !{!"group", !13, i64 0, !13, i64 8, !23, i64 16, !13, i64 24}
!47 = !{!48, !13, i64 0}
!48 = !{!"passwd", !13, i64 0, !13, i64 8, !23, i64 16, !23, i64 20, !13, i64 24, !13, i64 32, !13, i64 40}
!49 = !{!38, !39, i64 0}
!50 = !{!51, !39, i64 8}
!51 = !{!"dev_ino", !39, i64 0, !39, i64 8}
!52 = !{!38, !39, i64 8}
!53 = !{!51, !39, i64 0}
!54 = !{!39, !39, i64 0}
!55 = !{!38, !23, i64 16}
!56 = !{!57, !23, i64 44}
!57 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !39, i64 24, !13, i64 32, !23, i64 40, !23, i64 44, !39, i64 48, !39, i64 56, !13, i64 64, !23, i64 72, !13, i64 80, !14, i64 88, !58, i64 96}
!58 = !{!"I_ring", !14, i64 0, !23, i64 16, !23, i64 20, !23, i64 24, !30, i64 28}
!59 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 8, !12, i64 24, i64 4, !22, i64 28, i64 4, !22}
!60 = !{!61, !63}
!61 = distinct !{!61, !62, !"vfprintf.inline: argument 0"}
!62 = distinct !{!62, !"vfprintf.inline"}
!63 = distinct !{!63, !62, !"vfprintf.inline: argument 1"}
!64 = !{!65, !13, i64 40}
!65 = !{!"_IO_FILE", !23, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !23, i64 112, !23, i64 116, !39, i64 120, !25, i64 128, !14, i64 130, !14, i64 131, !13, i64 136, !39, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !39, i64 184, !23, i64 192, !14, i64 196}
!66 = !{!65, !13, i64 48}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{!57, !13, i64 64}
!69 = !{!57, !23, i64 72}
!70 = distinct !{!70, !20}
!71 = !{!57, !39, i64 48}
!72 = !{!57, !13, i64 32}
!73 = !{!38, !39, i64 48}
!74 = distinct !{!74, !20}
!75 = !{!57, !13, i64 0}
!76 = !{!57, !23, i64 40}
!77 = distinct !{!77, !20}
!78 = !{!57, !39, i64 56}
!79 = !{!57, !13, i64 16}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !20}
!82 = !{!83, !39, i64 8}
!83 = !{!"Active_dir", !39, i64 0, !39, i64 8, !13, i64 16}
!84 = !{!83, !39, i64 0}
!85 = distinct !{!85, !20}
!86 = !{!57, !13, i64 8}
!87 = distinct !{!87, !20}
!88 = distinct !{!88, !20}
!89 = !{!57, !13, i64 80}
!90 = !{!57, !39, i64 24}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20}
!93 = !{!83, !13, i64 16}
!94 = !{!95, !39, i64 16}
!95 = !{!"cycle_check_state", !51, i64 0, !39, i64 16, !23, i64 24}
!96 = !{!95, !39, i64 8}
!97 = !{!95, !39, i64 0}
!98 = distinct !{!98, !20}
!99 = !{!38, !23, i64 20}
!100 = distinct !{!100, !20}
!101 = distinct !{!101, !20}
!102 = distinct !{!102, !20}
!103 = !{!104, !39, i64 0}
!104 = !{!"dirent", !39, i64 0, !39, i64 8, !25, i64 16, !14, i64 18, !14, i64 19}
!105 = !{!104, !14, i64 18}
!106 = distinct !{!106, !20}
!107 = distinct !{!107, !20}
!108 = distinct !{!108, !20}
!109 = distinct !{!109, !20}
!110 = distinct !{!110, !20}
!111 = !{!112, !39, i64 0}
!112 = !{!"dev_type", !39, i64 0, !39, i64 8}
!113 = !{!112, !39, i64 8}
!114 = !{!115, !39, i64 0}
!115 = !{!"statfs", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !116, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !14, i64 88}
!116 = !{!"", !14, i64 0}
!117 = distinct !{!117, !20}
!118 = !{!119, !39, i64 16}
!119 = !{!"hash_table", !13, i64 0, !13, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!120 = !{!119, !39, i64 24}
!121 = !{!119, !39, i64 32}
!122 = !{!119, !13, i64 0}
!123 = !{!119, !13, i64 8}
!124 = !{!125, !13, i64 0}
!125 = !{!"hash_entry", !13, i64 0, !13, i64 8}
!126 = !{!125, !13, i64 8}
!127 = distinct !{!127, !20}
!128 = distinct !{!128, !20}
!129 = distinct !{!129, !20}
!130 = distinct !{!130, !20}
!131 = distinct !{!131, !20}
!132 = distinct !{!132, !20}
!133 = !{!119, !13, i64 48}
!134 = !{!119, !13, i64 56}
!135 = distinct !{!135, !20}
!136 = distinct !{!136, !20}
!137 = distinct !{!137, !20}
!138 = distinct !{!138, !20}
!139 = distinct !{!139, !20}
!140 = distinct !{!140, !20}
!141 = distinct !{!141, !20}
!142 = !{i64 0, i64 4, !143, i64 4, i64 4, !143, i64 8, i64 4, !143, i64 12, i64 4, !143, i64 16, i64 1, !29}
!143 = !{!144, !144, i64 0}
!144 = !{!"float", !14, i64 0}
!145 = !{!119, !13, i64 40}
!146 = !{!147, !144, i64 8}
!147 = !{!"hash_tuning", !144, i64 0, !144, i64 4, !144, i64 8, !144, i64 12, !30, i64 16}
!148 = !{!147, !144, i64 12}
!149 = !{!147, !144, i64 0}
!150 = !{!147, !144, i64 4}
!151 = !{!147, !30, i64 16}
!152 = !{!119, !13, i64 64}
!153 = !{!119, !13, i64 72}
!154 = distinct !{!154, !20}
!155 = distinct !{!155, !20, !156}
!156 = !{!"llvm.loop.unswitch.partial.disable"}
!157 = distinct !{!157, !20}
!158 = distinct !{!158, !20}
!159 = distinct !{!159, !20}
!160 = distinct !{!160, !20}
!161 = distinct !{!161, !20}
!162 = distinct !{!162, !20}
!163 = distinct !{!163, !20}
!164 = distinct !{!164, !20}
!165 = distinct !{!165, !20}
!166 = distinct !{!166, !20}
!167 = distinct !{!167, !20}
!168 = distinct !{!168, !20}
!169 = !{i64 0, i64 8, !12, i64 8, i64 8, !12}
!170 = distinct !{!170, !20}
!171 = distinct !{!171, !20}
!172 = !{!58, !30, i64 28}
!173 = !{!58, !23, i64 16}
!174 = !{!58, !23, i64 20}
!175 = !{!58, !23, i64 24}
!176 = distinct !{!176, !20}
!177 = distinct !{!177, !20}
!178 = !{!179, !14, i64 0}
!179 = !{!"quoting_options", !14, i64 0, !23, i64 4, !14, i64 8, !13, i64 40, !13, i64 48}
!180 = !{!179, !23, i64 4}
!181 = !{!179, !13, i64 40}
!182 = !{!179, !13, i64 48}
!183 = distinct !{!183, !20}
!184 = distinct !{!184, !20}
!185 = distinct !{!185, !20}
!186 = distinct !{!186, !20}
!187 = distinct !{!187, !20}
!188 = !{!189, !13, i64 8}
!189 = !{!"slotvec", !39, i64 0, !13, i64 8}
!190 = distinct !{!190, !20}
!191 = !{!189, !39, i64 0}
!192 = !{i64 0, i64 8, !54, i64 8, i64 8, !12}
!193 = !{!194}
!194 = distinct !{!194, !195, !"quoting_options_from_style: argument 0"}
!195 = distinct !{!195, !"quoting_options_from_style"}
!196 = !{!197}
!197 = distinct !{!197, !198, !"quoting_options_from_style: argument 0"}
!198 = distinct !{!198, !"quoting_options_from_style"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"quoting_options_from_style: argument 0"}
!201 = distinct !{!201, !"quoting_options_from_style"}
!202 = !{!203}
!203 = distinct !{!203, !204, !"quoting_options_from_style: argument 0"}
!204 = distinct !{!204, !"quoting_options_from_style"}
!205 = !{i64 0, i64 4, !16, i64 4, i64 4, !22, i64 8, i64 32, !16, i64 40, i64 8, !12, i64 48, i64 8, !12}
!206 = !{!207}
!207 = distinct !{!207, !208, !"quoting_options_from_style: argument 0"}
!208 = distinct !{!208, !"quoting_options_from_style"}
!209 = !{!48, !23, i64 16}
!210 = !{!48, !23, i64 20}
!211 = !{!46, !23, i64 16}
!212 = distinct !{!212, !20}
!213 = distinct !{!213, !20}
!214 = !{!65, !23, i64 0}
!215 = !{!95, !23, i64 24}
!216 = !{i64 0, i64 65}
!217 = !{!65, !13, i64 16}
!218 = !{!65, !13, i64 8}
!219 = !{!65, !13, i64 32}
!220 = !{!65, !13, i64 72}
!221 = !{!65, !39, i64 144}
