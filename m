Received: (qmail 13352 invoked by uid 550); 3 Sep 2024 02:05:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13334 invoked from network); 3 Sep 2024 02:05:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1725329115;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=2CMk66lUOUauD9rzE/2km4PPNuVbvRGMozg3qlFsfI8=;
	b=1VPSOlND9ohgq5YQYmZ8fsSZtHglvke9//ZKz2ozuHJDn6tvbkurAkqLP0XmhjkRHOFjDt
	P5riQaFepZKU9JbaZmZN/yDlr2X6rh/x7A9yXlRTkU46CrAp+H++cKNfLYHlVn3uKmdNGZ
	0Sb2wl/0jLrRTOB80vgdZf2keLnS3c/FfVdCUhwNdn9ulA5VaDba9zg2+Gzi8ax1KQTLMn
	3BnSBfDo3/zacjBjWTyNOP6ww2n1kgiLwe5TUxmrIqdS+dUrK3w7uBmyYdqZLxAXGDu2au
	pz9KZR0u6g50WZmegRE/7Rnh6ksUZC915K49Fu1/IyHe5Wq3DBuh80oMgIcJMA==
Date: Tue, 3 Sep 2024 12:05:05 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: security-announce@opencontainers.org, oss-security@lists.openwall.com
Message-ID: <20240903.014649-personal.smudges.long.champ-QiEEimlh1P@cyphar.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xt6h6z7nskdb2xjd"
Content-Disposition: inline
Subject: [oss-security] CVE-2024-45310: runc can be tricked into creating empty
 files/directories on host

--xt6h6z7nskdb2xjd
Content-Type: multipart/mixed; boundary="vfxgevphsseqorax"
Content-Disposition: inline


--vfxgevphsseqorax
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Due to the low severity of this CVE, this security patch is being released =
with
NO embargo period.

[ Summary ]

runc 1.1.13 and earlier as well as 1.2.0-rc2 and earlier can be tricked into
creating empty files or directories in arbitrary locations in the host
filesystem by sharing a volume between two containers and exploiting a race
with os.MkdirAll. While this can be used to create empty files, existing
files **will not** be truncated.

An attacker must have the ability to start containers using some kind of cu=
stom
volume configuration. Containers using user namespaces are still affected, =
but
the scope of places an attacker can create inodes can be significantly redu=
ced.
Sufficiently strict LSM policies (SELinux/Apparmor) can also in principle b=
lock
this attack -- we suspect the industry standard SELinux policy may restrict
this attack's scope but the exact scope of protection hasn't been analysed.

This is exploitable using runc directly as well as through Docker and
Kubernetes.

The CVSS score for this vulnerability is
CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:C/C:N/I:L/A:N (Low severity, 3.6).

[ Workarounds ]

Using user namespaces restricts this attack fairly significantly such that =
the
attacker can only create inodes in directories that the remapped root
user/group has write access to. Unless the root user is remapped to an actu=
al
user on the host (such as with rootless containers that don't use
/etc/sub[ug]id), this in practice means that an attacker would only be able=
 to
create inodes in world-writable directories.

A strict enough SELinux or AppArmor policy could in principle also restrict=
 the
scope if a specific label is applied to the runc runtime, though we haven't
thoroughly tested to what extent the standard existing policies block this
attack nor what exact policies are needed to sufficiently restrict this att=
ack.

[ Patches ]

I've attached patches that apply cleanly for runc 1.1.13 and HEAD. We have =
also
released runc 1.1.14 and 1.2.0-rc3 which contain these patches, so if you
upgrade there is no need to apply these patches.

 * CVE-2024-45310.patch applies cleanly on top of runc HEAD[1]. If you are
   backporting the patch to apply on top of 1.2.0-rc2, you will need to also
   apply [2] at least.
 * 1.1-*.patch apply cleanly on top of 1.1.13.

[ Credit ]

Thanks to Rodrigo Campos Catelin (@rata) and Alban Crequy (@alban) from
Microsoft for discovering and reporting this vulnerability.

[ References ]

The GitHub security advisory for this issue will be visible here[3] once it=
 has
become public.

[1]: 346b818dad833a5ae8ab55d670b716dadd45950e at time of writing.
[2]: https://github.com/opencontainers/runc/pull/4359
[3]: https://github.com/opencontainers/runc/security/advisories/GHSA-jfvp-7=
x6p-h2pv

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--vfxgevphsseqorax
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment;
	filename="1.1-0001-rootfs-fix-can-we-mount-on-top-of-proc-check.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 611eaeb1f139fdf06864995b264d18c50864c658 Mon Sep 17 00:00:00 2001
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Tue, 2 Jul 2024 20:12:04 +1000
Subject: [PATCH runc 1.1 1/3] [1.1] rootfs: fix 'can we mount on top of /pr=
oc'
 check

(This is a cherry-pick of cdff09ab875159d004035990c0d45e8bdf20ed35 but
modified so that changes like 8e8b136c4923a and a60933bb24565 don't also
need to be backported. Ideally we would backport the entire "remove all
mount logic from nsexec" series, but that would be a bit too much.)

Our previous test for whether we can mount on top of /proc incorrectly
assumed that it would only be called with bind-mount sources. This meant
that having a non bind-mount entry for a pseudo-filesystem (like
overlayfs) with a dummy source set to /proc on the host would let you
bypass the check, which could easily lead to security issues.

In addition, the check should be applied more uniformly to all mount
types, so fix that as well. And add some tests for some of the tricky
cases to make sure we protect against them properly.

Fixes: 331692baa7af ("Only allow proc mount if it is procfs")
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 libcontainer/container_linux.go   |  2 +-
 libcontainer/rootfs_linux.go      | 65 +++++++++++++-------
 libcontainer/rootfs_linux_test.go | 99 +++++++++++++++++++++++++++----
 3 files changed, 131 insertions(+), 35 deletions(-)

diff --git a/libcontainer/container_linux.go b/libcontainer/container_linux=
.go
index 40b332f98104..7eb3a99a9d66 100644
--- a/libcontainer/container_linux.go
+++ b/libcontainer/container_linux.go
@@ -1300,7 +1300,7 @@ func (c *linuxContainer) makeCriuRestoreMountpoints(m=
 *configs.Mount) error {
 		if err !=3D nil {
 			return err
 		}
-		if err :=3D checkProcMount(c.config.Rootfs, dest, ""); err !=3D nil {
+		if err :=3D checkProcMount(c.config.Rootfs, dest, m, ""); err !=3D nil {
 			return err
 		}
 		if err :=3D os.MkdirAll(dest, 0o755); err !=3D nil {
diff --git a/libcontainer/rootfs_linux.go b/libcontainer/rootfs_linux.go
index 52ad3ba121fa..f66267307e5e 100644
--- a/libcontainer/rootfs_linux.go
+++ b/libcontainer/rootfs_linux.go
@@ -244,7 +244,7 @@ func prepareBindMount(m *configs.Mount, rootfs string, =
mountFd *int) error {
 	if dest, err =3D securejoin.SecureJoin(rootfs, m.Destination); err !=3D n=
il {
 		return err
 	}
-	if err :=3D checkProcMount(rootfs, dest, source); err !=3D nil {
+	if err :=3D checkProcMount(rootfs, dest, m, source); err !=3D nil {
 		return err
 	}
 	if err :=3D createIfNotExists(dest, stat.IsDir()); err !=3D nil {
@@ -509,7 +509,7 @@ func mountToRootfs(m *configs.Mount, c *mountConfig) er=
ror {
 		}
 		return mountCgroupV1(m, c)
 	default:
-		if err :=3D checkProcMount(rootfs, dest, m.Source); err !=3D nil {
+		if err :=3D checkProcMount(rootfs, dest, m, m.Source); err !=3D nil {
 			return err
 		}
 		if err :=3D os.MkdirAll(dest, 0o755); err !=3D nil {
@@ -557,11 +557,17 @@ func getCgroupMounts(m *configs.Mount) ([]*configs.Mo=
unt, error) {
 	return binds, nil
 }
=20
-// checkProcMount checks to ensure that the mount destination is not over =
the top of /proc.
-// dest is required to be an abs path and have any symlinks resolved befor=
e calling this function.
+// Taken from <include/linux/proc_ns.h>. If a file is on a filesystem of t=
ype
+// PROC_SUPER_MAGIC, we're guaranteed that only the root of the superblock=
 will
+// have this inode number.
+const procRootIno =3D 1
+
+// checkProcMount checks to ensure that the mount destination is not over =
the
+// top of /proc. dest is required to be an abs path and have any symlinks
+// resolved before calling this function.
 //
-// if source is nil, don't stat the filesystem.  This is used for restore =
of a checkpoint.
-func checkProcMount(rootfs, dest, source string) error {
+// source is "" when doing criu restores.
+func checkProcMount(rootfs, dest string, m *configs.Mount, source string) =
error {
 	const procPath =3D "/proc"
 	path, err :=3D filepath.Rel(filepath.Join(rootfs, procPath), dest)
 	if err !=3D nil {
@@ -572,18 +578,39 @@ func checkProcMount(rootfs, dest, source string) erro=
r {
 		return nil
 	}
 	if path =3D=3D "." {
-		// an empty source is pasted on restore
+		// Skip this check for criu restores.
+		// NOTE: This is a special case kept from the original implementation,
+		// only present for the 1.1.z branch to avoid any possible breakage in
+		// a patch release. This check was removed in commit cdff09ab8751
+		// ("rootfs: fix 'can we mount on top of /proc' check") in 1.2, because
+		// it doesn't make sense with the new IsBind()-based checks.
 		if source =3D=3D "" {
 			return nil
 		}
-		// only allow a mount on-top of proc if it's source is "proc"
-		isproc, err :=3D isProc(source)
-		if err !=3D nil {
-			return err
-		}
-		// pass if the mount is happening on top of /proc and the source of
-		// the mount is a proc filesystem
-		if isproc {
+		// Only allow bind-mounts on top of /proc, and only if the source is a
+		// procfs mount.
+		if m.IsBind() {
+			var fsSt unix.Statfs_t
+			if err :=3D unix.Statfs(source, &fsSt); err !=3D nil {
+				return &os.PathError{Op: "statfs", Path: source, Err: err}
+			}
+			if fsSt.Type =3D=3D unix.PROC_SUPER_MAGIC {
+				var uSt unix.Stat_t
+				if err :=3D unix.Stat(source, &uSt); err !=3D nil {
+					return &os.PathError{Op: "stat", Path: source, Err: err}
+				}
+				if uSt.Ino !=3D procRootIno {
+					// We cannot error out in this case, because we've
+					// supported these kinds of mounts for a long time.
+					// However, we would expect users to bind-mount the root of
+					// a real procfs on top of /proc in the container. We might
+					// want to block this in the future.
+					logrus.Warnf("bind-mount %v (source %v) is of type procfs but is not =
the root of a procfs (inode %d). Future versions of runc might block this c=
onfiguration -- please report an issue to <https://github.com/opencontainer=
s/runc> if you see this warning.", dest, source, uSt.Ino)
+				}
+				return nil
+			}
+		} else if m.Device =3D=3D "proc" {
+			// Fresh procfs-type mounts are always safe to mount on top of /proc.
 			return nil
 		}
 		return fmt.Errorf("%q cannot be mounted because it is not of type proc",=
 dest)
@@ -617,14 +644,6 @@ func checkProcMount(rootfs, dest, source string) error=
 {
 	return fmt.Errorf("%q cannot be mounted because it is inside /proc", dest)
 }
=20
-func isProc(path string) (bool, error) {
-	var s unix.Statfs_t
-	if err :=3D unix.Statfs(path, &s); err !=3D nil {
-		return false, &os.PathError{Op: "statfs", Path: path, Err: err}
-	}
-	return s.Type =3D=3D unix.PROC_SUPER_MAGIC, nil
-}
-
 func setupDevSymlinks(rootfs string) error {
 	links :=3D [][2]string{
 		{"/proc/self/fd", "/dev/fd"},
diff --git a/libcontainer/rootfs_linux_test.go b/libcontainer/rootfs_linux_=
test.go
index 223f75e82666..9a5f7b1e6d7b 100644
--- a/libcontainer/rootfs_linux_test.go
+++ b/libcontainer/rootfs_linux_test.go
@@ -3,52 +3,129 @@ package libcontainer
 import (
 	"testing"
=20
+	"golang.org/x/sys/unix"
+
 	"github.com/opencontainers/runc/libcontainer/configs"
 )
=20
-func TestCheckMountDestOnProc(t *testing.T) {
+func TestCheckMountDestInProc(t *testing.T) {
+	m :=3D &configs.Mount{
+		Destination: "/proc/sys",
+		Source:      "/proc/sys",
+		Device:      "bind",
+		Flags:       unix.MS_BIND,
+	}
 	dest :=3D "/rootfs/proc/sys"
-	err :=3D checkProcMount("/rootfs", dest, "")
+	err :=3D checkProcMount("/rootfs", dest, m, m.Source)
 	if err =3D=3D nil {
 		t.Fatal("destination inside proc should return an error")
 	}
 }
=20
-func TestCheckMountDestOnProcChroot(t *testing.T) {
+func TestCheckProcMountOnProc(t *testing.T) {
+	m :=3D &configs.Mount{
+		Destination: "/proc",
+		Source:      "foo",
+		Device:      "proc",
+	}
 	dest :=3D "/rootfs/proc/"
-	err :=3D checkProcMount("/rootfs", dest, "/proc")
+	err :=3D checkProcMount("/rootfs", dest, m, m.Source)
 	if err !=3D nil {
-		t.Fatal("destination inside proc when using chroot should not return an =
error")
+		t.Fatalf("procfs type mount on /proc should not return an error: %v", er=
r)
+	}
+}
+
+func TestCheckBindMountOnProc(t *testing.T) {
+	m :=3D &configs.Mount{
+		Destination: "/proc",
+		Source:      "/proc/self",
+		Device:      "bind",
+		Flags:       unix.MS_BIND,
+	}
+	dest :=3D "/rootfs/proc/"
+	err :=3D checkProcMount("/rootfs", dest, m, m.Source)
+	if err !=3D nil {
+		t.Fatalf("bind-mount of procfs on top of /proc should not return an erro=
r (for now): %v", err)
+	}
+}
+
+func TestCheckTrickyMountOnProc(t *testing.T) {
+	// Make a non-bind mount that looks like a bit like a bind-mount.
+	m :=3D &configs.Mount{
+		Destination: "/proc",
+		Source:      "/proc",
+		Device:      "overlay",
+		Data:        "lowerdir=3D/tmp/fakeproc,upperdir=3D/tmp/fakeproc2,workdir=
=3D/tmp/work",
+	}
+	dest :=3D "/rootfs/proc/"
+	err :=3D checkProcMount("/rootfs", dest, m, m.Source)
+	if err =3D=3D nil {
+		t.Fatalf("dodgy overlayfs mount on top of /proc should return an error")
+	}
+}
+
+func TestCheckTrickyBindMountOnProc(t *testing.T) {
+	// Make a bind mount that looks like it might be a procfs mount.
+	m :=3D &configs.Mount{
+		Destination: "/proc",
+		Source:      "/sys",
+		Device:      "proc",
+		Flags:       unix.MS_BIND,
+	}
+	dest :=3D "/rootfs/proc/"
+	err :=3D checkProcMount("/rootfs", dest, m, m.Source)
+	if err =3D=3D nil {
+		t.Fatalf("dodgy bind-mount on top of /proc should return an error")
 	}
 }
=20
 func TestCheckMountDestInSys(t *testing.T) {
+	m :=3D &configs.Mount{
+		Destination: "/sys/fs/cgroup",
+		Source:      "tmpfs",
+		Device:      "tmpfs",
+	}
 	dest :=3D "/rootfs//sys/fs/cgroup"
-	err :=3D checkProcMount("/rootfs", dest, "")
+	err :=3D checkProcMount("/rootfs", dest, m, m.Source)
 	if err !=3D nil {
-		t.Fatal("destination inside /sys should not return an error")
+		t.Fatalf("destination inside /sys should not return an error: %v", err)
 	}
 }
=20
 func TestCheckMountDestFalsePositive(t *testing.T) {
+	m :=3D &configs.Mount{
+		Destination: "/sysfiles/fs/cgroup",
+		Source:      "tmpfs",
+		Device:      "tmpfs",
+	}
 	dest :=3D "/rootfs/sysfiles/fs/cgroup"
-	err :=3D checkProcMount("/rootfs", dest, "")
+	err :=3D checkProcMount("/rootfs", dest, m, m.Source)
 	if err !=3D nil {
 		t.Fatal(err)
 	}
 }
=20
 func TestCheckMountDestNsLastPid(t *testing.T) {
+	m :=3D &configs.Mount{
+		Destination: "/proc/sys/kernel/ns_last_pid",
+		Source:      "lxcfs",
+		Device:      "fuse.lxcfs",
+	}
 	dest :=3D "/rootfs/proc/sys/kernel/ns_last_pid"
-	err :=3D checkProcMount("/rootfs", dest, "/proc")
+	err :=3D checkProcMount("/rootfs", dest, m, m.Source)
 	if err !=3D nil {
-		t.Fatal("/proc/sys/kernel/ns_last_pid should not return an error")
+		t.Fatalf("/proc/sys/kernel/ns_last_pid should not return an error: %v", =
err)
 	}
 }
=20
 func TestCheckCryptoFipsEnabled(t *testing.T) {
+	m :=3D &configs.Mount{
+		Destination: "/proc/sys/crypto/fips_enabled",
+		Source:      "tmpfs",
+		Device:      "tmpfs",
+	}
 	dest :=3D "/rootfs/proc/sys/crypto/fips_enabled"
-	err :=3D checkProcMount("/rootfs", dest, "/proc")
+	err :=3D checkProcMount("/rootfs", dest, m, m.Source)
 	if err !=3D nil {
 		t.Fatalf("/proc/sys/crypto/fips_enabled should not return an error: %v",=
 err)
 	}
--=20
2.46.0


--vfxgevphsseqorax
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment;
	filename="1.1-0002-rootfs-consolidate-mountpoint-creation-logic.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 2f129075e0dbf8b1d8c68c03c8c06e65638793d0 Mon Sep 17 00:00:00 2001
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Mon, 1 Jul 2024 15:12:01 +1000
Subject: [PATCH runc 1.1 2/3] [1.1] rootfs: consolidate mountpoint creation
 logic

The logic for how we create mountpoints is spread over each mountpoint
preparation function, when in reality the behaviour is pretty uniform
with only a handful of exceptions. So just move it all to one function
that is easier to understand.

Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 libcontainer/container_linux.go  |  28 ++----
 libcontainer/rootfs_linux.go     | 160 ++++++++++++++-----------------
 libcontainer/utils/utils_unix.go |  15 +++
 3 files changed, 94 insertions(+), 109 deletions(-)

diff --git a/libcontainer/container_linux.go b/libcontainer/container_linux=
.go
index 7eb3a99a9d66..0c07ae6c875a 100644
--- a/libcontainer/container_linux.go
+++ b/libcontainer/container_linux.go
@@ -1276,8 +1276,7 @@ func (c *linuxContainer) restoreNetwork(req *criurpc.=
CriuReq, criuOpts *CriuOpts
 // restore using CRIU. This function is inspired from the code in
 // rootfs_linux.go
 func (c *linuxContainer) makeCriuRestoreMountpoints(m *configs.Mount) erro=
r {
-	switch m.Device {
-	case "cgroup":
+	if m.Device =3D=3D "cgroup" {
 		// No mount point(s) need to be created:
 		//
 		// * for v1, mount points are saved by CRIU because
@@ -1286,26 +1285,11 @@ func (c *linuxContainer) makeCriuRestoreMountpoints=
(m *configs.Mount) error {
 		// * for v2, /sys/fs/cgroup is a real mount, but
 		//   the mountpoint appears as soon as /sys is mounted
 		return nil
-	case "bind":
-		// The prepareBindMount() function checks if source
-		// exists. So it cannot be used for other filesystem types.
-		// TODO: pass something else than nil? Not sure if criu is
-		// impacted by issue #2484
-		if err :=3D prepareBindMount(m, c.config.Rootfs, nil); err !=3D nil {
-			return err
-		}
-	default:
-		// for all other filesystems just create the mountpoints
-		dest, err :=3D securejoin.SecureJoin(c.config.Rootfs, m.Destination)
-		if err !=3D nil {
-			return err
-		}
-		if err :=3D checkProcMount(c.config.Rootfs, dest, m, ""); err !=3D nil {
-			return err
-		}
-		if err :=3D os.MkdirAll(dest, 0o755); err !=3D nil {
-			return err
-		}
+	}
+	// TODO: pass something else than nil? Not sure if criu is
+	// impacted by issue #2484
+	if _, err :=3D createMountpoint(c.config.Rootfs, m, nil, ""); err !=3D ni=
l {
+		return fmt.Errorf("create criu restore mount for %s mount: %w", m.Destin=
ation, err)
 	}
 	return nil
 }
diff --git a/libcontainer/rootfs_linux.go b/libcontainer/rootfs_linux.go
index f66267307e5e..e6269bea8126 100644
--- a/libcontainer/rootfs_linux.go
+++ b/libcontainer/rootfs_linux.go
@@ -224,36 +224,6 @@ func mountCmd(cmd configs.Command) error {
 	return nil
 }
=20
-func prepareBindMount(m *configs.Mount, rootfs string, mountFd *int) error=
 {
-	source :=3D m.Source
-	if mountFd !=3D nil {
-		source =3D "/proc/self/fd/" + strconv.Itoa(*mountFd)
-	}
-
-	stat, err :=3D os.Stat(source)
-	if err !=3D nil {
-		// error out if the source of a bind mount does not exist as we will be
-		// unable to bind anything to it.
-		return err
-	}
-	// ensure that the destination of the bind mount is resolved of symlinks =
at mount time because
-	// any previous mounts can invalidate the next mount's destination.
-	// this can happen when a user specifies mounts within other mounts to ca=
use breakouts or other
-	// evil stuff to try to escape the container's rootfs.
-	var dest string
-	if dest, err =3D securejoin.SecureJoin(rootfs, m.Destination); err !=3D n=
il {
-		return err
-	}
-	if err :=3D checkProcMount(rootfs, dest, m, source); err !=3D nil {
-		return err
-	}
-	if err :=3D createIfNotExists(dest, stat.IsDir()); err !=3D nil {
-		return err
-	}
-
-	return nil
-}
-
 func mountCgroupV1(m *configs.Mount, c *mountConfig) error {
 	binds, err :=3D getCgroupMounts(m)
 	if err !=3D nil {
@@ -282,6 +252,7 @@ func mountCgroupV1(m *configs.Mount, c *mountConfig) er=
ror {
 	for _, b :=3D range binds {
 		if c.cgroupns {
 			subsystemPath :=3D filepath.Join(c.root, b.Destination)
+			subsystemName :=3D filepath.Base(b.Destination)
 			if err :=3D os.MkdirAll(subsystemPath, 0o755); err !=3D nil {
 				return err
 			}
@@ -292,7 +263,7 @@ func mountCgroupV1(m *configs.Mount, c *mountConfig) er=
ror {
 				}
 				var (
 					source =3D "cgroup"
-					data   =3D filepath.Base(subsystemPath)
+					data   =3D subsystemName
 				)
 				if data =3D=3D "systemd" {
 					data =3D cgroups.CgroupNamePrefix + data
@@ -322,14 +293,7 @@ func mountCgroupV1(m *configs.Mount, c *mountConfig) e=
rror {
 }
=20
 func mountCgroupV2(m *configs.Mount, c *mountConfig) error {
-	dest, err :=3D securejoin.SecureJoin(c.root, m.Destination)
-	if err !=3D nil {
-		return err
-	}
-	if err :=3D os.MkdirAll(dest, 0o755); err !=3D nil {
-		return err
-	}
-	err =3D utils.WithProcfd(c.root, m.Destination, func(procfd string) error=
 {
+	err :=3D utils.WithProcfd(c.root, m.Destination, func(procfd string) erro=
r {
 		return mount(m.Source, m.Destination, procfd, "cgroup2", uintptr(m.Flags=
), m.Data)
 	})
 	if err =3D=3D nil || !(errors.Is(err, unix.EPERM) || errors.Is(err, unix.=
EBUSY)) {
@@ -411,6 +375,70 @@ func doTmpfsCopyUp(m *configs.Mount, rootfs, mountLabe=
l string) (Err error) {
 	})
 }
=20
+var errRootfsToFile =3D errors.New("config tries to change rootfs to file")
+
+func createMountpoint(rootfs string, m *configs.Mount, mountFd *int, sourc=
e string) (string, error) {
+	dest, err :=3D securejoin.SecureJoin(rootfs, m.Destination)
+	if err !=3D nil {
+		return "", err
+	}
+	if err :=3D checkProcMount(rootfs, dest, m, source); err !=3D nil {
+		return "", fmt.Errorf("check proc-safety of %s mount: %w", m.Destination=
, err)
+	}
+
+	switch m.Device {
+	case "bind":
+		source :=3D m.Source
+		if mountFd !=3D nil {
+			source =3D "/proc/self/fd/" + strconv.Itoa(*mountFd)
+		}
+
+		fi, err :=3D os.Stat(source)
+		if err !=3D nil {
+			// Error out if the source of a bind mount does not exist as we
+			// will be unable to bind anything to it.
+			return "", fmt.Errorf("bind mount source stat: %w", err)
+		}
+		// If the original source is not a directory, make the target a file.
+		if !fi.IsDir() {
+			// Make sure we aren't tricked into trying to make the root a file.
+			if rootfs =3D=3D dest {
+				return "", fmt.Errorf("%w: file bind mount over rootfs", errRootfsToFi=
le)
+			}
+			// Make the parent directory.
+			if err :=3D os.MkdirAll(filepath.Dir(dest), 0o755); err !=3D nil {
+				return "", fmt.Errorf("make parent dir of file bind-mount: %w", err)
+			}
+			// Make the target file.
+			f, err :=3D os.OpenFile(dest, os.O_CREATE, 0o755)
+			if err !=3D nil {
+				return "", fmt.Errorf("create target of file bind-mount: %w", err)
+			}
+			_ =3D f.Close()
+			// Nothing left to do.
+			return dest, nil
+		}
+
+	case "tmpfs":
+		// If the original target exists, copy the mode for the tmpfs mount.
+		if stat, err :=3D os.Stat(dest); err =3D=3D nil {
+			dt :=3D fmt.Sprintf("mode=3D%04o", syscallMode(stat.Mode()))
+			if m.Data !=3D "" {
+				dt =3D dt + "," + m.Data
+			}
+			m.Data =3D dt
+
+			// Nothing left to do.
+			return dest, nil
+		}
+	}
+
+	if err :=3D os.MkdirAll(dest, 0o755); err !=3D nil {
+		return "", err
+	}
+	return dest, nil
+}
+
 func mountToRootfs(m *configs.Mount, c *mountConfig) error {
 	rootfs :=3D c.root
=20
@@ -442,46 +470,27 @@ func mountToRootfs(m *configs.Mount, c *mountConfig) =
error {
 		return mountPropagate(m, rootfs, "", nil)
 	}
=20
-	mountLabel :=3D c.label
 	mountFd :=3D c.fd
-	dest, err :=3D securejoin.SecureJoin(rootfs, m.Destination)
+	dest, err :=3D createMountpoint(rootfs, m, mountFd, m.Source)
 	if err !=3D nil {
-		return err
+		return fmt.Errorf("create mount destination for %s mount: %w", m.Destina=
tion, err)
 	}
+	mountLabel :=3D c.label
=20
 	switch m.Device {
 	case "mqueue":
-		if err :=3D os.MkdirAll(dest, 0o755); err !=3D nil {
-			return err
-		}
 		if err :=3D mountPropagate(m, rootfs, "", nil); err !=3D nil {
 			return err
 		}
 		return label.SetFileLabel(dest, mountLabel)
 	case "tmpfs":
-		if stat, err :=3D os.Stat(dest); err !=3D nil {
-			if err :=3D os.MkdirAll(dest, 0o755); err !=3D nil {
-				return err
-			}
-		} else {
-			dt :=3D fmt.Sprintf("mode=3D%04o", syscallMode(stat.Mode()))
-			if m.Data !=3D "" {
-				dt =3D dt + "," + m.Data
-			}
-			m.Data =3D dt
-		}
-
 		if m.Extensions&configs.EXT_COPYUP =3D=3D configs.EXT_COPYUP {
 			err =3D doTmpfsCopyUp(m, rootfs, mountLabel)
 		} else {
 			err =3D mountPropagate(m, rootfs, mountLabel, nil)
 		}
-
 		return err
 	case "bind":
-		if err :=3D prepareBindMount(m, rootfs, mountFd); err !=3D nil {
-			return err
-		}
 		if err :=3D mountPropagate(m, rootfs, mountLabel, mountFd); err !=3D nil=
 {
 			return err
 		}
@@ -509,12 +518,6 @@ func mountToRootfs(m *configs.Mount, c *mountConfig) e=
rror {
 		}
 		return mountCgroupV1(m, c)
 	default:
-		if err :=3D checkProcMount(rootfs, dest, m, m.Source); err !=3D nil {
-			return err
-		}
-		if err :=3D os.MkdirAll(dest, 0o755); err !=3D nil {
-			return err
-		}
 		return mountPropagate(m, rootfs, mountLabel, mountFd)
 	}
 	if err :=3D setRecAttr(m, rootfs); err !=3D nil {
@@ -745,6 +748,9 @@ func createDeviceNode(rootfs string, node *devices.Devi=
ce, bind bool) error {
 	if err !=3D nil {
 		return err
 	}
+	if dest =3D=3D rootfs {
+		return fmt.Errorf("%w: mknod over rootfs", errRootfsToFile)
+	}
 	if err :=3D os.MkdirAll(filepath.Dir(dest), 0o755); err !=3D nil {
 		return err
 	}
@@ -1011,26 +1017,6 @@ func chroot() error {
 	return nil
 }
=20
-// createIfNotExists creates a file or a directory only if it does not alr=
eady exist.
-func createIfNotExists(path string, isDir bool) error {
-	if _, err :=3D os.Stat(path); err !=3D nil {
-		if os.IsNotExist(err) {
-			if isDir {
-				return os.MkdirAll(path, 0o755)
-			}
-			if err :=3D os.MkdirAll(filepath.Dir(path), 0o755); err !=3D nil {
-				return err
-			}
-			f, err :=3D os.OpenFile(path, os.O_CREATE, 0o755)
-			if err !=3D nil {
-				return err
-			}
-			_ =3D f.Close()
-		}
-	}
-	return nil
-}
-
 // readonlyPath will make a path read only.
 func readonlyPath(path string) error {
 	if err :=3D mount(path, path, "", "", unix.MS_BIND|unix.MS_REC, ""); err =
!=3D nil {
diff --git a/libcontainer/utils/utils_unix.go b/libcontainer/utils/utils_un=
ix.go
index bf3237a29118..0d95a203789a 100644
--- a/libcontainer/utils/utils_unix.go
+++ b/libcontainer/utils/utils_unix.go
@@ -7,6 +7,7 @@ import (
 	"fmt"
 	"os"
 	"strconv"
+	"strings"
 	_ "unsafe" // for go:linkname
=20
 	"golang.org/x/sys/unix"
@@ -115,3 +116,17 @@ func NewSockPair(name string) (parent *os.File, child =
*os.File, err error) {
 	}
 	return os.NewFile(uintptr(fds[1]), name+"-p"), os.NewFile(uintptr(fds[0])=
, name+"-c"), nil
 }
+
+// IsLexicallyInRoot is shorthand for strings.HasPrefix(path+"/", root+"/"=
),
+// but properly handling the case where path or root are "/".
+//
+// NOTE: The return value only make sense if the path doesn't contain "..".
+func IsLexicallyInRoot(root, path string) bool {
+	if root !=3D "/" {
+		root +=3D "/"
+	}
+	if path !=3D "/" {
+		path +=3D "/"
+	}
+	return strings.HasPrefix(path, root)
+}
--=20
2.46.0


--vfxgevphsseqorax
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment;
	filename="1.1-0003-rootfs-try-to-scope-MkdirAll-to-stay-inside-the-.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 92a0c65a199e1836e650830554982ae419de1bed Mon Sep 17 00:00:00 2001
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Tue, 2 Jul 2024 20:58:43 +1000
Subject: [PATCH runc 1.1 3/3] [1.1] rootfs: try to scope MkdirAll to stay
 inside the rootfs

While we use SecureJoin to try to make all of our target paths inside
the container safe, SecureJoin is not safe against an attacker than can
change the path after we "resolve" it.

os.MkdirAll can inadvertently follow symlinks and thus an attacker could
end up tricking runc into creating empty directories on the host (note
that the container doesn't get access to these directories, and the host
just sees empty directories). However, this could potentially cause DoS
issues by (for instance) creating a directory in a conf.d directory for
a daemon that doesn't handle subdirectories properly.

In addition, the handling for creating file bind-mounts did a plain
open(O_CREAT) on the SecureJoin'd path, which is even more obviously
unsafe (luckily we didn't use O_TRUNC, or this bug could've allowed an
attacker to cause data loss...). Regardless of the symlink issue,
opening an untrusted file could result in a DoS if the file is a hung
tty or some other "nasty" file. We can use mknodat to safely create a
regular file without opening anything anyway (O_CREAT|O_EXCL would also
work but it makes the logic a bit more complicated, and we don't want to
open the file for any particular reason anyway).

libpathrs[1] is the long-term solution for these kinds of problems, but
for now we can patch this particular issue by creating a more restricted
MkdirAll that refuses to resolve symlinks and does the creation using
file descriptors. This is loosely based on a more secure version that
filepath-securejoin now has[2] and will be added to libpathrs soon[3].

[1]: https://github.com/openSUSE/libpathrs
[2]: https://github.com/cyphar/filepath-securejoin/releases/tag/v0.3.0
[3]: https://github.com/openSUSE/libpathrs/issues/10

Fixes: CVE-2024-45310
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 libcontainer/rootfs_linux.go     |  31 ++++++---
 libcontainer/system/linux.go     |  41 +++++++++++
 libcontainer/utils/utils_unix.go | 114 +++++++++++++++++++++++++++++++
 3 files changed, 176 insertions(+), 10 deletions(-)

diff --git a/libcontainer/rootfs_linux.go b/libcontainer/rootfs_linux.go
index e6269bea8126..78b6998c38f7 100644
--- a/libcontainer/rootfs_linux.go
+++ b/libcontainer/rootfs_linux.go
@@ -253,7 +253,7 @@ func mountCgroupV1(m *configs.Mount, c *mountConfig) er=
ror {
 		if c.cgroupns {
 			subsystemPath :=3D filepath.Join(c.root, b.Destination)
 			subsystemName :=3D filepath.Base(b.Destination)
-			if err :=3D os.MkdirAll(subsystemPath, 0o755); err !=3D nil {
+			if err :=3D utils.MkdirAllInRoot(c.root, subsystemPath, 0o755); err !=
=3D nil {
 				return err
 			}
 			if err :=3D utils.WithProcfd(c.root, b.Destination, func(procfd string)=
 error {
@@ -406,15 +406,26 @@ func createMountpoint(rootfs string, m *configs.Mount=
, mountFd *int, source stri
 				return "", fmt.Errorf("%w: file bind mount over rootfs", errRootfsToFi=
le)
 			}
 			// Make the parent directory.
-			if err :=3D os.MkdirAll(filepath.Dir(dest), 0o755); err !=3D nil {
+			destDir, destBase :=3D filepath.Split(dest)
+			destDirFd, err :=3D utils.MkdirAllInRootOpen(rootfs, destDir, 0o755)
+			if err !=3D nil {
 				return "", fmt.Errorf("make parent dir of file bind-mount: %w", err)
 			}
-			// Make the target file.
-			f, err :=3D os.OpenFile(dest, os.O_CREATE, 0o755)
-			if err !=3D nil {
-				return "", fmt.Errorf("create target of file bind-mount: %w", err)
+			defer destDirFd.Close()
+			// Make the target file. We want to avoid opening any file that is
+			// already there because it could be a "bad" file like an invalid
+			// device or hung tty that might cause a DoS, so we use mknodat.
+			// destBase does not contain any "/" components, and mknodat does
+			// not follow trailing symlinks, so we can safely just call mknodat
+			// here.
+			if err :=3D unix.Mknodat(int(destDirFd.Fd()), destBase, unix.S_IFREG|0o=
644, 0); err !=3D nil {
+				// If we get EEXIST, there was already an inode there and
+				// we can consider that a success.
+				if !errors.Is(err, unix.EEXIST) {
+					err =3D &os.PathError{Op: "mknod regular file", Path: dest, Err: err}
+					return "", fmt.Errorf("create target of file bind-mount: %w", err)
+				}
 			}
-			_ =3D f.Close()
 			// Nothing left to do.
 			return dest, nil
 		}
@@ -433,7 +444,7 @@ func createMountpoint(rootfs string, m *configs.Mount, =
mountFd *int, source stri
 		}
 	}
=20
-	if err :=3D os.MkdirAll(dest, 0o755); err !=3D nil {
+	if err :=3D utils.MkdirAllInRoot(rootfs, dest, 0o755); err !=3D nil {
 		return "", err
 	}
 	return dest, nil
@@ -463,7 +474,7 @@ func mountToRootfs(m *configs.Mount, c *mountConfig) er=
ror {
 		} else if !fi.IsDir() {
 			return fmt.Errorf("filesystem %q must be mounted on ordinary directory"=
, m.Device)
 		}
-		if err :=3D os.MkdirAll(dest, 0o755); err !=3D nil {
+		if err :=3D utils.MkdirAllInRoot(rootfs, dest, 0o755); err !=3D nil {
 			return err
 		}
 		// Selinux kernels do not support labeling of /proc or /sys.
@@ -751,7 +762,7 @@ func createDeviceNode(rootfs string, node *devices.Devi=
ce, bind bool) error {
 	if dest =3D=3D rootfs {
 		return fmt.Errorf("%w: mknod over rootfs", errRootfsToFile)
 	}
-	if err :=3D os.MkdirAll(filepath.Dir(dest), 0o755); err !=3D nil {
+	if err :=3D utils.MkdirAllInRoot(rootfs, filepath.Dir(dest), 0o755); err =
!=3D nil {
 		return err
 	}
 	if bind {
diff --git a/libcontainer/system/linux.go b/libcontainer/system/linux.go
index 16edc6ba6d98..32bab6922bd2 100644
--- a/libcontainer/system/linux.go
+++ b/libcontainer/system/linux.go
@@ -6,6 +6,8 @@ package system
 import (
 	"os"
 	"os/exec"
+	"runtime"
+	"strings"
 	"unsafe"
=20
 	"golang.org/x/sys/unix"
@@ -102,3 +104,42 @@ func GetSubreaper() (int, error) {
=20
 	return int(i), nil
 }
+
+func prepareAt(dir *os.File, path string) (int, string) {
+	if dir =3D=3D nil {
+		return unix.AT_FDCWD, path
+	}
+
+	// Rather than just filepath.Join-ing path here, do it manually so the
+	// error and handle correctly indicate cases like path=3D".." as being
+	// relative to the correct directory. The handle.Name() might end up being
+	// wrong but because this is (currently) only used in MkdirAllInRoot, that
+	// isn't a problem.
+	dirName :=3D dir.Name()
+	if !strings.HasSuffix(dirName, "/") {
+		dirName +=3D "/"
+	}
+	fullPath :=3D dirName + path
+
+	return int(dir.Fd()), fullPath
+}
+
+func Openat(dir *os.File, path string, flags int, mode uint32) (*os.File, =
error) {
+	dirFd, fullPath :=3D prepareAt(dir, path)
+	fd, err :=3D unix.Openat(dirFd, path, flags, mode)
+	if err !=3D nil {
+		return nil, &os.PathError{Op: "openat", Path: fullPath, Err: err}
+	}
+	runtime.KeepAlive(dir)
+	return os.NewFile(uintptr(fd), fullPath), nil
+}
+
+func Mkdirat(dir *os.File, path string, mode uint32) error {
+	dirFd, fullPath :=3D prepareAt(dir, path)
+	err :=3D unix.Mkdirat(dirFd, path, mode)
+	if err !=3D nil {
+		err =3D &os.PathError{Op: "mkdirat", Path: fullPath, Err: err}
+	}
+	runtime.KeepAlive(dir)
+	return err
+}
diff --git a/libcontainer/utils/utils_unix.go b/libcontainer/utils/utils_un=
ix.go
index 0d95a203789a..460b94cef3f9 100644
--- a/libcontainer/utils/utils_unix.go
+++ b/libcontainer/utils/utils_unix.go
@@ -4,12 +4,17 @@
 package utils
=20
 import (
+	"errors"
 	"fmt"
 	"os"
+	"path/filepath"
 	"strconv"
 	"strings"
 	_ "unsafe" // for go:linkname
=20
+	"github.com/opencontainers/runc/libcontainer/system"
+
+	securejoin "github.com/cyphar/filepath-securejoin"
 	"golang.org/x/sys/unix"
 )
=20
@@ -130,3 +135,112 @@ func IsLexicallyInRoot(root, path string) bool {
 	}
 	return strings.HasPrefix(path, root)
 }
+
+// MkdirAllInRootOpen attempts to make
+//
+//	path, _ :=3D securejoin.SecureJoin(root, unsafePath)
+//	os.MkdirAll(path, mode)
+//	os.Open(path)
+//
+// safer against attacks where components in the path are changed between
+// SecureJoin returning and MkdirAll (or Open) being called. In particular=
, we
+// try to detect any symlink components in the path while we are doing the
+// MkdirAll.
+//
+// NOTE: Unlike os.MkdirAll, mode is not Go's os.FileMode, it is the unix =
mode
+// (the suid/sgid/sticky bits are not the same as for os.FileMode).
+//
+// NOTE: If unsafePath is a subpath of root, we assume that you have alrea=
dy
+// called SecureJoin and so we use the provided path verbatim without reso=
lving
+// any symlinks (this is done in a way that avoids symlink-exchange races).
+// This means that the path also must not contain ".." elements, otherwise=
 an
+// error will occur.
+//
+// This is a somewhat less safe alternative to
+// <https://github.com/cyphar/filepath-securejoin/pull/13>, but it should
+// detect attempts to trick us into creating directories outside of the ro=
ot.
+// We should migrate to securejoin.MkdirAll once it is merged.
+func MkdirAllInRootOpen(root, unsafePath string, mode uint32) (_ *os.File,=
 Err error) {
+	// If the path is already "within" the root, use it verbatim.
+	fullPath :=3D unsafePath
+	if !IsLexicallyInRoot(root, unsafePath) {
+		var err error
+		fullPath, err =3D securejoin.SecureJoin(root, unsafePath)
+		if err !=3D nil {
+			return nil, err
+		}
+	}
+	subPath, err :=3D filepath.Rel(root, fullPath)
+	if err !=3D nil {
+		return nil, err
+	}
+
+	// Check for any silly mode bits.
+	if mode&^0o7777 !=3D 0 {
+		return nil, fmt.Errorf("tried to include non-mode bits in MkdirAll mode:=
 0o%.3o", mode)
+	}
+
+	currentDir, err :=3D os.OpenFile(root, unix.O_DIRECTORY|unix.O_CLOEXEC, 0)
+	if err !=3D nil {
+		return nil, fmt.Errorf("open root handle: %w", err)
+	}
+	defer func() {
+		if Err !=3D nil {
+			currentDir.Close()
+		}
+	}()
+
+	for _, part :=3D range strings.Split(subPath, string(filepath.Separator))=
 {
+		switch part {
+		case "", ".":
+			// Skip over no-op components.
+			continue
+		case "..":
+			return nil, fmt.Errorf("possible breakout detected: found %q component =
in SecureJoin subpath %s", part, subPath)
+		}
+
+		nextDir, err :=3D system.Openat(currentDir, part, unix.O_DIRECTORY|unix.=
O_NOFOLLOW|unix.O_CLOEXEC, 0)
+		switch {
+		case err =3D=3D nil:
+			// Update the currentDir.
+			_ =3D currentDir.Close()
+			currentDir =3D nextDir
+
+		case errors.Is(err, unix.ENOTDIR):
+			// This might be a symlink or some other random file. Either way,
+			// error out.
+			return nil, fmt.Errorf("cannot mkdir in %s/%s: %w", currentDir.Name(), =
part, unix.ENOTDIR)
+
+		case errors.Is(err, os.ErrNotExist):
+			// Luckily, mkdirat will not follow trailing symlinks, so this is
+			// safe to do as-is.
+			if err :=3D system.Mkdirat(currentDir, part, mode); err !=3D nil {
+				return nil, err
+			}
+			// Open the new directory. There is a race here where an attacker
+			// could swap the directory with a different directory, but
+			// MkdirAll's fuzzy semantics mean we don't care about that.
+			nextDir, err :=3D system.Openat(currentDir, part, unix.O_DIRECTORY|unix=
.O_NOFOLLOW|unix.O_CLOEXEC, 0)
+			if err !=3D nil {
+				return nil, fmt.Errorf("open newly created directory: %w", err)
+			}
+			// Update the currentDir.
+			_ =3D currentDir.Close()
+			currentDir =3D nextDir
+
+		default:
+			return nil, err
+		}
+	}
+	return currentDir, nil
+}
+
+// MkdirAllInRoot is a wrapper around MkdirAllInRootOpen which closes the
+// returned handle, for callers that don't need to use it.
+func MkdirAllInRoot(root, unsafePath string, mode uint32) error {
+	f, err :=3D MkdirAllInRootOpen(root, unsafePath, mode)
+	if err =3D=3D nil {
+		_ =3D f.Close()
+	}
+	return err
+}
--=20
2.46.0


--vfxgevphsseqorax
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2024-45310.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 63c2908164f3a1daea455bf5bcd8d363d70328c7 Mon Sep 17 00:00:00 2001
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Tue, 2 Jul 2024 20:58:43 +1000
Subject: [PATCH] rootfs: try to scope MkdirAll to stay inside the rootfs

While we use SecureJoin to try to make all of our target paths inside
the container safe, SecureJoin is not safe against an attacker than can
change the path after we "resolve" it.

os.MkdirAll can inadvertently follow symlinks and thus an attacker could
end up tricking runc into creating empty directories on the host (note
that the container doesn't get access to these directories, and the host
just sees empty directories). However, this could potentially cause DoS
issues by (for instance) creating a directory in a conf.d directory for
a daemon that doesn't handle subdirectories properly.

In addition, the handling for creating file bind-mounts did a plain
open(O_CREAT) on the SecureJoin'd path, which is even more obviously
unsafe (luckily we didn't use O_TRUNC, or this bug could've allowed an
attacker to cause data loss...). Regardless of the symlink issue,
opening an untrusted file could result in a DoS if the file is a hung
tty or some other "nasty" file. We can use mknodat to safely create a
regular file without opening anything anyway (O_CREAT|O_EXCL would also
work but it makes the logic a bit more complicated, and we don't want to
open the file for any particular reason anyway).

libpathrs[1] is the long-term solution for these kinds of problems, but
for now we can patch this particular issue by creating a more restricted
MkdirAll that refuses to resolve symlinks and does the creation using
file descriptors. This is loosely based on a more secure version that
filepath-securejoin now has[2] and will be added to libpathrs soon[3].

[1]: https://github.com/openSUSE/libpathrs
[2]: https://github.com/cyphar/filepath-securejoin/releases/tag/v0.3.0
[3]: https://github.com/openSUSE/libpathrs/issues/10

Fixes: CVE-2024-45310
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 libcontainer/rootfs_linux.go     |  31 ++++++---
 libcontainer/system/linux.go     |  41 +++++++++++
 libcontainer/utils/utils_unix.go | 112 +++++++++++++++++++++++++++++++
 3 files changed, 174 insertions(+), 10 deletions(-)

diff --git a/libcontainer/rootfs_linux.go b/libcontainer/rootfs_linux.go
index 16878274caeb..f5112398cb2d 100644
--- a/libcontainer/rootfs_linux.go
+++ b/libcontainer/rootfs_linux.go
@@ -313,7 +313,7 @@ func mountCgroupV1(m *configs.Mount, c *mountConfig) er=
ror {
 			// inside the tmpfs, so we don't want to resolve symlinks).
 			subsystemPath :=3D filepath.Join(c.root, b.Destination)
 			subsystemName :=3D filepath.Base(b.Destination)
-			if err :=3D os.MkdirAll(subsystemPath, 0o755); err !=3D nil {
+			if err :=3D utils.MkdirAllInRoot(c.root, subsystemPath, 0o755); err !=
=3D nil {
 				return err
 			}
 			if err :=3D utils.WithProcfd(c.root, b.Destination, func(dstFd string) =
error {
@@ -505,15 +505,26 @@ func createMountpoint(rootfs string, m mountEntry) (s=
tring, error) {
 				return "", fmt.Errorf("%w: file bind mount over rootfs", errRootfsToFi=
le)
 			}
 			// Make the parent directory.
-			if err :=3D os.MkdirAll(filepath.Dir(dest), 0o755); err !=3D nil {
+			destDir, destBase :=3D filepath.Split(dest)
+			destDirFd, err :=3D utils.MkdirAllInRootOpen(rootfs, destDir, 0o755)
+			if err !=3D nil {
 				return "", fmt.Errorf("make parent dir of file bind-mount: %w", err)
 			}
-			// Make the target file.
-			f, err :=3D os.OpenFile(dest, os.O_CREATE, 0o755)
-			if err !=3D nil {
-				return "", fmt.Errorf("create target of file bind-mount: %w", err)
+			defer destDirFd.Close()
+			// Make the target file. We want to avoid opening any file that is
+			// already there because it could be a "bad" file like an invalid
+			// device or hung tty that might cause a DoS, so we use mknodat.
+			// destBase does not contain any "/" components, and mknodat does
+			// not follow trailing symlinks, so we can safely just call mknodat
+			// here.
+			if err :=3D unix.Mknodat(int(destDirFd.Fd()), destBase, unix.S_IFREG|0o=
644, 0); err !=3D nil {
+				// If we get EEXIST, there was already an inode there and
+				// we can consider that a success.
+				if !errors.Is(err, unix.EEXIST) {
+					err =3D &os.PathError{Op: "mknod regular file", Path: dest, Err: err}
+					return "", fmt.Errorf("create target of file bind-mount: %w", err)
+				}
 			}
-			_ =3D f.Close()
 			// Nothing left to do.
 			return dest, nil
 		}
@@ -532,7 +543,7 @@ func createMountpoint(rootfs string, m mountEntry) (str=
ing, error) {
 		}
 	}
=20
-	if err :=3D os.MkdirAll(dest, 0o755); err !=3D nil {
+	if err :=3D utils.MkdirAllInRoot(rootfs, dest, 0o755); err !=3D nil {
 		return "", err
 	}
 	return dest, nil
@@ -565,7 +576,7 @@ func mountToRootfs(c *mountConfig, m mountEntry) error {
 		} else if !fi.IsDir() {
 			return fmt.Errorf("filesystem %q must be mounted on ordinary directory"=
, m.Device)
 		}
-		if err :=3D os.MkdirAll(dest, 0o755); err !=3D nil {
+		if err :=3D utils.MkdirAllInRoot(rootfs, dest, 0o755); err !=3D nil {
 			return err
 		}
 		// Selinux kernels do not support labeling of /proc or /sys.
@@ -928,7 +939,7 @@ func createDeviceNode(rootfs string, node *devices.Devi=
ce, bind bool) error {
 	if dest =3D=3D rootfs {
 		return fmt.Errorf("%w: mknod over rootfs", errRootfsToFile)
 	}
-	if err :=3D os.MkdirAll(filepath.Dir(dest), 0o755); err !=3D nil {
+	if err :=3D utils.MkdirAllInRoot(rootfs, filepath.Dir(dest), 0o755); err =
!=3D nil {
 		return err
 	}
 	if bind {
diff --git a/libcontainer/system/linux.go b/libcontainer/system/linux.go
index 7bbf92a3d301..27e89d635ca6 100644
--- a/libcontainer/system/linux.go
+++ b/libcontainer/system/linux.go
@@ -6,7 +6,9 @@ import (
 	"fmt"
 	"io"
 	"os"
+	"runtime"
 	"strconv"
+	"strings"
 	"syscall"
 	"unsafe"
=20
@@ -214,3 +216,42 @@ func SetLinuxPersonality(personality int) error {
 	}
 	return nil
 }
+
+func prepareAt(dir *os.File, path string) (int, string) {
+	if dir =3D=3D nil {
+		return unix.AT_FDCWD, path
+	}
+
+	// Rather than just filepath.Join-ing path here, do it manually so the
+	// error and handle correctly indicate cases like path=3D".." as being
+	// relative to the correct directory. The handle.Name() might end up being
+	// wrong but because this is (currently) only used in MkdirAllInRoot, that
+	// isn't a problem.
+	dirName :=3D dir.Name()
+	if !strings.HasSuffix(dirName, "/") {
+		dirName +=3D "/"
+	}
+	fullPath :=3D dirName + path
+
+	return int(dir.Fd()), fullPath
+}
+
+func Openat(dir *os.File, path string, flags int, mode uint32) (*os.File, =
error) {
+	dirFd, fullPath :=3D prepareAt(dir, path)
+	fd, err :=3D unix.Openat(dirFd, path, flags, mode)
+	if err !=3D nil {
+		return nil, &os.PathError{Op: "openat", Path: fullPath, Err: err}
+	}
+	runtime.KeepAlive(dir)
+	return os.NewFile(uintptr(fd), fullPath), nil
+}
+
+func Mkdirat(dir *os.File, path string, mode uint32) error {
+	dirFd, fullPath :=3D prepareAt(dir, path)
+	err :=3D unix.Mkdirat(dirFd, path, mode)
+	if err !=3D nil {
+		err =3D &os.PathError{Op: "mkdirat", Path: fullPath, Err: err}
+	}
+	runtime.KeepAlive(dir)
+	return err
+}
diff --git a/libcontainer/utils/utils_unix.go b/libcontainer/utils/utils_un=
ix.go
index 6bf9102f4141..1f3439b78fb6 100644
--- a/libcontainer/utils/utils_unix.go
+++ b/libcontainer/utils/utils_unix.go
@@ -3,6 +3,7 @@
 package utils
=20
 import (
+	"errors"
 	"fmt"
 	"math"
 	"os"
@@ -13,6 +14,8 @@ import (
 	"sync"
 	_ "unsafe" // for go:linkname
=20
+	"github.com/opencontainers/runc/libcontainer/system"
+
 	securejoin "github.com/cyphar/filepath-securejoin"
 	"github.com/sirupsen/logrus"
 	"golang.org/x/sys/unix"
@@ -275,3 +278,112 @@ func IsLexicallyInRoot(root, path string) bool {
 	}
 	return strings.HasPrefix(path, root)
 }
+
+// MkdirAllInRootOpen attempts to make
+//
+//	path, _ :=3D securejoin.SecureJoin(root, unsafePath)
+//	os.MkdirAll(path, mode)
+//	os.Open(path)
+//
+// safer against attacks where components in the path are changed between
+// SecureJoin returning and MkdirAll (or Open) being called. In particular=
, we
+// try to detect any symlink components in the path while we are doing the
+// MkdirAll.
+//
+// NOTE: Unlike os.MkdirAll, mode is not Go's os.FileMode, it is the unix =
mode
+// (the suid/sgid/sticky bits are not the same as for os.FileMode).
+//
+// NOTE: If unsafePath is a subpath of root, we assume that you have alrea=
dy
+// called SecureJoin and so we use the provided path verbatim without reso=
lving
+// any symlinks (this is done in a way that avoids symlink-exchange races).
+// This means that the path also must not contain ".." elements, otherwise=
 an
+// error will occur.
+//
+// This is a somewhat less safe alternative to
+// <https://github.com/cyphar/filepath-securejoin/pull/13>, but it should
+// detect attempts to trick us into creating directories outside of the ro=
ot.
+// We should migrate to securejoin.MkdirAll once it is merged.
+func MkdirAllInRootOpen(root, unsafePath string, mode uint32) (_ *os.File,=
 Err error) {
+	// If the path is already "within" the root, use it verbatim.
+	fullPath :=3D unsafePath
+	if !IsLexicallyInRoot(root, unsafePath) {
+		var err error
+		fullPath, err =3D securejoin.SecureJoin(root, unsafePath)
+		if err !=3D nil {
+			return nil, err
+		}
+	}
+	subPath, err :=3D filepath.Rel(root, fullPath)
+	if err !=3D nil {
+		return nil, err
+	}
+
+	// Check for any silly mode bits.
+	if mode&^0o7777 !=3D 0 {
+		return nil, fmt.Errorf("tried to include non-mode bits in MkdirAll mode:=
 0o%.3o", mode)
+	}
+
+	currentDir, err :=3D os.OpenFile(root, unix.O_DIRECTORY|unix.O_CLOEXEC, 0)
+	if err !=3D nil {
+		return nil, fmt.Errorf("open root handle: %w", err)
+	}
+	defer func() {
+		if Err !=3D nil {
+			currentDir.Close()
+		}
+	}()
+
+	for _, part :=3D range strings.Split(subPath, string(filepath.Separator))=
 {
+		switch part {
+		case "", ".":
+			// Skip over no-op components.
+			continue
+		case "..":
+			return nil, fmt.Errorf("possible breakout detected: found %q component =
in SecureJoin subpath %s", part, subPath)
+		}
+
+		nextDir, err :=3D system.Openat(currentDir, part, unix.O_DIRECTORY|unix.=
O_NOFOLLOW|unix.O_CLOEXEC, 0)
+		switch {
+		case err =3D=3D nil:
+			// Update the currentDir.
+			_ =3D currentDir.Close()
+			currentDir =3D nextDir
+
+		case errors.Is(err, unix.ENOTDIR):
+			// This might be a symlink or some other random file. Either way,
+			// error out.
+			return nil, fmt.Errorf("cannot mkdir in %s/%s: %w", currentDir.Name(), =
part, unix.ENOTDIR)
+
+		case errors.Is(err, os.ErrNotExist):
+			// Luckily, mkdirat will not follow trailing symlinks, so this is
+			// safe to do as-is.
+			if err :=3D system.Mkdirat(currentDir, part, mode); err !=3D nil {
+				return nil, err
+			}
+			// Open the new directory. There is a race here where an attacker
+			// could swap the directory with a different directory, but
+			// MkdirAll's fuzzy semantics mean we don't care about that.
+			nextDir, err :=3D system.Openat(currentDir, part, unix.O_DIRECTORY|unix=
.O_NOFOLLOW|unix.O_CLOEXEC, 0)
+			if err !=3D nil {
+				return nil, fmt.Errorf("open newly created directory: %w", err)
+			}
+			// Update the currentDir.
+			_ =3D currentDir.Close()
+			currentDir =3D nextDir
+
+		default:
+			return nil, err
+		}
+	}
+	return currentDir, nil
+}
+
+// MkdirAllInRoot is a wrapper around MkdirAllInRootOpen which closes the
+// returned handle, for callers that don't need to use it.
+func MkdirAllInRoot(root, unsafePath string, mode uint32) error {
+	f, err :=3D MkdirAllInRootOpen(root, unsafePath, mode)
+	if err =3D=3D nil {
+		_ =3D f.Close()
+	}
+	return err
+}
--=20
2.46.0


--vfxgevphsseqorax--

--xt6h6z7nskdb2xjd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCZtZu0QAKCRAol/rSt+lE
b66hAP0TGrjGuYt8ExFfj2784vOIvxcoBtj4sLsnW4pE7I4a3wEAmtSB31TtBySL
0w75x1ZjaJCe+ugYy+3Q6n7sWUsEhg8=
=57t5
-----END PGP SIGNATURE-----

--xt6h6z7nskdb2xjd--
