Received: (qmail 16345 invoked by uid 550); 2 May 2026 13:18:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7612 invoked from network); 2 May 2026 01:49:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777686572; x=1778291372; darn=lists.openwall.com;
        h=mime-version:user-agent:message-id:date:subject:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TPM9pdoLWoWuY3OjiiUC4svoaQw/2O3Ly4r04TJGXOU=;
        b=PssJc6klO9Ow0l5qPDoyOu57k1wMMnCN4749QKAj6YEXqEcJ/wq8RJtjXPSAAF3jqP
         IKeaja3Gl8zDZP97C7N3AzUtpB+6cxjH4MoZjSB8XY3sVjGdHRhEpJEym9Pq/vmw/MgX
         m0mU83LchnPe0iM94VEjXtKZcKDhua7WKHqt88jsVkBb/AvFUE/zyV1kovVFqILfabwA
         Zf+EkvThxJUI765DAas3vxh+CgQ0kzoqxT3L5a35KqwGI+O3chKRaHCTbKAPKgf5EE41
         yhl50tv5HqK5KXiQPS1FwgWX9Xl7iePYVNBF2DGz4ULzDcSmChO1rgFy0G37Jc2lwkb3
         7Jtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777686572; x=1778291372;
        h=mime-version:user-agent:message-id:date:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TPM9pdoLWoWuY3OjiiUC4svoaQw/2O3Ly4r04TJGXOU=;
        b=g0VcJkjpcBHuYOlmwSCBa+3kCHCPQkt/MssC9NwhGt8rxEF7p0aGYtCzn9VDTpcwZ7
         5eJvINYqBb9kCBUZ5SkQRZfwSfadQs69uz0gN80UeVImB6+OX2v5zzwncUyCY9LuNbH1
         VV6md7wUZ98Zh2bwGIbXIsosyw2zYqTokp06krX1CKH3pC7SR0H7apWqJlnVmwyjvLXs
         hCm/7+MrVzVUsbP+JHBEC01CHOT4HJImNXyL0Hg5kRt3BUJxYwDBFSP6s+/5eiwoRPAP
         uXJnhKJkvA67H5G2zfHyCc7aweSvoCMOsptPHF/E2sDzFK7DZKe2zpgNGXq7At8koZRH
         w9tQ==
X-Gm-Message-State: AOJu0Yzrf7pZc4ylMu4ubWJ22XnMBY/kdjXtpTKQTcGwQusWSRHlQosw
	N8ZkQLBY66ZMNMLNDqcouBsEnncO4r5b5a6lAYLr/ICgadtn6q7FqW96iF7tAQ==
X-Gm-Gg: AeBDietEZlQwR0+2lK0Evwx2zz0lPQ3LEZJM6tWIvBsduLJCqnGS+D9xBruDgK38WTH
	TVGNLacW3bDVc9WRdJP2UvuaiNhA5jXOmsE+h6PjOWjmpD1fLFfxT3xzizceBP/birFzv59Kz7L
	mqiHx+QIBUVsD069pOV9d4ip4vCNy6cMbibxHDNGiIoGG9wCAYPKOXpcRRreNuyKHzCm1bMtcHC
	mfV6Fd08xMQTEM6ILsNyXGLCfZWcIKJrPksDdA3gb9YkM34Sujk4uPxw3xekBHnL8s/rUe0oIVW
	227u9iY+OYmYTvwMt783D/g+8qKKQ3/xfCbxNi1Eu95T7EqVagxG1TMoQsdBipVO041AfKWgaB8
	m5BhdwqYWcvlWqXX2j6RVETQiJ6RwOU34EeLGgVBIMHHs+ta6REcKjkO3eE3qyLKzUTwWIPcdfI
	wHdMyYnJ+/bAJU3WY=
X-Received: by 2002:a05:7300:cb17:b0:2ee:ade0:e0bf with SMTP id 5a478bee46e88-2efba7afdd2mr676157eec.30.1777686571412;
        Fri, 01 May 2026 18:49:31 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: oss-security@lists.openwall.com
Date: Fri, 01 May 2026 18:49:29 -0700
Message-ID: <87mryiinrq.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] uutils coreutils CVEs

Canonical posted an update [1] about their decision to switch to uutils
reimplementation of GNU coreutils [2]. In it, they detail the audit
performed by Zellic, which found 113 issues, 44 of which were assigned
CVEs. They go on to explain that as a result of TOCTOU races, they have
decided to continue using GNU 'cp', 'mv', and 'rm' in Ubuntu 26.04.

Canonical highlights in bold text that "the vast majority of issues have
been addressed and resolved". Sadly, they do not go into any more detail
about which issues still remain unsolved. From my quick skim over them,
the CVEs affected version fields do not seem 100% accurate.

I did not get a chance to check all of them, but here are three that I
was surprised to notice in a fully up-to-date Ubuntu 26.04 install. Full
disclosure, I am a committer to GNU coreutils so perhaps I am
overestimating the real-world impact of these bugs:

* CVE-2026-35352

We can see that uutils 'mkfifo' creates the fifo with world readable and
writable permissions and then uses chmod() which introduces a TOCTOU
race that can be exploited by another user creating a symbolic link in
it's place:

    $ mkfifo --version
    mkfifo (uutils coreutils) 0.8.0
    $ strace mkfifo -m 700 /tmp/fifo
    [...]
    umask(000)                              = 002
    umask(002)                              = 000
    mknodat(AT_FDCWD, "/tmp/fifo", S_IFIFO|0666) = 0
    chmod("/tmp/fifo", 0700)                = 0

GNU 'mkfifo' does this safely:

    $ gnumkfifo --version | head -n 1
    mkfifo (GNU coreutils) 9.7
    $ strace gnumkfifo -m 700 /tmp/fifo
    [...]
    umask(000)                              = 002
    umask(002)                              = 000
    mknodat(AT_FDCWD, "/tmp/fifo", S_IFIFO|0700) = 0
    fchmodat2(AT_FDCWD, "/tmp/fifo", 0700, AT_SYMLINK_NOFOLLOW) = 0

* CVE-2026-35367

When standard output is a terminal, uutils 'nohup' writes the output to
a world readable and writable "nohup.out" file:

    $ nohup --version
    nohup (uutils coreutils) 0.8.0
    $ rm nohup.out; (umask 0; nohup echo secret)
    nohup: ignoring input and appending output to 'nohup.out'
    $ stat --format=%A nohup.out 
    -rw-rw-rw-

GNU 'nohup' complies with POSIX and uses S_IRUSR | S_IWUSR:

    $ gnunohup --version | head -n 1
    nohup (GNU coreutils) 9.7
    $ rm nohup.out; (umask 0; gnunohup echo secret)
    gnunohup: ignoring input and appending output to 'nohup.out'
    $ stat --format=%A nohup.out 
    -rw-------

* CVE-2026-35370

There is a good reproducer posted on GitHub [3]:

    cd /tmp && rm -rf tail_test && mkdir tail_test && cd tail_test
    echo "original" > testfile
    
    # GNU tail
    timeout 2 tail --follow=name testfile &
    sleep 0.3
    rm testfile && ln -s /etc/passwd testfile
    sleep 0.3
    # Output: "has been replaced with an untailable symbolic link"
    
    # uutils tail
    rm -f testfile && echo "original" > testfile
    timeout 2 tail --follow=name testfile &
    sleep 0.3
    rm testfile && ln -s /etc/passwd testfile
    sleep 0.3
    # Output: "'testfile' has appeared;  following new file" + contents of /etc/passwd


Here is a full list of the CVE numbers and their descriptions:

* CVE-2026-35338:

    A vulnerability in the chmod utility of uutils coreutils allows
    users to bypass the --preserve-root safety mechanism. The
    implementation only validates if the target path is literally / and
    does not canonicalize the path. An attacker or accidental user can
    use path variants such as /../ or symbolic links to execute
    destructive recursive operations (e.g., chmod -R 000) on the entire
    root filesystem, leading to system-wide permission loss and
    potential complete system breakdown.

* CVE-2026-35339:

    The recursive mode (-R) of the chmod utility in uutils coreutils
    incorrectly handles exit codes when processing multiple files. The
    final return value is determined solely by the success or failure of
    the last file processed. This allows the command to return an exit
    code of 0 (success) even if errors were encountered on previous
    files, such as 'Operation not permitted'. Scripts relying on these
    exit codes may proceed under a false sense of success while
    sensitive files remain with restrictive or incorrect permissions.

* CVE-2026-35340:

    A flaw in the ChownExecutor used by uutils coreutils chown and chgrp
    causes the utilities to return an incorrect exit code during
    recursive operations. The final exit code is determined only by the
    last file processed. If the last operation succeeds, the command
    returns 0 even if earlier ownership or group changes failed due to
    permission errors. This can lead to security misconfigurations where
    administrative scripts incorrectly assume that ownership has been
    successfully transferred across a directory tree.

* CVE-2026-35341:

    A vulnerability in uutils coreutils mkfifo allows for the
    unauthorized modification of permissions on existing files. When
    mkfifo fails to create a FIFO because a file already exists at the
    target path, it fails to terminate the operation for that path and
    continues to execute a follow-up set_permissions call. This results
    in the existing file's permissions being changed to the default mode
    (often 644 after umask), potentially exposing sensitive files such
    as SSH private keys to other users on the system.

* CVE-2026-35342:

    The mktemp utility in uutils coreutils fails to properly handle an
    empty TMPDIR environment variable. Unlike GNU mktemp, which falls
    back to /tmp when TMPDIR is an empty string, the uutils
    implementation treats the empty string as a valid path. This causes
    temporary files to be created in the current working directory (CWD)
    instead of the intended secure temporary directory. If the CWD is
    more permissive or accessible to other users than /tmp, it may lead
    to unintended information disclosure or unauthorized access to
    temporary data.

* CVE-2026-35343:

    The cut utility in uutils coreutils incorrectly handles the -s
    (only-delimited) option when a newline character is specified as the
    delimiter. The implementation fails to verify the only_delimited
    flag in the cut_fields_newline_char_delim function, causing the
    utility to print non-delimited lines that should have been
    suppressed. This can lead to unexpected data being passed to
    downstream scripts that rely on strict output filtering.

* CVE-2026-35344:

    The dd utility in uutils coreutils suppresses errors during file
    truncation operations by unconditionally calling Result::ok() on
    truncation attempts. While intended to mimic GNU behavior for
    special files like /dev/null, the uutils implementation also hides
    failures on regular files and directories caused by full disks or
    read-only file systems. This can lead to silent data corruption in
    backup or migration scripts, as the utility may report a successful
    operation even when the destination file contains old or garbage
    data.

* CVE-2026-35345:

    A vulnerability in the tail utility of uutils coreutils allows for
    the exfiltration of sensitive file contents when using the
    --follow=name option. Unlike GNU tail, the uutils implementation
    continues to monitor a path after it has been replaced by a symbolic
    link, subsequently outputting the contents of the link's target. In
    environments where a privileged user (e.g., root) monitors a log
    directory, a local attacker with write access to that directory can
    replace a log file with a symlink to a sensitive system file (such
    as /etc/shadow), causing tail to disclose the contents of the
    sensitive file.

* CVE-2026-35346:

    The comm utility in uutils coreutils silently corrupts data by
    performing lossy UTF-8 conversion on all output lines. The
    implementation uses String::from_utf8_lossy(), which replaces
    invalid UTF-8 byte sequences with the Unicode replacement character
    (U+FFFD). This behavior differs from GNU comm, which processes raw
    bytes and preserves the original input. This results in corrupted
    output when the utility is used to compare binary files or files
    using non-UTF-8 legacy encodings.

* CVE-2026-35347:

    The comm utility in uutils coreutils incorrectly consumes data from
    non-regular file inputs before performing comparison operations. The
    are_files_identical function opens and reads from both input paths
    to compare content without first verifying if the paths refer to
    regular files. If an input path is a FIFO or a pipe, this pre-read
    operation drains the stream, leading to silent data loss before the
    actual comparison logic is executed. Additionally, the utility may
    hang indefinitely if it attempts to pre-read from infinite streams
    like /dev/zero.

* CVE-2026-35348:

    The sort utility in uutils coreutils is vulnerable to a process
    panic when using the --files0-from option with inputs containing
    non-UTF-8 filenames. The implementation enforces UTF-8 encoding and
    utilizes expect(), causing an immediate crash when encountering
    valid but non-UTF-8 paths. This diverges from GNU sort, which treats
    filenames as raw bytes. A local attacker can exploit this to crash
    the utility and disrupt automated pipelines.

* CVE-2026-35349:

    A vulnerability in the rm utility of uutils coreutils allows a
    bypass of the --preserve-root protection. The implementation uses a
    path-string check rather than comparing device and inode numbers to
    identify the root directory. An attacker or accidental user can
    bypass this safeguard by using a symbolic link that resolves to the
    root directory (e.g., /tmp/rootlink -> /), potentially leading to
    the unintended recursive deletion of the entire root filesystem.

* CVE-2026-35350:

    The cp utility in uutils coreutils fails to properly handle setuid
    and setgid bits when ownership preservation fails. When copying with
    the -p (preserve) flag, the utility applies the source mode bits
    even if the chown operation is unsuccessful. This can result in a
    user-owned copy retaining original privileged bits, creating
    unexpected privileged executables that violate local security
    policies. This differs from GNU cp, which clears these bits when
    ownership cannot be preserved.

* CVE-2026-35351:

    The mv utility in uutils coreutils fails to preserve file ownership
    during moves across different filesystem boundaries. The utility
    falls back to a copy-and-delete routine that creates the destination
    file using the caller's UID/GID rather than the source's metadata.
    This flaw breaks backups and migrations, causing files moved by a
    privileged user (e.g., root) to become root-owned unexpectedly,
    which can lead to information disclosure or restricted access for
    the intended owners.

* CVE-2026-35352:

    A Time-of-Check to Time-of-Use (TOCTOU) race condition exists in the
    mkfifo utility of uutils coreutils. The utility creates a FIFO and
    then performs a path-based chmod to set permissions. A local
    attacker with write access to the parent directory can swap the
    newly created FIFO for a symbolic link between these two operations.
    This redirects the chmod call to an arbitrary file, potentially
    enabling privilege escalation if the utility is run with elevated
    privileges.

* CVE-2026-35353:

    The mkdir utility in uutils coreutils incorrectly applies
    permissions when using the -m flag by creating a directory with
    umask-derived permissions (typically 0755) before subsequently
    changing them to the requested mode via a separate chmod system
    call. In multi-user environments, this introduces a brief window
    where a directory intended to be private is accessible to other
    users, potentially leading to unauthorized data access.

* CVE-2026-35354:

    A Time-of-Check to Time-of-Use (TOCTOU) vulnerability exists in the
    mv utility of uutils coreutils during cross-device moves. The
    extended attribute (xattr) preservation logic uses multiple path-
    based system calls that perform fresh path-to-inode lookups for each
    operation. A local attacker with write access to the directory can
    exploit this race to swap files between calls, causing the
    destination file to receive an inconsistent mix of security xattrs,
    such as SELinux labels or file capabilities.

* CVE-2026-35355:

    The install utility in uutils coreutils is vulnerable to a Time-of-
    Check to Time-of-Use (TOCTOU) race condition during file
    installation. The implementation unlinks an existing destination
    file and then recreates it using a path-based operation without the
    O_EXCL flag. A local attacker can exploit the window between the
    unlink and the subsequent creation to swap the path with a symbolic
    link, allowing them to redirect privileged writes to overwrite
    arbitrary system files.

* CVE-2026-35356:

    A Time-of-Check to Time-of-Use (TOCTOU) vulnerability exists in the
    install utility of uutils coreutils when using the -D flag. The
    command creates parent directories and subsequently performs a
    second path resolution to create the target file, neither of which
    is anchored to a directory file descriptor. An attacker with
    concurrent write access can replace a path component with a symbolic
    link between these operations, redirecting the privileged write to
    an arbitrary file system location.

* CVE-2026-35357:

    The cp utility in uutils coreutils is vulnerable to an information
    disclosure race condition. Destination files are initially created
    with umask-derived permissions (e.g., 0644) before being restricted
    to their final mode (e.g., 0600) later in the process. A local
    attacker can race to open the file during this window; once
    obtained, the file descriptor remains valid and readable even after
    the permissions are tightened, exposing sensitive or private file
    contents.

* CVE-2026-35358:

    The cp utility in uutils coreutils, when performing recursive copies
    (-R), incorrectly treats character and block device nodes as stream
    sources rather than preserving them. Because the implementation
    reads bytes into regular files at the destination instead of using
    mknod, device semantics are destroyed (e.g., /dev/null becomes a
    regular file). This behavior can lead to runtime denial of service
    through disk exhaustion or process hangs when reading from unbounded
    device nodes.

* CVE-2026-35359:

    A Time-of-Check to Time-of-Use (TOCTOU) vulnerability in the cp
    utility of uutils coreutils allows an attacker to bypass no-
    dereference intent. The utility checks if a source path is a
    symbolic link using path-based metadata but subsequently opens it
    without the O_NOFOLLOW flag. An attacker with concurrent write
    access can swap a regular file for a symbolic link during this
    window, causing a privileged cp process to copy the contents of
    arbitrary sensitive files into a destination controlled by the
    attacker.

* CVE-2026-35360:

    The touch utility in uutils coreutils is vulnerable to a Time-of-
    Check to Time-of-Use (TOCTOU) race condition during file creation.
    When the utility identifies a missing path, it later attempts
    creation using File::create(), which internally uses O_TRUNC. An
    attacker can exploit this window to create a file or swap a symlink
    at the target path, causing touch to truncate an existing file and
    leading to permanent data loss.

* CVE-2026-35361:

    The mknod utility in uutils coreutils fails to handle security
    labels atomically by creating device nodes before setting the
    SELinux context. If labeling fails, the utility attempts cleanup
    using std::fs::remove_dir, which cannot remove device nodes or
    FIFOs. This leaves mislabeled nodes behind with incorrect default
    contexts, potentially allowing unauthorized access to device nodes
    that should have been restricted by mandatory access controls.

* CVE-2026-35362:

    The safe_traversal module in uutils coreutils, which provides
    protection against Time-of-Check to Time-of-Use (TOCTOU) symlink
    races using file-descriptor-relative syscalls, is incorrectly
    limited to Linux targets. On other Unix-like systems such as macOS
    and FreeBSD, the utility fails to utilize these protections, leaving
    directory traversal operations vulnerable to symlink race
    conditions.

* CVE-2026-35363:

    A vulnerability in the rm utility of uutils coreutils allows the
    bypass of safeguard mechanisms intended to protect the current
    directory. While the utility correctly refuses to delete . or .., it
    fails to recognize equivalent paths with trailing slashes, such as
    ./ or .///. An accidental or malicious execution of rm -rf ./
    results in the silent recursive deletion of all contents within the
    current directory. The command further obscures the data loss by
    reporting a misleading 'Invalid input' error, which may cause users
    to miss the critical window for data recovery.

* CVE-2026-35364:

    A Time-of-Check to Time-of-Use (TOCTOU) race condition exists in the
    mv utility of uutils coreutils during cross-device operations. The
    utility removes the destination path before recreating it through a
    copy operation. A local attacker with write access to the
    destination directory can exploit this window to replace the
    destination with a symbolic link. The subsequent privileged move
    operation will follow the symlink, allowing the attacker to redirect
    the write and overwrite an arbitrary target file with contents from
    the source.

* CVE-2026-35365:

    The mv utility in uutils coreutils improperly handles directory
    trees containing symbolic links during moves across filesystem
    boundaries. Instead of preserving symlinks, the implementation
    expands them, copying the linked targets as real files or
    directories at the destination. This can lead to resource exhaustion
    (disk space or time) if symlinks point to large external
    directories, unexpected duplication of sensitive data into
    unintended locations, or infinite recursion and repeated copying in
    the presence of symlink loops.

* CVE-2026-35366:

    The printenv utility in uutils coreutils fails to display
    environment variables containing invalid UTF-8 byte sequences. While
    POSIX permits arbitrary bytes in environment strings, the uutils
    implementation silently skips these entries rather than printing the
    raw bytes. This vulnerability allows malicious environment variables
    (e.g., adversarial LD_PRELOAD values) to evade inspection by
    administrators or security auditing tools, potentially allowing
    library injection or other environment-based attacks to go
    undetected.

* CVE-2026-35367:

    The nohup utility in uutils coreutils creates its default output
    file, nohup.out, without specifying explicit restricted permissions.
    This causes the file to inherit umask-based permissions, typically
    resulting in a world-readable file (0644). In multi-user
    environments, this allows any user on the system to read the
    captured stdout/stderr output of a command, potentially exposing
    sensitive information. This behavior diverges from GNU coreutils,
    which creates nohup.out with owner-only (0600) permissions.

* CVE-2026-35368:

    A vulnerability exists in the chroot utility of uutils coreutils
    when using the --userspec option. The utility resolves the user
    specification via getpwnam() after entering the chroot but before
    dropping root privileges. On glibc-based systems, this can trigger
    the Name Service Switch (NSS) to load shared libraries (e.g.,
    libnss_*.so.2) from the new root directory. If the NEWROOT is
    writable by an attacker, they can inject a malicious NSS module to
    execute arbitrary code as root, facilitating a full container escape
    or privilege escalation.

* CVE-2026-35369:

    An argument parsing error in the kill utility of uutils coreutils
    incorrectly interprets kill -1 as a request to send the default
    signal (SIGTERM) to PID -1. Sending a signal to PID -1 causes the
    kernel to terminate all processes visible to the caller, potentially
    leading to a system crash or massive process termination. This
    differs from GNU coreutils, which correctly recognizes -1 as a
    signal number in this context and would instead report a missing PID
    argument.

* CVE-2026-35370:

    The id utility in uutils coreutils miscalculates the groups= section
    of its output. The implementation uses a user's real GID instead of
    their effective GID to compute the group list, leading to
    potentially divergent output compared to GNU coreutils. Because many
    scripts and automated processes rely on the output of id to make
    security-critical access-control or permission decisions, this
    discrepancy can lead to unauthorized access or security
    misconfigurations.

* CVE-2026-35371:

    The id utility in uutils coreutils exhibits incorrect behavior in
    its "pretty print" output when the real UID and effective UID
    differ. The implementation incorrectly uses the effective GID
    instead of the effective UID when performing a name lookup for the
    effective user. This results in misleading diagnostic output that
    can cause automated scripts or system administrators to make
    incorrect decisions regarding file permissions or access control.

* CVE-2026-35372:

    A logic error in the ln utility of uutils coreutils allows the
    utility to dereference a symbolic link target even when the --no-
    dereference (or -n) flag is explicitly provided. The implementation
    previously only honored the "no-dereference" intent if the --force
    (overwrite) mode was also enabled. This flaw causes ln to follow a
    symbolic link that points to a directory and create new links inside
    that target directory instead of treating the symbolic link itself
    as the destination. In environments where a privileged user or
    system script uses ln -n to update a symlink, a local attacker could
    manipulate existing symbolic links to redirect file creation into
    sensitive directories, potentially leading to unauthorized file
    creation or system misconfiguration.

* CVE-2026-35373:

    A logic error in the ln utility of uutils coreutils causes the
    program to reject source paths containing non-UTF-8 filename bytes
    when using target-directory forms (e.g., ln SOURCE... DIRECTORY).
    While GNU ln treats filenames as raw bytes and creates the links
    correctly, the uutils implementation enforces UTF-8 encoding,
    resulting in a failure to stat the file and a non-zero exit code. In
    environments where automated scripts or system tasks process valid
    but non-UTF-8 filenames common on Unix filesystems, this divergence
    causes the utility to fail, leading to a local denial of service for
    those specific operations.

* CVE-2026-35374:

    A Time-of-Check to Time-of-Use (TOCTOU) vulnerability exists in the
    split utility of uutils coreutils. The program attempts to prevent
    data loss by checking for identity between input and output files
    using their file paths before initiating the split operation.
    However, the utility subsequently opens the output file with
    truncation after this path-based validation is complete. A local
    attacker with write access to the directory can exploit this race
    window by manipulating mutable path components (e.g., swapping a
    path with a symbolic link). This can cause split to truncate and
    write to an unintended target file, potentially including the input
    file itself or other sensitive files accessible to the process,
    leading to permanent data loss.

* CVE-2026-35375:

    A logic error in the split utility of uutils coreutils causes the
    corruption of output filenames when provided with non-UTF-8 prefix
    or suffix inputs. The implementation utilizes to_string_lossy() when
    constructing chunk filenames, which automatically rewrites invalid
    byte sequences into the UTF-8 replacement character (U+FFFD). This
    behavior diverges from GNU split, which preserves raw pathname bytes
    intact. In environments utilizing non-UTF-8 encodings, this
    vulnerability leads to the creation of files with incorrect names,
    potentially causing filename collisions, broken automation, or the
    misdirection of output data.

* CVE-2026-35376:

    A Time-of-Check to Time-of-Use (TOCTOU) vulnerability exists in the
    chcon utility of uutils coreutils during recursive operations. The
    implementation resolves recursive targets using a fresh path lookup
    (via fts_accpath) rather than binding the traversal and label
    application to the specific directory state encountered during
    traversal. Because these operations are not anchored to file
    descriptors, a local attacker with write access to a directory tree
    can exploit timing-sensitive rename or symbolic link races to
    redirect a privileged recursive relabeling operation to unintended
    files or directories. This vulnerability breaks the hardening
    expectations for SELinux administration workflows and can lead to
    the unauthorized modification of security labels on sensitive system
    objects.

* CVE-2026-35377:

    A logic error in the env utility of uutils coreutils causes a
    failure to correctly parse command-line arguments when utilizing the
    -S (split-string) option. In GNU env, backslashes within single
    quotes are treated literally (with the exceptions of \\ and \').
    However, the uutils implementation incorrectly attempts to validate
    these sequences, resulting in an "invalid sequence" error and an
    immediate process termination with an exit status of 125 when
    encountering valid but unrecognized sequences like \a or \x. This
    divergence from GNU behavior breaks compatibility for automated
    scripts and administrative workflows that rely on standard split-
    string semantics, leading to a local denial of service for those
    operations.

* CVE-2026-35378:

    A logic error in the expr utility of uutils coreutils causes the
    program to evaluate parenthesized subexpressions during the parsing
    phase rather than at the execution phase. This implementation flaw
    prevents the utility from performing proper short-circuiting for
    logical OR (|) and AND (&) operations. As a result, arithmetic
    errors (such as division by zero) occurring within "dead" branches,
    branches that should be ignored due to short-circuiting, are raised
    as fatal errors. This divergence from GNU expr behavior can cause
    guarded expressions within shell scripts to fail with hard errors
    instead of returning expected boolean results, leading to premature
    script termination and breaking GNU-compatible shell control flow.

* CVE-2026-35379:

    A logic error in the tr utility of uutils coreutils causes the
    program to incorrectly define the [:graph:] and [:print:] character
    classes. The implementation mistakenly includes the ASCII space
    character (0x20) in the [:graph:] class and excludes it from the
    [:print:] class, effectively reversing the standard behavior
    established by POSIX and GNU coreutils. This vulnerability leads to
    unintended data modification or loss when the utility is used in
    automated scripts or data-cleaning pipelines that rely on standard
    character class semantics. For example, a command executed to delete
    all graphical characters while intending to preserve whitespace will
    incorrectly delete all ASCII spaces, potentially resulting in data
    corruption or logic failures in downstream processing.

* CVE-2026-35380:

    A logic error in the cut utility of uutils coreutils causes the
    program to incorrectly interpret the literal two-byte string '' (two
    single quotes) as an empty delimiter. The implementation mistakenly
    maps this string to the NUL character for both the -d (delimiter)
    and --output-delimiter options. This vulnerability can lead to
    silent data corruption or logic errors in automated scripts and data
    pipelines that process strings containing these characters, as the
    utility may unintentionally split or join data on NUL bytes rather
    than the intended literal characters.

* CVE-2026-35381:

    A logic error in the cut utility of uutils coreutils causes the
    utility to ignore the -s (only-delimited) flag when using the -z
    (null-terminated) and -d '' (empty delimiter) options together. The
    implementation incorrectly routes this specific combination through
    a specialized newline-delimiter code path that fails to check the
    record suppression status. Consequently, uutils cut emits the entire
    record plus a NUL byte instead of suppressing it. This divergence
    from GNU coreutils behavior creates a data integrity risk for
    automated pipelines that rely on cut -s to filter out undelimited
    data.

Collin

[1] https://discourse.ubuntu.com/t/an-update-on-rust-coreutils/80773
[2] https://discourse.ubuntu.com/t/carefully-but-purposefully-oxidising-ubuntu/56995
[3] https://github.com/uutils/coreutils/issues/10328
