X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13584" "Tuesday" "12" "February" "2019" "00:05:20" "+1100" "Aleksa Sarai" "cyphar@cyphar.com" "<20190211130520.xwi6vpay3sc56pza@yavin>" "461" "[oss-security] CVE-2019-5736: runc container breakout (all versions)" "^Cc:" nil nil "2" "2019021113:05:20" "[oss-security] CVE-2019-5736: runc container breakout (all versions)" (number mark "        cyphar@cypha Feb 12  461/13584 " thread-indent "\"[oss-security] CVE-2019-5736: runc container breakout (all versions)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14114 invoked by uid 550); 11 Feb 2019 13:07:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13338 invoked from network); 11 Feb 2019 13:05:42 -0000
X-Virus-Scanned: amavisd-new at heinlein-support.de
Message-ID: <20190211130520.xwi6vpay3sc56pza@yavin>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ua4bo53gf6xna27m"
Content-Disposition: inline
Cc: dev@opencontainers.org, security-announce@opencontainers.org
Date: Tue, 12 Feb 2019 00:05:20 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-5736: runc container breakout (all versions)
To: oss-security@lists.openwall.com

--ua4bo53gf6xna27m
Content-Type: multipart/mixed; boundary="7qpjvy5nzlsaqpoi"
Content-Disposition: inline


--7qpjvy5nzlsaqpoi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[        Patch CRD: 2019-02-11 15:00 CET ]]
[[ Exploit Code CRD: 2019-02-18 15:00 CET ]]

Hello,

I am one of the maintainers of runc (the underlying container runtime
underneath Docker, cri-o, containerd, Kubernetes, and so on). We
recently had a vulnerability reported which we have verified and have a
patch for.

The researchers who found this vulnerability are:
  * Adam Iwaniuk
  * Borys Pop=C5=82awski

In addition, Aleksa Sarai (me) discovered that LXC was also vulnerable
to a more convoluted version of this flaw.

=3D=3D OVERVIEW =3D=3D

The vulnerability allows a malicious container to (with minimal user
interaction) overwrite the host runc binary and thus gain root-level
code execution on the host. The level of user interaction is being able
to run any command (it doesn't matter if the command is not
attacker-controlled) as root within a container in either of these
contexts:

  * Creating a new container using an attacker-controlled image.
  * Attaching (docker exec) into an existing container which the
    attacker had previous write access to.

This vulnerability is *not* blocked by the default AppArmor policy, nor
by the default SELinux policy on Fedora[++] (because container processes
appear to be running as container_runtime_t). However, it *is* blocked
through correct use of user namespaces (where the host root is not
mapped into the container's user namespace).

Our CVSSv3 vector is (with a score of 7.2):

  AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/A:H

The assigned CVE for this issue is CVE-2019-5736.

[++]: This is only the case for the "moby-engine" package on Fedora. The
	  "docker" package as well as podman are protected against this
	  exploit because they run container processes as container_t.

=3D=3D PATCHES =3D=3D

I have attached the relevant patch which fixes this issue. This patch is
based on HEAD, but the code in libcontainer/nsenter/ changes so
infrequently that it should apply cleanly to any old version of the runc
codebase you are dealing with.

Please note that the patch I have pushed to runc master[1] is a modified
version of this patch -- even though it is functionally identical
(though we would recommend using the upstream one if you haven't patched
using the attached one already).

=3D=3D NON-ESSENTIAL EXPLOIT CODE =3D=3D

Several vendors have asked for exploit code to ensure that the patches
actually solve the issue. Due to the severity of the issue (especially
for public cloud vendors), we decided to provide the attached exploit
code. This exploit code was written by me, and is more generic than the
original exploit code provided by the researchers and works against LXC
(it could likely be used on other vulnerable runtimes with no
significant modification). Details on how to use the exploit code are
provided in the README.

As per OpenWall rules, this exploit code will be published *publicly* 7
days after the CRD (which is 2019-02-18). *If you have a container
runtime, please verify that you are not vulnerable to this issue
beforehand.*

=3D=3D IMPACT ON OTHER PROJECTS =3D=3D

It should be noted that upon further investigation I've discovered that
LXC has a similar vulnerability, and they have also pushed a similar
patch[2] which we co-developed. LXC is a bit harder to exploit, but the
same fundamental flaw exists.

After some discussion with the systemd-nspawn folks, it appears that
they aren't vulnerable (because their method of attaching to a container
uses a different method to LXC and runc).

I have been contacted by folks from Apache Mesos who said they were also
vulnerable (I believe just using the exploit code that will be
provided). It is quite likely that most container runtimes are
vulnerable to this flaw, unless they took very strange mitigations
before-hand.

=3D=3D OTHER NEWS =3D=3D

We have set up an announcement list for future security vulnerabilities,
and you can see the process for joining here[3] (it's based on the
Kubernetes security-announce mailing list). Please join if you
distribute any container runtimes that depend on runc (or other OCI
projects).

[1]: https://github.com/opencontainers/runc/commit/0a8e4117e7f715d5fbeef398=
405813ce8e88558b
[2]: https://github.com/lxc/lxc/commit/6400238d08cdf1ca20d49bafb85f4e224348=
bf9d
[3]: https://github.com/opencontainers/org/blob/master/security.md

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--7qpjvy5nzlsaqpoi
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="0001-nsenter-clone-proc-self-exe-to-avoid-exposing-host-b.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 604a8f8120ef128c0a5bc778e71909eeb0906842 Mon Sep 17 00:00:00 2001
From: Aleksa Sarai <asarai@suse.de>
Date: Wed, 9 Jan 2019 13:40:01 +1100
Subject: [PATCH] nsenter: clone /proc/self/exe to avoid exposing host binary
 to container

There are quite a few circumstances where /proc/self/exe pointing to a
pretty important container binary is a _bad_ thing, so to avoid this we
have to make a copy (preferably doing self-clean-up and not being
writeable).

As a hotfix we require memfd_create(2), but we can always extend this to
use a scratch MNT_DETACH overlayfs or tmpfs. The main downside to this
approach is no page-cache sharing for the runc binary (which overlayfs
would give us) but this is far less complicated.

This is only done during nsenter so that it happens transparently to the
Go code, and any libcontainer users benefit from it. This also makes
ExtraFiles and --preserve-fds handling trivial (because we don't need to
worry about it).

Fixes: CVE-2019-5736
Signed-off-by: Aleksa Sarai <asarai@suse.de>
---
 libcontainer/nsenter/cloned_binary.c | 236 +++++++++++++++++++++++++++
 libcontainer/nsenter/nsexec.c        |  11 ++
 2 files changed, 247 insertions(+)
 create mode 100644 libcontainer/nsenter/cloned_binary.c

diff --git a/libcontainer/nsenter/cloned_binary.c b/libcontainer/nsenter/cl=
oned_binary.c
new file mode 100644
index 000000000000..ec383c173dd2
--- /dev/null
+++ b/libcontainer/nsenter/cloned_binary.c
@@ -0,0 +1,236 @@
+#define _GNU_SOURCE
+#include <unistd.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <stdbool.h>
+#include <string.h>
+#include <limits.h>
+#include <fcntl.h>
+
+#include <sys/types.h>
+#include <sys/stat.h>
+#include <sys/vfs.h>
+#include <sys/mman.h>
+#include <sys/sendfile.h>
+#include <sys/syscall.h>
+
+#include <linux/magic.h>
+#include <linux/memfd.h>
+
+#define MEMFD_COMMENT "runc_cloned:/proc/self/exe"
+#define MEMFD_LNKNAME "/memfd:" MEMFD_COMMENT " (deleted)"
+
+/* Use our own wrapper for memfd_create. */
+#if !defined(SYS_memfd_create) && defined(__NR_memfd_create)
+#  define SYS_memfd_create __NR_memfd_create
+#endif
+#ifndef SYS_memfd_create
+#  error "memfd_create(2) syscall not supported by this glibc version"
+#endif
+int memfd_create(const char *name, unsigned int flags)
+{
+	return syscall(SYS_memfd_create, name, flags);
+}
+
+/* This comes directly from <linux/fcntl.h>. */
+#ifndef F_LINUX_SPECIFIC_BASE
+# define F_LINUX_SPECIFIC_BASE 1024
+#endif
+#ifndef F_ADD_SEALS
+# define F_ADD_SEALS (F_LINUX_SPECIFIC_BASE + 9)
+# define F_GET_SEALS (F_LINUX_SPECIFIC_BASE + 10)
+#endif
+#ifndef F_SEAL_SEAL
+# define F_SEAL_SEAL   0x0001	/* prevent further seals from being set */
+# define F_SEAL_SHRINK 0x0002	/* prevent file from shrinking */
+# define F_SEAL_GROW   0x0004	/* prevent file from growing */
+# define F_SEAL_WRITE  0x0008	/* prevent writes */
+#endif
+
+/*
+ * Verify whether we are currently in a self-cloned program. It's not real=
ly
+ * possible to trivially identify a memfd compared to a regular tmpfs file=
, so
+ * the best we can do is to check whether the readlink(2) looks okay and t=
hat
+ * it is on a tmpfs.
+ */
+static int is_self_cloned(void)
+{
+	struct statfs statfsbuf =3D {0};
+	char linkname[PATH_MAX + 1] =3D {0};
+
+	if (statfs("/proc/self/exe", &statfsbuf) < 0)
+		return -1;
+	if (readlink("/proc/self/exe", linkname, PATH_MAX) < 0)
+		return -1;
+
+	return statfsbuf.f_type =3D=3D TMPFS_MAGIC &&
+		!strncmp(linkname, MEMFD_LNKNAME, PATH_MAX);
+}
+
+/*
+ * Basic wrapper around mmap(2) that gives you the file length so you can
+ * safely treat it as an ordinary buffer. Only gives you read access.
+ */
+static char *read_file(char *path, size_t *length)
+{
+	int fd;
+	char buf[4096], *copy =3D NULL;
+
+	if (!length)
+		goto err;
+	*length =3D 0;
+
+	fd =3D open(path, O_RDONLY|O_CLOEXEC);
+	if (fd < 0)
+		goto err_free;
+
+	for (;;) {
+		int n;
+		char *old =3D copy;
+
+		n =3D read(fd, buf, sizeof(buf));
+		if (n < 0)
+			goto err_fd;
+		if (!n)
+			break;
+
+		do {
+			copy =3D realloc(old, (*length + n) * sizeof(*old));
+		} while(!copy);
+
+		memcpy(copy + *length, buf, n);
+		*length +=3D n;
+	}
+	close(fd);
+	return copy;
+
+err_fd:
+	close(fd);
+err_free:
+	free(copy);
+err:
+	return NULL;
+}
+
+/*
+ * A poor-man's version of "xargs -0". Basically parses a given block of
+ * NUL-delimited data, within the given length and adds a pointer to each =
entry
+ * to the array of pointers.
+ */
+static int parse_xargs(char *data, int data_length, char ***output)
+{
+	int num =3D 0;
+	char *cur =3D data;
+
+	if (!data || *output)
+		return -1;
+
+	do {
+		*output =3D malloc(sizeof(**output));
+	} while (!*output);
+
+	while (cur < data + data_length) {
+		char **old =3D *output;
+
+		num++;
+		do {
+			*output =3D realloc(old, (num + 1) * sizeof(*old));
+		} while (!*output);
+
+		(*output)[num - 1] =3D cur;
+		cur +=3D strlen(cur) + 1;
+	}
+	(*output)[num] =3D NULL;
+	return num;
+}
+
+/*
+ * "Parse" out argv and envp from /proc/self/cmdline and /proc/self/enviro=
n.
+ * This is necessary because we are running in a context where we don't ha=
ve a
+ * main() that we can just get the arguments from.
+ */
+static int fetchve(char ***argv, char ***envp)
+{
+	char *cmdline, *environ;
+	size_t cmdline_size, environ_size;
+
+	cmdline =3D read_file("/proc/self/cmdline", &cmdline_size);
+	if (!cmdline)
+		goto err;
+	environ =3D read_file("/proc/self/environ", &environ_size);
+	if (!environ)
+		goto err_free;
+
+	if (parse_xargs(cmdline, cmdline_size, argv) <=3D 0)
+		goto err_free_both;
+	if (parse_xargs(environ, environ_size, envp) <=3D 0)
+		goto err_free_both;
+
+	return 0;
+
+err_free_both:
+	free(environ);
+err_free:
+	free(cmdline);
+err:
+	return -1;
+}
+
+static int clone_binary(void)
+{
+	int binfd, memfd, err;
+	ssize_t sent =3D 0;
+	struct stat statbuf =3D {0};
+
+	binfd =3D open("/proc/self/exe", O_RDONLY|O_CLOEXEC);
+	if (binfd < 0)
+		goto err;
+	if (fstat(binfd, &statbuf) < 0)
+		goto err_binfd;
+
+	memfd =3D memfd_create(MEMFD_COMMENT, MFD_CLOEXEC|MFD_ALLOW_SEALING);
+	if (memfd < 0)
+		goto err_binfd;
+
+	while (sent < statbuf.st_size) {
+		ssize_t n =3D sendfile(memfd, binfd, NULL, statbuf.st_size - sent);
+		if (n < 0)
+			goto err_memfd;
+		sent +=3D n;
+	}
+
+	err =3D fcntl(memfd, F_ADD_SEALS, F_SEAL_SHRINK|F_SEAL_GROW|F_SEAL_WRITE|=
F_SEAL_SEAL);
+	if (err < 0)
+		goto err_memfd;
+
+	close(binfd);
+	return memfd;
+
+err_memfd:
+	close(memfd);
+err_binfd:
+	close(binfd);
+err:
+	return -1;
+}
+
+int ensure_cloned_binary(void)
+{
+	int execfd;
+	char **argv =3D NULL, **envp =3D NULL;
+
+	/* Check that we're not self-cloned, and if we are then bail. */
+	int cloned =3D is_self_cloned();
+	if (cloned !=3D 0)
+		return cloned;
+
+	if (fetchve(&argv, &envp) < 0)
+		return -1;
+
+	execfd =3D clone_binary();
+	if (execfd < 0)
+		return -1;
+
+	fexecve(execfd, argv, envp);
+	return -1;
+}
diff --git a/libcontainer/nsenter/nsexec.c b/libcontainer/nsenter/nsexec.c
index 28269dfc027f..4fdfec1b7b89 100644
--- a/libcontainer/nsenter/nsexec.c
+++ b/libcontainer/nsenter/nsexec.c
@@ -534,6 +534,9 @@ void join_namespaces(char *nslist)
 	free(namespaces);
 }
=20
+/* Defined in cloned_binary.c. */
+int ensure_cloned_binary(void);
+
 void nsexec(void)
 {
 	int pipenum;
@@ -549,6 +552,14 @@ void nsexec(void)
 	if (pipenum =3D=3D -1)
 		return;
=20
+	/*
+	 * We need to re-exec if we are not in a cloned binary. This is necessary
+	 * to ensure that containers won't be able to access the host binary
+	 * through /proc/self/exe. See CVE-2019-5736.
+	 */
+	if (ensure_cloned_binary() < 0)
+		bail("could not ensure we are a cloned binary");
+
 	/* Parse all of the netlink configuration. */
 	nl_parse(pipenum, &config);
=20
--=20
2.20.1


--7qpjvy5nzlsaqpoi--

--ua4bo53gf6xna27m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEb6Gz4/mhjNy+aiz1Snvnv3Dem58FAlxhcwwACgkQSnvnv3De
m59CVg/+OxBTekv+vDp+dGLMTfPccbfA8Robm0OGhZWX2hf76c2h4VcDfY+Kkqdw
ESnaIaacsO2kmZmX7PeYCaxifThc1bMWa6is0/8geguwYyQYWgHMGE62j/NLr0SL
Ivnsvf92ThbA0o+66J7wQwQ3tcyP2zgg804UCPhVb8MAozu/ejRRZ8xNOcnqb/iM
AURNLc+L6WLYfCYGSABj2zEY28VWxXy6PIbCbZQfcOiiOg0yHMvy0J7IMxIlS/LX
oKQLdQaL65Wh+oXP6U7KHzNA99ICZb4tzXv5Nx4mVwcjYV2zrLb0tv0UCJXtRFrt
Jp+HtkJshClslP22pOlDabb+4rlUWeV1/ni4fUa5FHwKxEInW8XzrMO6y5NcZfwk
0Y7vyLUEPvK8CXK1kgeoPBSEPj7U1u4rW5w+83QJqBEVijCHuLLX3AZcM2G7p9VA
h0FqN+z2cd8+s+Ut/+k2ZT0fMcU2PnpyQn3JeDLvQNKxIi9+Udomact6WF6Np2h0
xArZV5EcCIc7MdRQQ27rLw2F4/1E1aG/AFOKl86DdHCtPzGyUxN7yFNhXENz3ha2
NjFN25EH7KG6lsiywIN9pfSoIhlerLh10i31eOR5JLciQuqcmoyKPT5+yoYCOkkV
k9C5I7CYVwBvXsTCPk2APkA0yOPqZ4lzfOupf38s7jDNCsoSawc=
=ayCB
-----END PGP SIGNATURE-----

--ua4bo53gf6xna27m--
