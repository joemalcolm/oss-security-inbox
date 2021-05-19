X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["91267" "Wednesday" "19" "May" "2021" "20:00:33" "+1000" "Aleksa Sarai" "cyphar@cyphar.com" nil "2640" "[oss-security] CVE-2021-30465: runc <1.0.0-rc95 vulnerable to symlink-exchange attack" nil nil nil "5" nil nil (number mark "U       cyphar@cypha May 19 2640/91267 " thread-indent "\"[oss-security] CVE-2021-30465: runc <1.0.0-rc95 vulnerable to symlink-exchange attack\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-30465: runc <1.0.0-rc95 vulnerable to symlink-exchange attack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27737 invoked by uid 550); 19 May 2021 10:00:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27718 invoked from network); 19 May 2021 10:00:58 -0000
X-Virus-Scanned: amavisd-new at heinlein-support.de
Date: Wed, 19 May 2021 20:00:33 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: oss-security@lists.openwall.com
Message-ID: <20210519100013.7qu6n5xtqwezmq4e@yavin>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pwbl2bvlunp2gpjd"
Content-Disposition: inline
X-MBO-SPAM-Probability: 
Subject: [oss-security] CVE-2021-30465: runc <1.0.0-rc95 vulnerable to symlink-exchange
 attack

--pwbl2bvlunp2gpjd
Content-Type: multipart/mixed; boundary="4wmweqrjmk7egrvv"
Content-Disposition: inline


--4wmweqrjmk7egrvv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This vulnerability was made public on 2021-05-19 10:00:00 UTC.

[ Summary ]

runc 1.0.0-rc94 and earlier are vulnerable to a symlink exchange attack whe=
reby
an attacker can request a seemingly-innocuous container configuration that
actually results in the host filesystem being bind-mounted into the contain=
er
(allowing for a container escape). CVE-2021-30465 has been assigned for this
issue.

An attacker must have the ability to start containers using some kind of cu=
stom
volume configuration, and while recommended container hardening mechanisms =
such
as LSMs (AppArmor/SELinux) and user namespaces will restrict the amount of
damage an attacker could do, they do not block this attack outright. We hav=
e a
reproducer using Kubernetes (and the below description mentions
Kubernetes-specific paths), but this is not a Kubernetes-specific issue.

The now-released runc v1.0.0-rc95[1] contains a fix for this issue, we
recommend users update as soon as possible. I have also attached the standa=
lone
patch. If you have any questions please direct them to the public runc
bug-tracker or <security@opencontainers.org> if they are security-critical.

[ Details ]

In circumstances where a container is being started, and runc is mounting
inside a volume shared with another container (which is conducting a
symlink-exchange attack), runc can be tricked into mounting outside of the
container rootfs by swapping the target of a mount with a symlink due to a
time-of-check-to-time-of-use (TOCTTOU) flaw. This is fairly similar in styl=
e to
previous TOCTTOU attacks (and is a problem we are working on solving with
libpathrs[2]).

However, this alone is not useful because this happens inside a mount names=
pace
with `MS_SLAVE` propagation applied to `/` (meaning that the mount doesn't
appear on the host -- it's only a "host-side mount" inside the container's
namespace). To exploit this, you must have additional mount entries in the
configuration that use some subpath of the mounted-over host path as a sour=
ce
for a subsequent mount.

However, it turns out with some container orchestrators (such as Kubernetes=
 --
though it is very likely that other downstream users of runc could have sim=
ilar
behaviour be accessible to untrusted users), the existence of additional vo=
lume
management infrastructure allows this attack to be applied to gain access to
the host filesystem without requiring the attacker to have completely arbit=
rary
control over container configuration.

In the case of Kubernetes, this is exploitable by creating a symlink in a
volume to the top-level (well-known) directory where volumes are sourced fr=
om
(for instance,
`/var/lib/kubelet/pods/$MY_POD_UID/volumes/kubernetes.io~empty-dir`), and t=
hen
using that symlink as the target of a mount. The source of the mount is an
attacker controlled directory, and thus the source directory from which
subsequent mounts will occur is an attacker-controlled directory. Thus the
attacker can first place a symlink to `/` in their malicious source directo=
ry
with the name of a volume, and a subsequent mount in the container will
bind-mount `/` into the container.

Applying this attack requires the attacker to start containers with a sligh=
tly
peculiar volume configuration (though not explicitly malicious-looking such=
 as
bind-mounting `/` into the container explicitly), and be able to run malici=
ous
code in a container that shares volumes with said volume configuration. It
helps the attacker if the host paths used for volume management are well kn=
own,
though this is not a hard requirement.

[ Patches ]

I have attached the upstream patch (CVE-2021-30465.patch), a patch which
applies cleanly on 1.0.0-rc94 (rc94-*.patch) and a patchset which applies on
rc93 (rc93-*.patch). But for obvious reasons we highly recommend just updat=
ing
to runc 1.0.0-rc95.

[ Workarounds ]

There are no known workarounds for this issue.

However, users who enforce running containers with more confined security
profiles (such as reduced capabilities, not running code as root in the
container, user namespaces, AppArmor/SELinux, and seccomp) will restrict wh=
at
an attacker can do in the case of a container breakout -- we recommend users
make use of strict security profiles if possible (most notably user namespa=
ces
-- which can massively restrict the impact a container breakout can have on=
 the
host system).

[ Credit ]

Thanks to Etienne Champetier for discovering and disclosing this vulnerabil=
ity,
to Noah Meyerhans for writing the first draft of this patch, and to Samuel =
Karp
for testing it.

[ References ]

The GitHub security advisory for this vulnerability has been posted[3].

[1]: https://github.com/opencontainers/runc/releases/tag/v1.0.0-rc95
[2]: https://github.com/openSUSE/libpathrs
[3]: https://github.com/opencontainers/runc/security/advisories/GHSA-c3xm-p=
vg7-gh7r

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--4wmweqrjmk7egrvv
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2021-30465.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 0ca91f44f1664da834bc61115a849b56d22f595f Mon Sep 17 00:00:00 2001
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Thu, 1 Apr 2021 12:00:31 -0700
Subject: [PATCH] rootfs: add mount destination validation

Because the target of a mount is inside a container (which may be a
volume that is shared with another container), there exists a race
condition where the target of the mount may change to a path containing
a symlink after we have sanitised the path -- resulting in us
inadvertently mounting the path outside of the container.

This is not immediately useful because we are in a mount namespace with
MS_SLAVE mount propagation applied to "/", so we cannot mount on top of
host paths in the host namespace. However, if any subsequent mountpoints
in the configuration use a subdirectory of that host path as a source,
those subsequent mounts will use an attacker-controlled source path
(resolved within the host rootfs) -- allowing the bind-mounting of "/"
into the container.

While arguably configuration issues like this are not entirely within
runc's threat model, within the context of Kubernetes (and possibly
other container managers that provide semi-arbitrary container creation
privileges to untrusted users) this is a legitimate issue. Since we
cannot block mounting from the host into the container, we need to block
the first stage of this attack (mounting onto a path outside the
container).

The long-term plan to solve this would be to migrate to libpathrs, but
as a stop-gap we implement libpathrs-like path verification through
readlink(/proc/self/fd/$n) and then do mount operations through the
procfd once it's been verified to be inside the container. The target
could move after we've checked it, but if it is inside the container
then we can assume that it is safe for the same reason that libpathrs
operations would be safe.

A slight wrinkle is the "copyup" functionality we provide for tmpfs,
which is the only case where we want to do a mount on the host
filesystem. To facilitate this, I split out the copy-up functionality
entirely so that the logic isn't interspersed with the regular tmpfs
logic. In addition, all dependencies on m.Destination being overwritten
have been removed since that pattern was just begging to be a source of
more mount-target bugs (we do still have to modify m.Destination for
tmpfs-copyup but we only do it temporarily).

Fixes: CVE-2021-30465
Reported-by: Etienne Champetier <champetier.etienne@gmail.com>
Co-authored-by: Noah Meyerhans <nmeyerha@amazon.com>
Reviewed-by: Samuel Karp <skarp@amazon.com>
Reviewed-by: Kir Kolyshkin <kolyshkin@gmail.com> (@kolyshkin)
Reviewed-by: Akihiro Suda <akihiro.suda.cz@hco.ntt.co.jp>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 libcontainer/container_linux.go  |  25 +--
 libcontainer/rootfs_linux.go     | 251 +++++++++++++++----------------
 libcontainer/utils/utils.go      |  54 +++++++
 libcontainer/utils/utils_test.go |  35 +++++
 4 files changed, 229 insertions(+), 136 deletions(-)

diff --git a/libcontainer/container_linux.go b/libcontainer/container_linux=
.go
index 945a0fa0d577..849bf4a613ce 100644
--- a/libcontainer/container_linux.go
+++ b/libcontainer/container_linux.go
@@ -1217,7 +1217,6 @@ func (c *linuxContainer) makeCriuRestoreMountpoints(m=
 *configs.Mount) error {
 		if err :=3D checkProcMount(c.config.Rootfs, dest, ""); err !=3D nil {
 			return err
 		}
-		m.Destination =3D dest
 		if err :=3D os.MkdirAll(dest, 0755); err !=3D nil {
 			return err
 		}
@@ -1257,13 +1256,16 @@ func (c *linuxContainer) prepareCriuRestoreMounts(m=
ounts []*configs.Mount) error
 	umounts :=3D []string{}
 	defer func() {
 		for _, u :=3D range umounts {
-			if e :=3D unix.Unmount(u, unix.MNT_DETACH); e !=3D nil {
-				if e !=3D unix.EINVAL {
-					// Ignore EINVAL as it means 'target is not a mount point.'
-					// It probably has already been unmounted.
-					logrus.Warnf("Error during cleanup unmounting of %q (%v)", u, e)
+			_ =3D utils.WithProcfd(c.config.Rootfs, u, func(procfd string) error {
+				if e :=3D unix.Unmount(procfd, unix.MNT_DETACH); e !=3D nil {
+					if e !=3D unix.EINVAL {
+						// Ignore EINVAL as it means 'target is not a mount point.'
+						// It probably has already been unmounted.
+						logrus.Warnf("Error during cleanup unmounting of %s (%s): %v", procf=
d, u, e)
+					}
 				}
-			}
+				return nil
+			})
 		}
 	}()
 	for _, m :=3D range mounts {
@@ -1281,8 +1283,13 @@ func (c *linuxContainer) prepareCriuRestoreMounts(mo=
unts []*configs.Mount) error
 			// because during initial container creation mounts are
 			// set up in the order they are configured.
 			if m.Device =3D=3D "bind" {
-				if err :=3D unix.Mount(m.Source, m.Destination, "", unix.MS_BIND|unix.=
MS_REC, ""); err !=3D nil {
-					return errorsf.Wrapf(err, "unable to bind mount %q to %q", m.Source, =
m.Destination)
+				if err :=3D utils.WithProcfd(c.config.Rootfs, m.Destination, func(proc=
fd string) error {
+					if err :=3D unix.Mount(m.Source, procfd, "", unix.MS_BIND|unix.MS_REC=
, ""); err !=3D nil {
+						return errorsf.Wrapf(err, "unable to bind mount %q to %q (through %q=
)", m.Source, m.Destination, procfd)
+					}
+					return nil
+				}); err !=3D nil {
+					return err
 				}
 				umounts =3D append(umounts, m.Destination)
 			}
diff --git a/libcontainer/rootfs_linux.go b/libcontainer/rootfs_linux.go
index 1d8a5a036017..d9c5146dddd1 100644
--- a/libcontainer/rootfs_linux.go
+++ b/libcontainer/rootfs_linux.go
@@ -25,6 +25,7 @@ import (
 	libcontainerUtils "github.com/opencontainers/runc/libcontainer/utils"
 	"github.com/opencontainers/runtime-spec/specs-go"
 	"github.com/opencontainers/selinux/go-selinux/label"
+	"github.com/sirupsen/logrus"
 	"golang.org/x/sys/unix"
 )
=20
@@ -228,8 +229,6 @@ func prepareBindMount(m *configs.Mount, rootfs string) =
error {
 	if err :=3D checkProcMount(rootfs, dest, m.Source); err !=3D nil {
 		return err
 	}
-	// update the mount with the correct dest after symlinks are resolved.
-	m.Destination =3D dest
 	if err :=3D createIfNotExists(dest, stat.IsDir()); err !=3D nil {
 		return err
 	}
@@ -266,18 +265,21 @@ func mountCgroupV1(m *configs.Mount, c *mountConfig) =
error {
 			if err :=3D os.MkdirAll(subsystemPath, 0755); err !=3D nil {
 				return err
 			}
-			flags :=3D defaultMountFlags
-			if m.Flags&unix.MS_RDONLY !=3D 0 {
-				flags =3D flags | unix.MS_RDONLY
-			}
-			cgroupmount :=3D &configs.Mount{
-				Source:      "cgroup",
-				Device:      "cgroup", // this is actually fstype
-				Destination: subsystemPath,
-				Flags:       flags,
-				Data:        filepath.Base(subsystemPath),
-			}
-			if err :=3D mountNewCgroup(cgroupmount); err !=3D nil {
+			if err :=3D utils.WithProcfd(c.root, b.Destination, func(procfd string)=
 error {
+				flags :=3D defaultMountFlags
+				if m.Flags&unix.MS_RDONLY !=3D 0 {
+					flags =3D flags | unix.MS_RDONLY
+				}
+				var (
+					source =3D "cgroup"
+					data   =3D filepath.Base(subsystemPath)
+				)
+				if data =3D=3D "systemd" {
+					data =3D cgroups.CgroupNamePrefix + data
+					source =3D "systemd"
+				}
+				return unix.Mount(source, procfd, "cgroup", uintptr(flags), data)
+			}); err !=3D nil {
 				return err
 			}
 		} else {
@@ -307,33 +309,79 @@ func mountCgroupV2(m *configs.Mount, c *mountConfig) =
error {
 	if err :=3D os.MkdirAll(dest, 0755); err !=3D nil {
 		return err
 	}
-	if err :=3D unix.Mount(m.Source, dest, "cgroup2", uintptr(m.Flags), m.Dat=
a); err !=3D nil {
-		// when we are in UserNS but CgroupNS is not unshared, we cannot mount c=
group2 (#2158)
-		if err =3D=3D unix.EPERM || err =3D=3D unix.EBUSY {
-			src :=3D fs2.UnifiedMountpoint
-			if c.cgroupns && c.cgroup2Path !=3D "" {
-				// Emulate cgroupns by bind-mounting
-				// the container cgroup path rather than
-				// the whole /sys/fs/cgroup.
-				src =3D c.cgroup2Path
-			}
-			err =3D unix.Mount(src, dest, "", uintptr(m.Flags)|unix.MS_BIND, "")
-			if err =3D=3D unix.ENOENT && c.rootlessCgroups {
-				err =3D nil
+	return utils.WithProcfd(c.root, m.Destination, func(procfd string) error {
+		if err :=3D unix.Mount(m.Source, procfd, "cgroup2", uintptr(m.Flags), m.=
Data); err !=3D nil {
+			// when we are in UserNS but CgroupNS is not unshared, we cannot mount =
cgroup2 (#2158)
+			if err =3D=3D unix.EPERM || err =3D=3D unix.EBUSY {
+				src :=3D fs2.UnifiedMountpoint
+				if c.cgroupns && c.cgroup2Path !=3D "" {
+					// Emulate cgroupns by bind-mounting
+					// the container cgroup path rather than
+					// the whole /sys/fs/cgroup.
+					src =3D c.cgroup2Path
+				}
+				err =3D unix.Mount(src, procfd, "", uintptr(m.Flags)|unix.MS_BIND, "")
+				if err =3D=3D unix.ENOENT && c.rootlessCgroups {
+					err =3D nil
+				}
 			}
 			return err
 		}
+		return nil
+	})
+}
+
+func doTmpfsCopyUp(m *configs.Mount, rootfs, mountLabel string) (Err error=
) {
+	// Set up a scratch dir for the tmpfs on the host.
+	tmpdir, err :=3D prepareTmp("/tmp")
+	if err !=3D nil {
+		return newSystemErrorWithCause(err, "tmpcopyup: failed to setup tmpdir")
+	}
+	defer cleanupTmp(tmpdir)
+	tmpDir, err :=3D ioutil.TempDir(tmpdir, "runctmpdir")
+	if err !=3D nil {
+		return newSystemErrorWithCause(err, "tmpcopyup: failed to create tmpdir")
+	}
+	defer os.RemoveAll(tmpDir)
+
+	// Configure the *host* tmpdir as if it's the container mount. We change
+	// m.Destination since we are going to mount *on the host*.
+	oldDest :=3D m.Destination
+	m.Destination =3D tmpDir
+	err =3D mountPropagate(m, "/", mountLabel)
+	m.Destination =3D oldDest
+	if err !=3D nil {
 		return err
 	}
-	return nil
+	defer func() {
+		if Err !=3D nil {
+			if err :=3D unix.Unmount(tmpDir, unix.MNT_DETACH); err !=3D nil {
+				logrus.Warnf("tmpcopyup: failed to unmount tmpdir on error: %v", err)
+			}
+		}
+	}()
+
+	return utils.WithProcfd(rootfs, m.Destination, func(procfd string) (Err e=
rror) {
+		// Copy the container data to the host tmpdir. We append "/" to force
+		// CopyDirectory to resolve the symlink rather than trying to copy the
+		// symlink itself.
+		if err :=3D fileutils.CopyDirectory(procfd+"/", tmpDir); err !=3D nil {
+			return fmt.Errorf("tmpcopyup: failed to copy %s to %s (%s): %w", m.Dest=
ination, procfd, tmpDir, err)
+		}
+		// Now move the mount into the container.
+		if err :=3D unix.Mount(tmpDir, procfd, "", unix.MS_MOVE, ""); err !=3D n=
il {
+			return fmt.Errorf("tmpcopyup: failed to move mount %s to %s (%s): %w", =
tmpDir, procfd, m.Destination, err)
+		}
+		return nil
+	})
 }
=20
 func mountToRootfs(m *configs.Mount, c *mountConfig) error {
 	rootfs :=3D c.root
 	mountLabel :=3D c.label
-	dest :=3D m.Destination
-	if !strings.HasPrefix(dest, rootfs) {
-		dest =3D filepath.Join(rootfs, dest)
+	dest, err :=3D securejoin.SecureJoin(rootfs, m.Destination)
+	if err !=3D nil {
+		return err
 	}
=20
 	switch m.Device {
@@ -364,53 +412,21 @@ func mountToRootfs(m *configs.Mount, c *mountConfig) =
error {
 		}
 		return label.SetFileLabel(dest, mountLabel)
 	case "tmpfs":
-		copyUp :=3D m.Extensions&configs.EXT_COPYUP =3D=3D configs.EXT_COPYUP
-		tmpDir :=3D ""
-		// dest might be an absolute symlink, so it needs
-		// to be resolved under rootfs.
-		dest, err :=3D securejoin.SecureJoin(rootfs, m.Destination)
-		if err !=3D nil {
-			return err
-		}
-		m.Destination =3D dest
 		stat, err :=3D os.Stat(dest)
 		if err !=3D nil {
 			if err :=3D os.MkdirAll(dest, 0755); err !=3D nil {
 				return err
 			}
 		}
-		if copyUp {
-			tmpdir, err :=3D prepareTmp("/tmp")
-			if err !=3D nil {
-				return newSystemErrorWithCause(err, "tmpcopyup: failed to setup tmpdir=
")
-			}
-			defer cleanupTmp(tmpdir)
-			tmpDir, err =3D ioutil.TempDir(tmpdir, "runctmpdir")
-			if err !=3D nil {
-				return newSystemErrorWithCause(err, "tmpcopyup: failed to create tmpdi=
r")
-			}
-			defer os.RemoveAll(tmpDir)
-			m.Destination =3D tmpDir
+
+		if m.Extensions&configs.EXT_COPYUP =3D=3D configs.EXT_COPYUP {
+			err =3D doTmpfsCopyUp(m, rootfs, mountLabel)
+		} else {
+			err =3D mountPropagate(m, rootfs, mountLabel)
 		}
-		if err :=3D mountPropagate(m, rootfs, mountLabel); err !=3D nil {
+		if err !=3D nil {
 			return err
 		}
-		if copyUp {
-			if err :=3D fileutils.CopyDirectory(dest, tmpDir); err !=3D nil {
-				errMsg :=3D fmt.Errorf("tmpcopyup: failed to copy %s to %s: %v", dest,=
 tmpDir, err)
-				if err1 :=3D unix.Unmount(tmpDir, unix.MNT_DETACH); err1 !=3D nil {
-					return newSystemErrorWithCausef(err1, "tmpcopyup: %v: failed to unmou=
nt", errMsg)
-				}
-				return errMsg
-			}
-			if err :=3D unix.Mount(tmpDir, dest, "", unix.MS_MOVE, ""); err !=3D ni=
l {
-				errMsg :=3D fmt.Errorf("tmpcopyup: failed to move mount %s to %s: %v",=
 tmpDir, dest, err)
-				if err1 :=3D unix.Unmount(tmpDir, unix.MNT_DETACH); err1 !=3D nil {
-					return newSystemErrorWithCausef(err1, "tmpcopyup: %v: failed to unmou=
nt", errMsg)
-				}
-				return errMsg
-			}
-		}
 		if stat !=3D nil {
 			if err =3D os.Chmod(dest, stat.Mode()); err !=3D nil {
 				return err
@@ -454,19 +470,9 @@ func mountToRootfs(m *configs.Mount, c *mountConfig) e=
rror {
 		}
 		return mountCgroupV1(m, c)
 	default:
-		// ensure that the destination of the mount is resolved of symlinks at m=
ount time because
-		// any previous mounts can invalidate the next mount's destination.
-		// this can happen when a user specifies mounts within other mounts to c=
ause breakouts or other
-		// evil stuff to try to escape the container's rootfs.
-		var err error
-		if dest, err =3D securejoin.SecureJoin(rootfs, m.Destination); err !=3D =
nil {
-			return err
-		}
 		if err :=3D checkProcMount(rootfs, dest, m.Source); err !=3D nil {
 			return err
 		}
-		// update the mount with the correct dest after symlinks are resolved.
-		m.Destination =3D dest
 		if err :=3D os.MkdirAll(dest, 0755); err !=3D nil {
 			return err
 		}
@@ -649,7 +655,7 @@ func createDevices(config *configs.Config) error {
 	return nil
 }
=20
-func bindMountDeviceNode(dest string, node *devices.Device) error {
+func bindMountDeviceNode(rootfs, dest string, node *devices.Device) error {
 	f, err :=3D os.Create(dest)
 	if err !=3D nil && !os.IsExist(err) {
 		return err
@@ -657,7 +663,9 @@ func bindMountDeviceNode(dest string, node *devices.Dev=
ice) error {
 	if f !=3D nil {
 		f.Close()
 	}
-	return unix.Mount(node.Path, dest, "bind", unix.MS_BIND, "")
+	return utils.WithProcfd(rootfs, dest, func(procfd string) error {
+		return unix.Mount(node.Path, procfd, "bind", unix.MS_BIND, "")
+	})
 }
=20
 // Creates the device node in the rootfs of the container.
@@ -666,18 +674,21 @@ func createDeviceNode(rootfs string, node *devices.De=
vice, bind bool) error {
 		// The node only exists for cgroup reasons, ignore it here.
 		return nil
 	}
-	dest :=3D filepath.Join(rootfs, node.Path)
+	dest, err :=3D securejoin.SecureJoin(rootfs, node.Path)
+	if err !=3D nil {
+		return err
+	}
 	if err :=3D os.MkdirAll(filepath.Dir(dest), 0755); err !=3D nil {
 		return err
 	}
 	if bind {
-		return bindMountDeviceNode(dest, node)
+		return bindMountDeviceNode(rootfs, dest, node)
 	}
 	if err :=3D mknodDevice(dest, node); err !=3D nil {
 		if os.IsExist(err) {
 			return nil
 		} else if os.IsPermission(err) {
-			return bindMountDeviceNode(dest, node)
+			return bindMountDeviceNode(rootfs, dest, node)
 		}
 		return err
 	}
@@ -1024,61 +1035,47 @@ func writeSystemProperty(key, value string) error {
 }
=20
 func remount(m *configs.Mount, rootfs string) error {
-	var (
-		dest =3D m.Destination
-	)
-	if !strings.HasPrefix(dest, rootfs) {
-		dest =3D filepath.Join(rootfs, dest)
-	}
-	return unix.Mount(m.Source, dest, m.Device, uintptr(m.Flags|unix.MS_REMOU=
NT), "")
+	return utils.WithProcfd(rootfs, m.Destination, func(procfd string) error {
+		return unix.Mount(m.Source, procfd, m.Device, uintptr(m.Flags|unix.MS_RE=
MOUNT), "")
+	})
 }
=20
 // Do the mount operation followed by additional mounts required to take c=
are
-// of propagation flags.
+// of propagation flags. This will always be scoped inside the container r=
ootfs.
 func mountPropagate(m *configs.Mount, rootfs string, mountLabel string) er=
ror {
 	var (
-		dest  =3D m.Destination
 		data  =3D label.FormatMountLabel(m.Data, mountLabel)
 		flags =3D m.Flags
 	)
-	if libcontainerUtils.CleanPath(dest) =3D=3D "/dev" {
-		flags &=3D ^unix.MS_RDONLY
-	}
-
-	// Mount it rw to allow chmod operation. A remount will be performed
-	// later to make it ro if set.
-	if m.Device =3D=3D "tmpfs" {
+	// Delay mounting the filesystem read-only if we need to do further
+	// operations on it. We need to set up files in "/dev" and tmpfs mounts m=
ay
+	// need to be chmod-ed after mounting. The mount will be remounted ro lat=
er
+	// in finalizeRootfs() if necessary.
+	if libcontainerUtils.CleanPath(m.Destination) =3D=3D "/dev" || m.Device =
=3D=3D "tmpfs" {
 		flags &=3D ^unix.MS_RDONLY
 	}
=20
-	copyUp :=3D m.Extensions&configs.EXT_COPYUP =3D=3D configs.EXT_COPYUP
-	if !(copyUp || strings.HasPrefix(dest, rootfs)) {
-		dest =3D filepath.Join(rootfs, dest)
-	}
-
-	if err :=3D unix.Mount(m.Source, dest, m.Device, uintptr(flags), data); e=
rr !=3D nil {
-		return err
-	}
-
-	for _, pflag :=3D range m.PropagationFlags {
-		if err :=3D unix.Mount("", dest, "", uintptr(pflag), ""); err !=3D nil {
-			return err
+	// Because the destination is inside a container path which might be
+	// mutating underneath us, we verify that we are actually going to mount
+	// inside the container with WithProcfd() -- mounting through a procfd
+	// mounts on the target.
+	if err :=3D utils.WithProcfd(rootfs, m.Destination, func(procfd string) e=
rror {
+		return unix.Mount(m.Source, procfd, m.Device, uintptr(flags), data)
+	}); err !=3D nil {
+		return fmt.Errorf("mount through procfd: %w", err)
+	}
+	// We have to apply mount propagation flags in a separate WithProcfd() ca=
ll
+	// because the previous call invalidates the passed procfd -- the mount
+	// target needs to be re-opened.
+	if err :=3D utils.WithProcfd(rootfs, m.Destination, func(procfd string) e=
rror {
+		for _, pflag :=3D range m.PropagationFlags {
+			if err :=3D unix.Mount("", procfd, "", uintptr(pflag), ""); err !=3D ni=
l {
+				return err
+			}
 		}
-	}
-	return nil
-}
-
-func mountNewCgroup(m *configs.Mount) error {
-	var (
-		data   =3D m.Data
-		source =3D m.Source
-	)
-	if data =3D=3D "systemd" {
-		data =3D cgroups.CgroupNamePrefix + data
-		source =3D "systemd"
-	}
-	if err :=3D unix.Mount(source, m.Destination, m.Device, uintptr(m.Flags),=
 data); err !=3D nil {
-		return err
+		return nil
+	}); err !=3D nil {
+		return fmt.Errorf("change mount propagation through procfd: %w", err)
 	}
 	return nil
 }
diff --git a/libcontainer/utils/utils.go b/libcontainer/utils/utils.go
index 1b72b7a1c1ba..cd78f23e1bd0 100644
--- a/libcontainer/utils/utils.go
+++ b/libcontainer/utils/utils.go
@@ -3,12 +3,15 @@ package utils
 import (
 	"encoding/binary"
 	"encoding/json"
+	"fmt"
 	"io"
 	"os"
 	"path/filepath"
+	"strconv"
 	"strings"
 	"unsafe"
=20
+	"github.com/cyphar/filepath-securejoin"
 	"golang.org/x/sys/unix"
 )
=20
@@ -88,6 +91,57 @@ func CleanPath(path string) string {
 	return filepath.Clean(path)
 }
=20
+// stripRoot returns the passed path, stripping the root path if it was
+// (lexicially) inside it. Note that both passed paths will always be trea=
ted
+// as absolute, and the returned path will also always be absolute. In
+// addition, the paths are cleaned before stripping the root.
+func stripRoot(root, path string) string {
+	// Make the paths clean and absolute.
+	root, path =3D CleanPath("/"+root), CleanPath("/"+path)
+	switch {
+	case path =3D=3D root:
+		path =3D "/"
+	case root =3D=3D "/":
+		// do nothing
+	case strings.HasPrefix(path, root+"/"):
+		path =3D strings.TrimPrefix(path, root+"/")
+	}
+	return CleanPath("/" + path)
+}
+
+// WithProcfd runs the passed closure with a procfd path (/proc/self/fd/..=
.)
+// corresponding to the unsafePath resolved within the root. Before passin=
g the
+// fd, this path is verified to have been inside the root -- so operating =
on it
+// through the passed fdpath should be safe. Do not access this path throu=
gh
+// the original path strings, and do not attempt to use the pathname outsi=
de of
+// the passed closure (the file handle will be freed once the closure retu=
rns).
+func WithProcfd(root, unsafePath string, fn func(procfd string) error) err=
or {
+	// Remove the root then forcefully resolve inside the root.
+	unsafePath =3D stripRoot(root, unsafePath)
+	path, err :=3D securejoin.SecureJoin(root, unsafePath)
+	if err !=3D nil {
+		return fmt.Errorf("resolving path inside rootfs failed: %v", err)
+	}
+
+	// Open the target path.
+	fh, err :=3D os.OpenFile(path, unix.O_PATH|unix.O_CLOEXEC, 0)
+	if err !=3D nil {
+		return fmt.Errorf("open o_path procfd: %w", err)
+	}
+	defer fh.Close()
+
+	// Double-check the path is the one we expected.
+	procfd :=3D "/proc/self/fd/" + strconv.Itoa(int(fh.Fd()))
+	if realpath, err :=3D os.Readlink(procfd); err !=3D nil {
+		return fmt.Errorf("procfd verification failed: %w", err)
+	} else if realpath !=3D path {
+		return fmt.Errorf("possibly malicious path detected -- refusing to opera=
te on %s", realpath)
+	}
+
+	// Run the closure.
+	return fn(procfd)
+}
+
 // SearchLabels searches a list of key-value pairs for the provided key and
 // returns the corresponding value. The pairs must be separated with '=3D'.
 func SearchLabels(labels []string, query string) string {
diff --git a/libcontainer/utils/utils_test.go b/libcontainer/utils/utils_te=
st.go
index 7f38ed169a6b..d33662238d36 100644
--- a/libcontainer/utils/utils_test.go
+++ b/libcontainer/utils/utils_test.go
@@ -143,3 +143,38 @@ func TestCleanPath(t *testing.T) {
 		t.Errorf("expected to receive '/foo' and received %s", path)
 	}
 }
+
+func TestStripRoot(t *testing.T) {
+	for _, test :=3D range []struct {
+		root, path, out string
+	}{
+		// Works with multiple components.
+		{"/a/b", "/a/b/c", "/c"},
+		{"/hello/world", "/hello/world/the/quick-brown/fox", "/the/quick-brown/f=
ox"},
+		// '/' must be a no-op.
+		{"/", "/a/b/c", "/a/b/c"},
+		// Must be the correct order.
+		{"/a/b", "/a/c/b", "/a/c/b"},
+		// Must be at start.
+		{"/abc/def", "/foo/abc/def/bar", "/foo/abc/def/bar"},
+		// Must be a lexical parent.
+		{"/foo/bar", "/foo/barSAMECOMPONENT", "/foo/barSAMECOMPONENT"},
+		// Must only strip the root once.
+		{"/foo/bar", "/foo/bar/foo/bar/baz", "/foo/bar/baz"},
+		// Deal with .. in a fairly sane way.
+		{"/foo/bar", "/foo/bar/../baz", "/foo/baz"},
+		{"/foo/bar", "../../../../../../foo/bar/baz", "/baz"},
+		{"/foo/bar", "/../../../../../../foo/bar/baz", "/baz"},
+		{"/foo/bar/../baz", "/foo/baz/bar", "/bar"},
+		{"/foo/bar/../baz", "/foo/baz/../bar/../baz/./foo", "/foo"},
+		// All paths are made absolute before stripping.
+		{"foo/bar", "/foo/bar/baz/bee", "/baz/bee"},
+		{"/foo/bar", "foo/bar/baz/beef", "/baz/beef"},
+		{"foo/bar", "foo/bar/baz/beets", "/baz/beets"},
+	} {
+		got :=3D stripRoot(test.root, test.path)
+		if got !=3D test.out {
+			t.Errorf("stripRoot(%q, %q) -- got %q, expected %q", test.root, test.pa=
th, got, test.out)
+		}
+	}
+}
--=20
2.31.1


--4wmweqrjmk7egrvv
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="rc94-CVE-2021-30465.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 7aa8c630d3a5605456873c4125178d8fbffc8bf5 Mon Sep 17 00:00:00 2001
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Thu, 1 Apr 2021 12:00:31 -0700
Subject: [PATCH] rootfs: add mount destination validation

Because the target of a mount is inside a container (which may be a
volume that is shared with another container), there exists a race
condition where the target of the mount may change to a path containing
a symlink after we have sanitised the path -- resulting in us
inadvertently mounting the path outside of the container.

This is not immediately useful because we are in a mount namespace with
MS_SLAVE mount propagation applied to "/", so we cannot mount on top of
host paths in the host namespace. However, if any subsequent mountpoints
in the configuration use a subdirectory of that host path as a source,
those subsequent mounts will use an attacker-controlled source path
(resolved within the host rootfs) -- allowing the bind-mounting of "/"
into the container.

While arguably configuration issues like this are not entirely within
runc's threat model, within the context of Kubernetes (and possibly
other container managers that provide semi-arbitrary container creation
privileges to untrusted users) this is a legitimate issue. Since we
cannot block mounting from the host into the container, we need to block
the first stage of this attack (mounting onto a path outside the
container).

The long-term plan to solve this would be to migrate to libpathrs, but
as a stop-gap we implement libpathrs-like path verification through
readlink(/proc/self/fd/$n) and then do mount operations through the
procfd once it's been verified to be inside the container. The target
could move after we've checked it, but if it is inside the container
then we can assume that it is safe for the same reason that libpathrs
operations would be safe.

A slight wrinkle is the "copyup" functionality we provide for tmpfs,
which is the only case where we want to do a mount on the host
filesystem. To facilitate this, I split out the copy-up functionality
entirely so that the logic isn't interspersed with the regular tmpfs
logic. In addition, all dependencies on m.Destination being overwritten
have been removed since that pattern was just begging to be a source of
more mount-target bugs (we do still have to modify m.Destination for
tmpfs-copyup but we only do it temporarily).

Fixes: CVE-2021-30465
Reported-by: Etienne Champetier <champetier.etienne@gmail.com>
Co-authored-by: Noah Meyerhans <nmeyerha@amazon.com>
Reviewed-by: Samuel Karp <skarp@amazon.com>
Reviewed-by: Kir Kolyshkin <kolyshkin@gmail.com> (@kolyshkin)
Reviewed-by: Akihiro Suda <akihiro.suda.cz@hco.ntt.co.jp>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 libcontainer/container_linux.go  |  25 +--
 libcontainer/rootfs_linux.go     | 251 +++++++++++++++----------------
 libcontainer/utils/utils.go      |  54 +++++++
 libcontainer/utils/utils_test.go |  35 +++++
 4 files changed, 229 insertions(+), 136 deletions(-)

diff --git a/libcontainer/container_linux.go b/libcontainer/container_linux=
.go
index 945a0fa0d577..849bf4a613ce 100644
--- a/libcontainer/container_linux.go
+++ b/libcontainer/container_linux.go
@@ -1217,7 +1217,6 @@ func (c *linuxContainer) makeCriuRestoreMountpoints(m=
 *configs.Mount) error {
 		if err :=3D checkProcMount(c.config.Rootfs, dest, ""); err !=3D nil {
 			return err
 		}
-		m.Destination =3D dest
 		if err :=3D os.MkdirAll(dest, 0755); err !=3D nil {
 			return err
 		}
@@ -1257,13 +1256,16 @@ func (c *linuxContainer) prepareCriuRestoreMounts(m=
ounts []*configs.Mount) error
 	umounts :=3D []string{}
 	defer func() {
 		for _, u :=3D range umounts {
-			if e :=3D unix.Unmount(u, unix.MNT_DETACH); e !=3D nil {
-				if e !=3D unix.EINVAL {
-					// Ignore EINVAL as it means 'target is not a mount point.'
-					// It probably has already been unmounted.
-					logrus.Warnf("Error during cleanup unmounting of %q (%v)", u, e)
+			_ =3D utils.WithProcfd(c.config.Rootfs, u, func(procfd string) error {
+				if e :=3D unix.Unmount(procfd, unix.MNT_DETACH); e !=3D nil {
+					if e !=3D unix.EINVAL {
+						// Ignore EINVAL as it means 'target is not a mount point.'
+						// It probably has already been unmounted.
+						logrus.Warnf("Error during cleanup unmounting of %s (%s): %v", procf=
d, u, e)
+					}
 				}
-			}
+				return nil
+			})
 		}
 	}()
 	for _, m :=3D range mounts {
@@ -1281,8 +1283,13 @@ func (c *linuxContainer) prepareCriuRestoreMounts(mo=
unts []*configs.Mount) error
 			// because during initial container creation mounts are
 			// set up in the order they are configured.
 			if m.Device =3D=3D "bind" {
-				if err :=3D unix.Mount(m.Source, m.Destination, "", unix.MS_BIND|unix.=
MS_REC, ""); err !=3D nil {
-					return errorsf.Wrapf(err, "unable to bind mount %q to %q", m.Source, =
m.Destination)
+				if err :=3D utils.WithProcfd(c.config.Rootfs, m.Destination, func(proc=
fd string) error {
+					if err :=3D unix.Mount(m.Source, procfd, "", unix.MS_BIND|unix.MS_REC=
, ""); err !=3D nil {
+						return errorsf.Wrapf(err, "unable to bind mount %q to %q (through %q=
)", m.Source, m.Destination, procfd)
+					}
+					return nil
+				}); err !=3D nil {
+					return err
 				}
 				umounts =3D append(umounts, m.Destination)
 			}
diff --git a/libcontainer/rootfs_linux.go b/libcontainer/rootfs_linux.go
index 1d8a5a036017..d9c5146dddd1 100644
--- a/libcontainer/rootfs_linux.go
+++ b/libcontainer/rootfs_linux.go
@@ -25,6 +25,7 @@ import (
 	libcontainerUtils "github.com/opencontainers/runc/libcontainer/utils"
 	"github.com/opencontainers/runtime-spec/specs-go"
 	"github.com/opencontainers/selinux/go-selinux/label"
+	"github.com/sirupsen/logrus"
 	"golang.org/x/sys/unix"
 )
=20
@@ -228,8 +229,6 @@ func prepareBindMount(m *configs.Mount, rootfs string) =
error {
 	if err :=3D checkProcMount(rootfs, dest, m.Source); err !=3D nil {
 		return err
 	}
-	// update the mount with the correct dest after symlinks are resolved.
-	m.Destination =3D dest
 	if err :=3D createIfNotExists(dest, stat.IsDir()); err !=3D nil {
 		return err
 	}
@@ -266,18 +265,21 @@ func mountCgroupV1(m *configs.Mount, c *mountConfig) =
error {
 			if err :=3D os.MkdirAll(subsystemPath, 0755); err !=3D nil {
 				return err
 			}
-			flags :=3D defaultMountFlags
-			if m.Flags&unix.MS_RDONLY !=3D 0 {
-				flags =3D flags | unix.MS_RDONLY
-			}
-			cgroupmount :=3D &configs.Mount{
-				Source:      "cgroup",
-				Device:      "cgroup", // this is actually fstype
-				Destination: subsystemPath,
-				Flags:       flags,
-				Data:        filepath.Base(subsystemPath),
-			}
-			if err :=3D mountNewCgroup(cgroupmount); err !=3D nil {
+			if err :=3D utils.WithProcfd(c.root, b.Destination, func(procfd string)=
 error {
+				flags :=3D defaultMountFlags
+				if m.Flags&unix.MS_RDONLY !=3D 0 {
+					flags =3D flags | unix.MS_RDONLY
+				}
+				var (
+					source =3D "cgroup"
+					data   =3D filepath.Base(subsystemPath)
+				)
+				if data =3D=3D "systemd" {
+					data =3D cgroups.CgroupNamePrefix + data
+					source =3D "systemd"
+				}
+				return unix.Mount(source, procfd, "cgroup", uintptr(flags), data)
+			}); err !=3D nil {
 				return err
 			}
 		} else {
@@ -307,33 +309,79 @@ func mountCgroupV2(m *configs.Mount, c *mountConfig) =
error {
 	if err :=3D os.MkdirAll(dest, 0755); err !=3D nil {
 		return err
 	}
-	if err :=3D unix.Mount(m.Source, dest, "cgroup2", uintptr(m.Flags), m.Dat=
a); err !=3D nil {
-		// when we are in UserNS but CgroupNS is not unshared, we cannot mount c=
group2 (#2158)
-		if err =3D=3D unix.EPERM || err =3D=3D unix.EBUSY {
-			src :=3D fs2.UnifiedMountpoint
-			if c.cgroupns && c.cgroup2Path !=3D "" {
-				// Emulate cgroupns by bind-mounting
-				// the container cgroup path rather than
-				// the whole /sys/fs/cgroup.
-				src =3D c.cgroup2Path
-			}
-			err =3D unix.Mount(src, dest, "", uintptr(m.Flags)|unix.MS_BIND, "")
-			if err =3D=3D unix.ENOENT && c.rootlessCgroups {
-				err =3D nil
+	return utils.WithProcfd(c.root, m.Destination, func(procfd string) error {
+		if err :=3D unix.Mount(m.Source, procfd, "cgroup2", uintptr(m.Flags), m.=
Data); err !=3D nil {
+			// when we are in UserNS but CgroupNS is not unshared, we cannot mount =
cgroup2 (#2158)
+			if err =3D=3D unix.EPERM || err =3D=3D unix.EBUSY {
+				src :=3D fs2.UnifiedMountpoint
+				if c.cgroupns && c.cgroup2Path !=3D "" {
+					// Emulate cgroupns by bind-mounting
+					// the container cgroup path rather than
+					// the whole /sys/fs/cgroup.
+					src =3D c.cgroup2Path
+				}
+				err =3D unix.Mount(src, procfd, "", uintptr(m.Flags)|unix.MS_BIND, "")
+				if err =3D=3D unix.ENOENT && c.rootlessCgroups {
+					err =3D nil
+				}
 			}
 			return err
 		}
+		return nil
+	})
+}
+
+func doTmpfsCopyUp(m *configs.Mount, rootfs, mountLabel string) (Err error=
) {
+	// Set up a scratch dir for the tmpfs on the host.
+	tmpdir, err :=3D prepareTmp("/tmp")
+	if err !=3D nil {
+		return newSystemErrorWithCause(err, "tmpcopyup: failed to setup tmpdir")
+	}
+	defer cleanupTmp(tmpdir)
+	tmpDir, err :=3D ioutil.TempDir(tmpdir, "runctmpdir")
+	if err !=3D nil {
+		return newSystemErrorWithCause(err, "tmpcopyup: failed to create tmpdir")
+	}
+	defer os.RemoveAll(tmpDir)
+
+	// Configure the *host* tmpdir as if it's the container mount. We change
+	// m.Destination since we are going to mount *on the host*.
+	oldDest :=3D m.Destination
+	m.Destination =3D tmpDir
+	err =3D mountPropagate(m, "/", mountLabel)
+	m.Destination =3D oldDest
+	if err !=3D nil {
 		return err
 	}
-	return nil
+	defer func() {
+		if Err !=3D nil {
+			if err :=3D unix.Unmount(tmpDir, unix.MNT_DETACH); err !=3D nil {
+				logrus.Warnf("tmpcopyup: failed to unmount tmpdir on error: %v", err)
+			}
+		}
+	}()
+
+	return utils.WithProcfd(rootfs, m.Destination, func(procfd string) (Err e=
rror) {
+		// Copy the container data to the host tmpdir. We append "/" to force
+		// CopyDirectory to resolve the symlink rather than trying to copy the
+		// symlink itself.
+		if err :=3D fileutils.CopyDirectory(procfd+"/", tmpDir); err !=3D nil {
+			return fmt.Errorf("tmpcopyup: failed to copy %s to %s (%s): %w", m.Dest=
ination, procfd, tmpDir, err)
+		}
+		// Now move the mount into the container.
+		if err :=3D unix.Mount(tmpDir, procfd, "", unix.MS_MOVE, ""); err !=3D n=
il {
+			return fmt.Errorf("tmpcopyup: failed to move mount %s to %s (%s): %w", =
tmpDir, procfd, m.Destination, err)
+		}
+		return nil
+	})
 }
=20
 func mountToRootfs(m *configs.Mount, c *mountConfig) error {
 	rootfs :=3D c.root
 	mountLabel :=3D c.label
-	dest :=3D m.Destination
-	if !strings.HasPrefix(dest, rootfs) {
-		dest =3D filepath.Join(rootfs, dest)
+	dest, err :=3D securejoin.SecureJoin(rootfs, m.Destination)
+	if err !=3D nil {
+		return err
 	}
=20
 	switch m.Device {
@@ -364,53 +412,21 @@ func mountToRootfs(m *configs.Mount, c *mountConfig) =
error {
 		}
 		return label.SetFileLabel(dest, mountLabel)
 	case "tmpfs":
-		copyUp :=3D m.Extensions&configs.EXT_COPYUP =3D=3D configs.EXT_COPYUP
-		tmpDir :=3D ""
-		// dest might be an absolute symlink, so it needs
-		// to be resolved under rootfs.
-		dest, err :=3D securejoin.SecureJoin(rootfs, m.Destination)
-		if err !=3D nil {
-			return err
-		}
-		m.Destination =3D dest
 		stat, err :=3D os.Stat(dest)
 		if err !=3D nil {
 			if err :=3D os.MkdirAll(dest, 0755); err !=3D nil {
 				return err
 			}
 		}
-		if copyUp {
-			tmpdir, err :=3D prepareTmp("/tmp")
-			if err !=3D nil {
-				return newSystemErrorWithCause(err, "tmpcopyup: failed to setup tmpdir=
")
-			}
-			defer cleanupTmp(tmpdir)
-			tmpDir, err =3D ioutil.TempDir(tmpdir, "runctmpdir")
-			if err !=3D nil {
-				return newSystemErrorWithCause(err, "tmpcopyup: failed to create tmpdi=
r")
-			}
-			defer os.RemoveAll(tmpDir)
-			m.Destination =3D tmpDir
+
+		if m.Extensions&configs.EXT_COPYUP =3D=3D configs.EXT_COPYUP {
+			err =3D doTmpfsCopyUp(m, rootfs, mountLabel)
+		} else {
+			err =3D mountPropagate(m, rootfs, mountLabel)
 		}
-		if err :=3D mountPropagate(m, rootfs, mountLabel); err !=3D nil {
+		if err !=3D nil {
 			return err
 		}
-		if copyUp {
-			if err :=3D fileutils.CopyDirectory(dest, tmpDir); err !=3D nil {
-				errMsg :=3D fmt.Errorf("tmpcopyup: failed to copy %s to %s: %v", dest,=
 tmpDir, err)
-				if err1 :=3D unix.Unmount(tmpDir, unix.MNT_DETACH); err1 !=3D nil {
-					return newSystemErrorWithCausef(err1, "tmpcopyup: %v: failed to unmou=
nt", errMsg)
-				}
-				return errMsg
-			}
-			if err :=3D unix.Mount(tmpDir, dest, "", unix.MS_MOVE, ""); err !=3D ni=
l {
-				errMsg :=3D fmt.Errorf("tmpcopyup: failed to move mount %s to %s: %v",=
 tmpDir, dest, err)
-				if err1 :=3D unix.Unmount(tmpDir, unix.MNT_DETACH); err1 !=3D nil {
-					return newSystemErrorWithCausef(err1, "tmpcopyup: %v: failed to unmou=
nt", errMsg)
-				}
-				return errMsg
-			}
-		}
 		if stat !=3D nil {
 			if err =3D os.Chmod(dest, stat.Mode()); err !=3D nil {
 				return err
@@ -454,19 +470,9 @@ func mountToRootfs(m *configs.Mount, c *mountConfig) e=
rror {
 		}
 		return mountCgroupV1(m, c)
 	default:
-		// ensure that the destination of the mount is resolved of symlinks at m=
ount time because
-		// any previous mounts can invalidate the next mount's destination.
-		// this can happen when a user specifies mounts within other mounts to c=
ause breakouts or other
-		// evil stuff to try to escape the container's rootfs.
-		var err error
-		if dest, err =3D securejoin.SecureJoin(rootfs, m.Destination); err !=3D =
nil {
-			return err
-		}
 		if err :=3D checkProcMount(rootfs, dest, m.Source); err !=3D nil {
 			return err
 		}
-		// update the mount with the correct dest after symlinks are resolved.
-		m.Destination =3D dest
 		if err :=3D os.MkdirAll(dest, 0755); err !=3D nil {
 			return err
 		}
@@ -649,7 +655,7 @@ func createDevices(config *configs.Config) error {
 	return nil
 }
=20
-func bindMountDeviceNode(dest string, node *devices.Device) error {
+func bindMountDeviceNode(rootfs, dest string, node *devices.Device) error {
 	f, err :=3D os.Create(dest)
 	if err !=3D nil && !os.IsExist(err) {
 		return err
@@ -657,7 +663,9 @@ func bindMountDeviceNode(dest string, node *devices.Dev=
ice) error {
 	if f !=3D nil {
 		f.Close()
 	}
-	return unix.Mount(node.Path, dest, "bind", unix.MS_BIND, "")
+	return utils.WithProcfd(rootfs, dest, func(procfd string) error {
+		return unix.Mount(node.Path, procfd, "bind", unix.MS_BIND, "")
+	})
 }
=20
 // Creates the device node in the rootfs of the container.
@@ -666,18 +674,21 @@ func createDeviceNode(rootfs string, node *devices.De=
vice, bind bool) error {
 		// The node only exists for cgroup reasons, ignore it here.
 		return nil
 	}
-	dest :=3D filepath.Join(rootfs, node.Path)
+	dest, err :=3D securejoin.SecureJoin(rootfs, node.Path)
+	if err !=3D nil {
+		return err
+	}
 	if err :=3D os.MkdirAll(filepath.Dir(dest), 0755); err !=3D nil {
 		return err
 	}
 	if bind {
-		return bindMountDeviceNode(dest, node)
+		return bindMountDeviceNode(rootfs, dest, node)
 	}
 	if err :=3D mknodDevice(dest, node); err !=3D nil {
 		if os.IsExist(err) {
 			return nil
 		} else if os.IsPermission(err) {
-			return bindMountDeviceNode(dest, node)
+			return bindMountDeviceNode(rootfs, dest, node)
 		}
 		return err
 	}
@@ -1024,61 +1035,47 @@ func writeSystemProperty(key, value string) error {
 }
=20
 func remount(m *configs.Mount, rootfs string) error {
-	var (
-		dest =3D m.Destination
-	)
-	if !strings.HasPrefix(dest, rootfs) {
-		dest =3D filepath.Join(rootfs, dest)
-	}
-	return unix.Mount(m.Source, dest, m.Device, uintptr(m.Flags|unix.MS_REMOU=
NT), "")
+	return utils.WithProcfd(rootfs, m.Destination, func(procfd string) error {
+		return unix.Mount(m.Source, procfd, m.Device, uintptr(m.Flags|unix.MS_RE=
MOUNT), "")
+	})
 }
=20
 // Do the mount operation followed by additional mounts required to take c=
are
-// of propagation flags.
+// of propagation flags. This will always be scoped inside the container r=
ootfs.
 func mountPropagate(m *configs.Mount, rootfs string, mountLabel string) er=
ror {
 	var (
-		dest  =3D m.Destination
 		data  =3D label.FormatMountLabel(m.Data, mountLabel)
 		flags =3D m.Flags
 	)
-	if libcontainerUtils.CleanPath(dest) =3D=3D "/dev" {
-		flags &=3D ^unix.MS_RDONLY
-	}
-
-	// Mount it rw to allow chmod operation. A remount will be performed
-	// later to make it ro if set.
-	if m.Device =3D=3D "tmpfs" {
+	// Delay mounting the filesystem read-only if we need to do further
+	// operations on it. We need to set up files in "/dev" and tmpfs mounts m=
ay
+	// need to be chmod-ed after mounting. The mount will be remounted ro lat=
er
+	// in finalizeRootfs() if necessary.
+	if libcontainerUtils.CleanPath(m.Destination) =3D=3D "/dev" || m.Device =
=3D=3D "tmpfs" {
 		flags &=3D ^unix.MS_RDONLY
 	}
=20
-	copyUp :=3D m.Extensions&configs.EXT_COPYUP =3D=3D configs.EXT_COPYUP
-	if !(copyUp || strings.HasPrefix(dest, rootfs)) {
-		dest =3D filepath.Join(rootfs, dest)
-	}
-
-	if err :=3D unix.Mount(m.Source, dest, m.Device, uintptr(flags), data); e=
rr !=3D nil {
-		return err
-	}
-
-	for _, pflag :=3D range m.PropagationFlags {
-		if err :=3D unix.Mount("", dest, "", uintptr(pflag), ""); err !=3D nil {
-			return err
+	// Because the destination is inside a container path which might be
+	// mutating underneath us, we verify that we are actually going to mount
+	// inside the container with WithProcfd() -- mounting through a procfd
+	// mounts on the target.
+	if err :=3D utils.WithProcfd(rootfs, m.Destination, func(procfd string) e=
rror {
+		return unix.Mount(m.Source, procfd, m.Device, uintptr(flags), data)
+	}); err !=3D nil {
+		return fmt.Errorf("mount through procfd: %w", err)
+	}
+	// We have to apply mount propagation flags in a separate WithProcfd() ca=
ll
+	// because the previous call invalidates the passed procfd -- the mount
+	// target needs to be re-opened.
+	if err :=3D utils.WithProcfd(rootfs, m.Destination, func(procfd string) e=
rror {
+		for _, pflag :=3D range m.PropagationFlags {
+			if err :=3D unix.Mount("", procfd, "", uintptr(pflag), ""); err !=3D ni=
l {
+				return err
+			}
 		}
-	}
-	return nil
-}
-
-func mountNewCgroup(m *configs.Mount) error {
-	var (
-		data   =3D m.Data
-		source =3D m.Source
-	)
-	if data =3D=3D "systemd" {
-		data =3D cgroups.CgroupNamePrefix + data
-		source =3D "systemd"
-	}
-	if err :=3D unix.Mount(source, m.Destination, m.Device, uintptr(m.Flags),=
 data); err !=3D nil {
-		return err
+		return nil
+	}); err !=3D nil {
+		return fmt.Errorf("change mount propagation through procfd: %w", err)
 	}
 	return nil
 }
diff --git a/libcontainer/utils/utils.go b/libcontainer/utils/utils.go
index 1b72b7a1c1ba..cd78f23e1bd0 100644
--- a/libcontainer/utils/utils.go
+++ b/libcontainer/utils/utils.go
@@ -3,12 +3,15 @@ package utils
 import (
 	"encoding/binary"
 	"encoding/json"
+	"fmt"
 	"io"
 	"os"
 	"path/filepath"
+	"strconv"
 	"strings"
 	"unsafe"
=20
+	"github.com/cyphar/filepath-securejoin"
 	"golang.org/x/sys/unix"
 )
=20
@@ -88,6 +91,57 @@ func CleanPath(path string) string {
 	return filepath.Clean(path)
 }
=20
+// stripRoot returns the passed path, stripping the root path if it was
+// (lexicially) inside it. Note that both passed paths will always be trea=
ted
+// as absolute, and the returned path will also always be absolute. In
+// addition, the paths are cleaned before stripping the root.
+func stripRoot(root, path string) string {
+	// Make the paths clean and absolute.
+	root, path =3D CleanPath("/"+root), CleanPath("/"+path)
+	switch {
+	case path =3D=3D root:
+		path =3D "/"
+	case root =3D=3D "/":
+		// do nothing
+	case strings.HasPrefix(path, root+"/"):
+		path =3D strings.TrimPrefix(path, root+"/")
+	}
+	return CleanPath("/" + path)
+}
+
+// WithProcfd runs the passed closure with a procfd path (/proc/self/fd/..=
.)
+// corresponding to the unsafePath resolved within the root. Before passin=
g the
+// fd, this path is verified to have been inside the root -- so operating =
on it
+// through the passed fdpath should be safe. Do not access this path throu=
gh
+// the original path strings, and do not attempt to use the pathname outsi=
de of
+// the passed closure (the file handle will be freed once the closure retu=
rns).
+func WithProcfd(root, unsafePath string, fn func(procfd string) error) err=
or {
+	// Remove the root then forcefully resolve inside the root.
+	unsafePath =3D stripRoot(root, unsafePath)
+	path, err :=3D securejoin.SecureJoin(root, unsafePath)
+	if err !=3D nil {
+		return fmt.Errorf("resolving path inside rootfs failed: %v", err)
+	}
+
+	// Open the target path.
+	fh, err :=3D os.OpenFile(path, unix.O_PATH|unix.O_CLOEXEC, 0)
+	if err !=3D nil {
+		return fmt.Errorf("open o_path procfd: %w", err)
+	}
+	defer fh.Close()
+
+	// Double-check the path is the one we expected.
+	procfd :=3D "/proc/self/fd/" + strconv.Itoa(int(fh.Fd()))
+	if realpath, err :=3D os.Readlink(procfd); err !=3D nil {
+		return fmt.Errorf("procfd verification failed: %w", err)
+	} else if realpath !=3D path {
+		return fmt.Errorf("possibly malicious path detected -- refusing to opera=
te on %s", realpath)
+	}
+
+	// Run the closure.
+	return fn(procfd)
+}
+
 // SearchLabels searches a list of key-value pairs for the provided key and
 // returns the corresponding value. The pairs must be separated with '=3D'.
 func SearchLabels(labels []string, query string) string {
diff --git a/libcontainer/utils/utils_test.go b/libcontainer/utils/utils_te=
st.go
index 7f38ed169a6b..d33662238d36 100644
--- a/libcontainer/utils/utils_test.go
+++ b/libcontainer/utils/utils_test.go
@@ -143,3 +143,38 @@ func TestCleanPath(t *testing.T) {
 		t.Errorf("expected to receive '/foo' and received %s", path)
 	}
 }
+
+func TestStripRoot(t *testing.T) {
+	for _, test :=3D range []struct {
+		root, path, out string
+	}{
+		// Works with multiple components.
+		{"/a/b", "/a/b/c", "/c"},
+		{"/hello/world", "/hello/world/the/quick-brown/fox", "/the/quick-brown/f=
ox"},
+		// '/' must be a no-op.
+		{"/", "/a/b/c", "/a/b/c"},
+		// Must be the correct order.
+		{"/a/b", "/a/c/b", "/a/c/b"},
+		// Must be at start.
+		{"/abc/def", "/foo/abc/def/bar", "/foo/abc/def/bar"},
+		// Must be a lexical parent.
+		{"/foo/bar", "/foo/barSAMECOMPONENT", "/foo/barSAMECOMPONENT"},
+		// Must only strip the root once.
+		{"/foo/bar", "/foo/bar/foo/bar/baz", "/foo/bar/baz"},
+		// Deal with .. in a fairly sane way.
+		{"/foo/bar", "/foo/bar/../baz", "/foo/baz"},
+		{"/foo/bar", "../../../../../../foo/bar/baz", "/baz"},
+		{"/foo/bar", "/../../../../../../foo/bar/baz", "/baz"},
+		{"/foo/bar/../baz", "/foo/baz/bar", "/bar"},
+		{"/foo/bar/../baz", "/foo/baz/../bar/../baz/./foo", "/foo"},
+		// All paths are made absolute before stripping.
+		{"foo/bar", "/foo/bar/baz/bee", "/baz/bee"},
+		{"/foo/bar", "foo/bar/baz/beef", "/baz/beef"},
+		{"foo/bar", "foo/bar/baz/beets", "/baz/beets"},
+	} {
+		got :=3D stripRoot(test.root, test.path)
+		if got !=3D test.out {
+			t.Errorf("stripRoot(%q, %q) -- got %q, expected %q", test.root, test.pa=
th, got, test.out)
+		}
+	}
+}
--=20
2.31.1


--4wmweqrjmk7egrvv
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="rc93-0000-cover-letter.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 14faf1c20948688a48edb9b41367ab07ac11ca91 Mon Sep 17 00:00:00 2001
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Wed, 28 Apr 2021 15:44:36 +1000
Subject: [PATCH 0/5] rootfs: add mount destination validation

This is a backport of the fix for CVE-2021-30465 to the v1.0.0-rc93
release. However, because the patch does not apply cleanly it was
necessary to backport the following commits (from [1]):

 * deb8a8dd7767 ("libct/newInitConfig: nit")
 * 1e476578b6cd ("libct/rootfs: introduce and use mountConfig")
 * 3826db196d59 ("libct/rootfs/mountCgroupV2: minor refactor")
 * ff692f289b60 ("Fix cgroup2 mount for rootless case")

And the patch itself was modified to remove hardenings for code which
didn't exist in v1.0.0-rc93 (in particular, the mount changes in [2]).

[1]: https://github.com/opencontainers/runc/pull/2818
[2]: https://github.com/opencontainers/runc/pull/2798

Aleksa Sarai (1):
  rootfs: add mount destination validation

Kir Kolyshkin (4):
  libct/newInitConfig: nit
  libct/rootfs: introduce and use mountConfig
  libct/rootfs/mountCgroupV2: minor refactor
  Fix cgroup2 mount for rootless case

 libcontainer/container_linux.go  |  11 +-
 libcontainer/init_linux.go       |   1 +
 libcontainer/rootfs_linux.go     | 291 +++++++++++++++++--------------
 libcontainer/specconv/example.go |  18 +-
 libcontainer/utils/utils.go      |  54 ++++++
 libcontainer/utils/utils_test.go |  35 ++++
 6 files changed, 263 insertions(+), 147 deletions(-)

--=20
2.31.1


--4wmweqrjmk7egrvv
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment;
	filename="rc93-0001-libct-newInitConfig-nit.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 28daf0653d324fad545a7031e64b6891f399969b Mon Sep 17 00:00:00 2001
From: Kir Kolyshkin <kolyshkin@gmail.com>
Date: Tue, 23 Feb 2021 17:58:07 -0800
Subject: [PATCH 1/5] libct/newInitConfig: nit

Move the initialization of Console* fields as they are unconditional.

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 libcontainer/container_linux.go | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/libcontainer/container_linux.go b/libcontainer/container_linux=
.go
index 3dca29e4c3f2..b6100aae9d5a 100644
--- a/libcontainer/container_linux.go
+++ b/libcontainer/container_linux.go
@@ -594,6 +594,9 @@ func (c *linuxContainer) newInitConfig(process *Process=
) *initConfig {
 		AppArmorProfile:  c.config.AppArmorProfile,
 		ProcessLabel:     c.config.ProcessLabel,
 		Rlimits:          c.config.Rlimits,
+		CreateConsole:    process.ConsoleSocket !=3D nil,
+		ConsoleWidth:     process.ConsoleWidth,
+		ConsoleHeight:    process.ConsoleHeight,
 	}
 	if process.NoNewPrivileges !=3D nil {
 		cfg.NoNewPrivileges =3D *process.NoNewPrivileges
@@ -607,9 +610,7 @@ func (c *linuxContainer) newInitConfig(process *Process=
) *initConfig {
 	if len(process.Rlimits) > 0 {
 		cfg.Rlimits =3D process.Rlimits
 	}
-	cfg.CreateConsole =3D process.ConsoleSocket !=3D nil
-	cfg.ConsoleWidth =3D process.ConsoleWidth
-	cfg.ConsoleHeight =3D process.ConsoleHeight
+
 	return cfg
 }
=20
--=20
2.31.1


--4wmweqrjmk7egrvv
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment;
	filename="rc93-0002-libct-rootfs-introduce-and-use-mountConfig.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 46ec7b5a94d370c4963ca361e9d96cb78d75d118 Mon Sep 17 00:00:00 2001
From: Kir Kolyshkin <kolyshkin@gmail.com>
Date: Tue, 23 Feb 2021 18:14:37 -0800
Subject: [PATCH 2/5] libct/rootfs: introduce and use mountConfig

The code is already passing three parameters around from
mountToRootfs to mountCgroupV* to mountToRootfs again.

I am about to add another parameter, so let's introduce and
use struct mountConfig to pass around.

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 libcontainer/rootfs_linux.go | 42 ++++++++++++++++++++++--------------
 1 file changed, 26 insertions(+), 16 deletions(-)

diff --git a/libcontainer/rootfs_linux.go b/libcontainer/rootfs_linux.go
index 411496ab7c6d..a384abb7e8a5 100644
--- a/libcontainer/rootfs_linux.go
+++ b/libcontainer/rootfs_linux.go
@@ -29,6 +29,12 @@ import (
=20
 const defaultMountFlags =3D unix.MS_NOEXEC | unix.MS_NOSUID | unix.MS_NODEV
=20
+type mountConfig struct {
+	root     string
+	label    string
+	cgroupns bool
+}
+
 // needsSetupDev returns true if /dev needs to be set up.
 func needsSetupDev(config *configs.Config) bool {
 	for _, m :=3D range config.Mounts {
@@ -48,7 +54,11 @@ func prepareRootfs(pipe io.ReadWriter, iConfig *initConf=
ig) (err error) {
 		return newSystemErrorWithCause(err, "preparing rootfs")
 	}
=20
-	hasCgroupns :=3D config.Namespaces.Contains(configs.NEWCGROUP)
+	mountConfig :=3D &mountConfig{
+		root:     config.Rootfs,
+		label:    config.MountLabel,
+		cgroupns: config.Namespaces.Contains(configs.NEWCGROUP),
+	}
 	setupDev :=3D needsSetupDev(config)
 	for _, m :=3D range config.Mounts {
 		for _, precmd :=3D range m.PremountCmds {
@@ -56,7 +66,7 @@ func prepareRootfs(pipe io.ReadWriter, iConfig *initConfi=
g) (err error) {
 				return newSystemErrorWithCause(err, "running premount command")
 			}
 		}
-		if err :=3D mountToRootfs(m, config.Rootfs, config.MountLabel, hasCgroup=
ns); err !=3D nil {
+		if err :=3D mountToRootfs(m, mountConfig); err !=3D nil {
 			return newSystemErrorWithCausef(err, "mounting %q to rootfs at %q", m.S=
ource, m.Destination)
 		}
=20
@@ -222,7 +232,7 @@ func prepareBindMount(m *configs.Mount, rootfs string) =
error {
 	return nil
 }
=20
-func mountCgroupV1(m *configs.Mount, rootfs, mountLabel string, enableCgro=
upns bool) error {
+func mountCgroupV1(m *configs.Mount, c *mountConfig) error {
 	binds, err :=3D getCgroupMounts(m)
 	if err !=3D nil {
 		return err
@@ -242,12 +252,12 @@ func mountCgroupV1(m *configs.Mount, rootfs, mountLab=
el string, enableCgroupns b
 		Data:             "mode=3D755",
 		PropagationFlags: m.PropagationFlags,
 	}
-	if err :=3D mountToRootfs(tmpfs, rootfs, mountLabel, enableCgroupns); err=
 !=3D nil {
+	if err :=3D mountToRootfs(tmpfs, c); err !=3D nil {
 		return err
 	}
 	for _, b :=3D range binds {
-		if enableCgroupns {
-			subsystemPath :=3D filepath.Join(rootfs, b.Destination)
+		if c.cgroupns {
+			subsystemPath :=3D filepath.Join(c.root, b.Destination)
 			if err :=3D os.MkdirAll(subsystemPath, 0755); err !=3D nil {
 				return err
 			}
@@ -266,7 +276,7 @@ func mountCgroupV1(m *configs.Mount, rootfs, mountLabel=
 string, enableCgroupns b
 				return err
 			}
 		} else {
-			if err :=3D mountToRootfs(b, rootfs, mountLabel, enableCgroupns); err !=
=3D nil {
+			if err :=3D mountToRootfs(b, c); err !=3D nil {
 				return err
 			}
 		}
@@ -276,7 +286,7 @@ func mountCgroupV1(m *configs.Mount, rootfs, mountLabel=
 string, enableCgroupns b
 			// symlink(2) is very dumb, it will just shove the path into
 			// the link and doesn't do any checks or relative path
 			// conversion. Also, don't error out if the cgroup already exists.
-			if err :=3D os.Symlink(mc, filepath.Join(rootfs, m.Destination, ss)); e=
rr !=3D nil && !os.IsExist(err) {
+			if err :=3D os.Symlink(mc, filepath.Join(c.root, m.Destination, ss)); e=
rr !=3D nil && !os.IsExist(err) {
 				return err
 			}
 		}
@@ -284,8 +294,8 @@ func mountCgroupV1(m *configs.Mount, rootfs, mountLabel=
 string, enableCgroupns b
 	return nil
 }
=20
-func mountCgroupV2(m *configs.Mount, rootfs, mountLabel string, enableCgro=
upns bool) error {
-	cgroupPath, err :=3D securejoin.SecureJoin(rootfs, m.Destination)
+func mountCgroupV2(m *configs.Mount, c *mountConfig) error {
+	cgroupPath, err :=3D securejoin.SecureJoin(c.root, m.Destination)
 	if err !=3D nil {
 		return err
 	}
@@ -302,10 +312,10 @@ func mountCgroupV2(m *configs.Mount, rootfs, mountLab=
el string, enableCgroupns b
 	return nil
 }
=20
-func mountToRootfs(m *configs.Mount, rootfs, mountLabel string, enableCgro=
upns bool) error {
-	var (
-		dest =3D m.Destination
-	)
+func mountToRootfs(m *configs.Mount, c *mountConfig) error {
+	rootfs :=3D c.root
+	mountLabel :=3D c.label
+	dest :=3D m.Destination
 	if !strings.HasPrefix(dest, rootfs) {
 		dest =3D filepath.Join(rootfs, dest)
 	}
@@ -424,9 +434,9 @@ func mountToRootfs(m *configs.Mount, rootfs, mountLabel=
 string, enableCgroupns b
 		}
 	case "cgroup":
 		if cgroups.IsCgroup2UnifiedMode() {
-			return mountCgroupV2(m, rootfs, mountLabel, enableCgroupns)
+			return mountCgroupV2(m, c)
 		}
-		return mountCgroupV1(m, rootfs, mountLabel, enableCgroupns)
+		return mountCgroupV1(m, c)
 	default:
 		// ensure that the destination of the mount is resolved of symlinks at m=
ount time because
 		// any previous mounts can invalidate the next mount's destination.
--=20
2.31.1


--4wmweqrjmk7egrvv
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment;
	filename="rc93-0003-libct-rootfs-mountCgroupV2-minor-refactor.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 198a2806b0b5522cff1c53bf4671cfee85e45608 Mon Sep 17 00:00:00 2001
From: Kir Kolyshkin <kolyshkin@gmail.com>
Date: Tue, 23 Feb 2021 18:25:56 -0800
Subject: [PATCH 3/5] libct/rootfs/mountCgroupV2: minor refactor

1. s/cgroupPath/dest/

2. don't hardcode /sys/fs/cgroup

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 libcontainer/rootfs_linux.go | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/libcontainer/rootfs_linux.go b/libcontainer/rootfs_linux.go
index a384abb7e8a5..0f0495b93b3e 100644
--- a/libcontainer/rootfs_linux.go
+++ b/libcontainer/rootfs_linux.go
@@ -17,6 +17,7 @@ import (
 	"github.com/moby/sys/mountinfo"
 	"github.com/mrunalp/fileutils"
 	"github.com/opencontainers/runc/libcontainer/cgroups"
+	"github.com/opencontainers/runc/libcontainer/cgroups/fs2"
 	"github.com/opencontainers/runc/libcontainer/configs"
 	"github.com/opencontainers/runc/libcontainer/devices"
 	"github.com/opencontainers/runc/libcontainer/system"
@@ -295,17 +296,18 @@ func mountCgroupV1(m *configs.Mount, c *mountConfig) =
error {
 }
=20
 func mountCgroupV2(m *configs.Mount, c *mountConfig) error {
-	cgroupPath, err :=3D securejoin.SecureJoin(c.root, m.Destination)
+	dest, err :=3D securejoin.SecureJoin(c.root, m.Destination)
 	if err !=3D nil {
 		return err
 	}
-	if err :=3D os.MkdirAll(cgroupPath, 0755); err !=3D nil {
+	if err :=3D os.MkdirAll(dest, 0755); err !=3D nil {
 		return err
 	}
-	if err :=3D unix.Mount(m.Source, cgroupPath, "cgroup2", uintptr(m.Flags),=
 m.Data); err !=3D nil {
+	if err :=3D unix.Mount(m.Source, dest, "cgroup2", uintptr(m.Flags), m.Dat=
a); err !=3D nil {
 		// when we are in UserNS but CgroupNS is not unshared, we cannot mount c=
group2 (#2158)
 		if err =3D=3D unix.EPERM || err =3D=3D unix.EBUSY {
-			return unix.Mount("/sys/fs/cgroup", cgroupPath, "", uintptr(m.Flags)|un=
ix.MS_BIND, "")
+			src :=3D fs2.UnifiedMountpoint
+			return unix.Mount(src, dest, "", uintptr(m.Flags)|unix.MS_BIND, "")
 		}
 		return err
 	}
--=20
2.31.1


--4wmweqrjmk7egrvv
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment;
	filename="rc93-0004-Fix-cgroup2-mount-for-rootless-case.patch"
Content-Transfer-Encoding: quoted-printable

=46rom ce352accdfb07a91b5527e70ec8bce658a8b68de Mon Sep 17 00:00:00 2001
From: Kir Kolyshkin <kolyshkin@gmail.com>
Date: Tue, 23 Feb 2021 18:27:42 -0800
Subject: [PATCH 4/5] Fix cgroup2 mount for rootless case

In case of rootless, cgroup2 mount is not possible (see [1] for more
details), so since commit 9c81440fb5a7 runc bind-mounts the whole
/sys/fs/cgroup into container.

Problem is, if cgroupns is enabled, /sys/fs/cgroup inside the container
is supposed to show the cgroup files for this cgroup, not the root one.

The fix is to pass through and use the cgroup path in case cgroup2
mount failed, cgroupns is enabled, and the path is non-empty.

Surely this requires the /sys/fs/cgroup mount in the spec, so modify
runc spec --rootless to keep it.

Before:

	$ ./runc run aaa
	# find /sys/fs/cgroup/ -type d
	/sys/fs/cgroup
	/sys/fs/cgroup/user.slice
	/sys/fs/cgroup/user.slice/user-1000.slice
	/sys/fs/cgroup/user.slice/user-1000.slice/user@1000.service
	...
	# ls -l /sys/fs/cgroup/cgroup.controllers
	-r--r--r--    1 nobody   nogroup          0 Feb 24 02:22 /sys/fs/cgroup/cg=
roup.controllers
	# wc -w /sys/fs/cgroup/cgroup.procs
	142 /sys/fs/cgroup/cgroup.procs
	# cat /sys/fs/cgroup/memory.current
	cat: can't open '/sys/fs/cgroup/memory.current': No such file or directory

After:

	# find /sys/fs/cgroup/ -type d
	/sys/fs/cgroup/
	# ls -l /sys/fs/cgroup/cgroup.controllers
	-r--r--r--    1 root     root             0 Feb 24 02:43 /sys/fs/cgroup/cg=
roup.controllers
	# wc -w /sys/fs/cgroup/cgroup.procs
	2 /sys/fs/cgroup/cgroup.procs
	# cat /sys/fs/cgroup/memory.current
	577536

[1] https://github.com/opencontainers/runc/issues/2158

Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 libcontainer/container_linux.go  |  3 +++
 libcontainer/init_linux.go       |  1 +
 libcontainer/rootfs_linux.go     | 28 +++++++++++++++++++++-------
 libcontainer/specconv/example.go | 18 +++++++++---------
 4 files changed, 34 insertions(+), 16 deletions(-)

diff --git a/libcontainer/container_linux.go b/libcontainer/container_linux=
.go
index b6100aae9d5a..1cbc734172d0 100644
--- a/libcontainer/container_linux.go
+++ b/libcontainer/container_linux.go
@@ -610,6 +610,9 @@ func (c *linuxContainer) newInitConfig(process *Process=
) *initConfig {
 	if len(process.Rlimits) > 0 {
 		cfg.Rlimits =3D process.Rlimits
 	}
+	if cgroups.IsCgroup2UnifiedMode() {
+		cfg.Cgroup2Path =3D c.cgroupManager.Path("")
+	}
=20
 	return cfg
 }
diff --git a/libcontainer/init_linux.go b/libcontainer/init_linux.go
index c57af0eebb8b..681797099f46 100644
--- a/libcontainer/init_linux.go
+++ b/libcontainer/init_linux.go
@@ -70,6 +70,7 @@ type initConfig struct {
 	RootlessEUID     bool                  `json:"rootless_euid,omitempty"`
 	RootlessCgroups  bool                  `json:"rootless_cgroups,omitempty"`
 	SpecState        *specs.State          `json:"spec_state,omitempty"`
+	Cgroup2Path      string                `json:"cgroup2_path,omitempty"`
 }
=20
 type initer interface {
diff --git a/libcontainer/rootfs_linux.go b/libcontainer/rootfs_linux.go
index 0f0495b93b3e..5d2d74cf924b 100644
--- a/libcontainer/rootfs_linux.go
+++ b/libcontainer/rootfs_linux.go
@@ -31,9 +31,11 @@ import (
 const defaultMountFlags =3D unix.MS_NOEXEC | unix.MS_NOSUID | unix.MS_NODEV
=20
 type mountConfig struct {
-	root     string
-	label    string
-	cgroupns bool
+	root            string
+	label           string
+	cgroup2Path     string
+	rootlessCgroups bool
+	cgroupns        bool
 }
=20
 // needsSetupDev returns true if /dev needs to be set up.
@@ -56,9 +58,11 @@ func prepareRootfs(pipe io.ReadWriter, iConfig *initConf=
ig) (err error) {
 	}
=20
 	mountConfig :=3D &mountConfig{
-		root:     config.Rootfs,
-		label:    config.MountLabel,
-		cgroupns: config.Namespaces.Contains(configs.NEWCGROUP),
+		root:            config.Rootfs,
+		label:           config.MountLabel,
+		cgroup2Path:     iConfig.Cgroup2Path,
+		rootlessCgroups: iConfig.RootlessCgroups,
+		cgroupns:        config.Namespaces.Contains(configs.NEWCGROUP),
 	}
 	setupDev :=3D needsSetupDev(config)
 	for _, m :=3D range config.Mounts {
@@ -307,7 +311,17 @@ func mountCgroupV2(m *configs.Mount, c *mountConfig) e=
rror {
 		// when we are in UserNS but CgroupNS is not unshared, we cannot mount c=
group2 (#2158)
 		if err =3D=3D unix.EPERM || err =3D=3D unix.EBUSY {
 			src :=3D fs2.UnifiedMountpoint
-			return unix.Mount(src, dest, "", uintptr(m.Flags)|unix.MS_BIND, "")
+			if c.cgroupns && c.cgroup2Path !=3D "" {
+				// Emulate cgroupns by bind-mounting
+				// the container cgroup path rather than
+				// the whole /sys/fs/cgroup.
+				src =3D c.cgroup2Path
+			}
+			err =3D unix.Mount(src, dest, "", uintptr(m.Flags)|unix.MS_BIND, "")
+			if err =3D=3D unix.ENOENT && c.rootlessCgroups {
+				err =3D nil
+			}
+			return err
 		}
 		return err
 	}
diff --git a/libcontainer/specconv/example.go b/libcontainer/specconv/examp=
le.go
index 8a201bc78dd9..56bab3bfbfa5 100644
--- a/libcontainer/specconv/example.go
+++ b/libcontainer/specconv/example.go
@@ -2,6 +2,7 @@ package specconv
=20
 import (
 	"os"
+	"path/filepath"
 	"strings"
=20
 	"github.com/opencontainers/runc/libcontainer/cgroups"
@@ -200,8 +201,14 @@ func ToRootless(spec *specs.Spec) {
 	// Fix up mounts.
 	var mounts []specs.Mount
 	for _, mount :=3D range spec.Mounts {
-		// Ignore all mounts that are under /sys.
-		if strings.HasPrefix(mount.Destination, "/sys") {
+		// Replace the /sys mount with an rbind.
+		if filepath.Clean(mount.Destination) =3D=3D "/sys" {
+			mounts =3D append(mounts, specs.Mount{
+				Source:      "/sys",
+				Destination: "/sys",
+				Type:        "none",
+				Options:     []string{"rbind", "nosuid", "noexec", "nodev", "ro"},
+			})
 			continue
 		}
=20
@@ -216,13 +223,6 @@ func ToRootless(spec *specs.Spec) {
 		mount.Options =3D options
 		mounts =3D append(mounts, mount)
 	}
-	// Add the sysfs mount as an rbind.
-	mounts =3D append(mounts, specs.Mount{
-		Source:      "/sys",
-		Destination: "/sys",
-		Type:        "none",
-		Options:     []string{"rbind", "nosuid", "noexec", "nodev", "ro"},
-	})
 	spec.Mounts =3D mounts
=20
 	// Remove cgroup settings.
--=20
2.31.1


--4wmweqrjmk7egrvv
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment;
	filename="rc93-0005-rootfs-add-mount-destination-validation.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 14faf1c20948688a48edb9b41367ab07ac11ca91 Mon Sep 17 00:00:00 2001
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Thu, 1 Apr 2021 12:00:31 -0700
Subject: [PATCH 5/5] rootfs: add mount destination validation

Because the target of a mount is inside a container (which may be a
volume that is shared with another container), there exists a race
condition where the target of the mount may change to a path containing
a symlink after we have sanitised the path -- resulting in us
inadvertently mounting the path outside of the container.

This is not immediately useful because we are in a mount namespace with
MS_SLAVE mount propagation applied to "/", so we cannot mount on top of
host paths in the host namespace. However, if any subsequent mountpoints
in the configuration use a subdirectory of that host path as a source,
those subsequent mounts will use an attacker-controlled source path
(resolved within the host rootfs) -- allowing the bind-mounting of "/"
into the container.

While arguably configuration issues like this are not entirely within
runc's threat model, within the context of Kubernetes (and possibly
other container managers that provide semi-arbitrary container creation
privileges to untrusted users) this is a legitimate issue. Since we
cannot block mounting from the host into the container, we need to block
the first stage of this attack (mounting onto a path outside the
container).

The long-term plan to solve this would be to migrate to libpathrs, but
as a stop-gap we implement libpathrs-like path verification through
readlink(/proc/self/fd/$n) and then do mount operations through the
procfd once it's been verified to be inside the container. The target
could move after we've checked it, but if it is inside the container
then we can assume that it is safe for the same reason that libpathrs
operations would be safe.

A slight wrinkle is the "copyup" functionality we provide for tmpfs,
which is the only case where we want to do a mount on the host
filesystem. To facilitate this, I split out the copy-up functionality
entirely so that the logic isn't interspersed with the regular tmpfs
logic. In addition, all dependencies on m.Destination being overwritten
have been removed since that pattern was just begging to be a source of
more mount-target bugs (we do still have to modify m.Destination for
tmpfs-copyup but we only do it temporarily).

Fixes: CVE-2021-30465
Reported-by: Etienne Champetier <champetier.etienne@gmail.com>
Co-authored-by: Noah Meyerhans <nmeyerha@amazon.com>
Reviewed-by: Samuel Karp <skarp@amazon.com>
Reviewed-by: Kir Kolyshkin <kolyshkin@gmail.com> (@kolyshkin)
Reviewed-by: Akihiro Suda <akihiro.suda.cz@hco.ntt.co.jp>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 libcontainer/container_linux.go  |   1 -
 libcontainer/rootfs_linux.go     | 251 +++++++++++++++----------------
 libcontainer/utils/utils.go      |  54 +++++++
 libcontainer/utils/utils_test.go |  35 +++++
 4 files changed, 213 insertions(+), 128 deletions(-)

diff --git a/libcontainer/container_linux.go b/libcontainer/container_linux=
.go
index 1cbc734172d0..70b388b1252e 100644
--- a/libcontainer/container_linux.go
+++ b/libcontainer/container_linux.go
@@ -1202,7 +1202,6 @@ func (c *linuxContainer) makeCriuRestoreMountpoints(m=
 *configs.Mount) error {
 		if err :=3D checkProcMount(c.config.Rootfs, dest, ""); err !=3D nil {
 			return err
 		}
-		m.Destination =3D dest
 		if err :=3D os.MkdirAll(dest, 0755); err !=3D nil {
 			return err
 		}
diff --git a/libcontainer/rootfs_linux.go b/libcontainer/rootfs_linux.go
index 5d2d74cf924b..96be669c365e 100644
--- a/libcontainer/rootfs_linux.go
+++ b/libcontainer/rootfs_linux.go
@@ -25,6 +25,7 @@ import (
 	libcontainerUtils "github.com/opencontainers/runc/libcontainer/utils"
 	"github.com/opencontainers/runtime-spec/specs-go"
 	"github.com/opencontainers/selinux/go-selinux/label"
+	"github.com/sirupsen/logrus"
 	"golang.org/x/sys/unix"
 )
=20
@@ -228,8 +229,6 @@ func prepareBindMount(m *configs.Mount, rootfs string) =
error {
 	if err :=3D checkProcMount(rootfs, dest, m.Source); err !=3D nil {
 		return err
 	}
-	// update the mount with the correct dest after symlinks are resolved.
-	m.Destination =3D dest
 	if err :=3D createIfNotExists(dest, stat.IsDir()); err !=3D nil {
 		return err
 	}
@@ -266,18 +265,21 @@ func mountCgroupV1(m *configs.Mount, c *mountConfig) =
error {
 			if err :=3D os.MkdirAll(subsystemPath, 0755); err !=3D nil {
 				return err
 			}
-			flags :=3D defaultMountFlags
-			if m.Flags&unix.MS_RDONLY !=3D 0 {
-				flags =3D flags | unix.MS_RDONLY
-			}
-			cgroupmount :=3D &configs.Mount{
-				Source:      "cgroup",
-				Device:      "cgroup", // this is actually fstype
-				Destination: subsystemPath,
-				Flags:       flags,
-				Data:        filepath.Base(subsystemPath),
-			}
-			if err :=3D mountNewCgroup(cgroupmount); err !=3D nil {
+			if err :=3D utils.WithProcfd(c.root, b.Destination, func(procfd string)=
 error {
+				flags :=3D defaultMountFlags
+				if m.Flags&unix.MS_RDONLY !=3D 0 {
+					flags =3D flags | unix.MS_RDONLY
+				}
+				var (
+					source =3D "cgroup"
+					data   =3D filepath.Base(subsystemPath)
+				)
+				if data =3D=3D "systemd" {
+					data =3D cgroups.CgroupNamePrefix + data
+					source =3D "systemd"
+				}
+				return unix.Mount(source, procfd, "cgroup", uintptr(flags), data)
+			}); err !=3D nil {
 				return err
 			}
 		} else {
@@ -307,33 +309,79 @@ func mountCgroupV2(m *configs.Mount, c *mountConfig) =
error {
 	if err :=3D os.MkdirAll(dest, 0755); err !=3D nil {
 		return err
 	}
-	if err :=3D unix.Mount(m.Source, dest, "cgroup2", uintptr(m.Flags), m.Dat=
a); err !=3D nil {
-		// when we are in UserNS but CgroupNS is not unshared, we cannot mount c=
group2 (#2158)
-		if err =3D=3D unix.EPERM || err =3D=3D unix.EBUSY {
-			src :=3D fs2.UnifiedMountpoint
-			if c.cgroupns && c.cgroup2Path !=3D "" {
-				// Emulate cgroupns by bind-mounting
-				// the container cgroup path rather than
-				// the whole /sys/fs/cgroup.
-				src =3D c.cgroup2Path
-			}
-			err =3D unix.Mount(src, dest, "", uintptr(m.Flags)|unix.MS_BIND, "")
-			if err =3D=3D unix.ENOENT && c.rootlessCgroups {
-				err =3D nil
+	return utils.WithProcfd(c.root, m.Destination, func(procfd string) error {
+		if err :=3D unix.Mount(m.Source, procfd, "cgroup2", uintptr(m.Flags), m.=
Data); err !=3D nil {
+			// when we are in UserNS but CgroupNS is not unshared, we cannot mount =
cgroup2 (#2158)
+			if err =3D=3D unix.EPERM || err =3D=3D unix.EBUSY {
+				src :=3D fs2.UnifiedMountpoint
+				if c.cgroupns && c.cgroup2Path !=3D "" {
+					// Emulate cgroupns by bind-mounting
+					// the container cgroup path rather than
+					// the whole /sys/fs/cgroup.
+					src =3D c.cgroup2Path
+				}
+				err =3D unix.Mount(src, procfd, "", uintptr(m.Flags)|unix.MS_BIND, "")
+				if err =3D=3D unix.ENOENT && c.rootlessCgroups {
+					err =3D nil
+				}
 			}
 			return err
 		}
+		return nil
+	})
+}
+
+func doTmpfsCopyUp(m *configs.Mount, rootfs, mountLabel string) (Err error=
) {
+	// Set up a scratch dir for the tmpfs on the host.
+	tmpdir, err :=3D prepareTmp("/tmp")
+	if err !=3D nil {
+		return newSystemErrorWithCause(err, "tmpcopyup: failed to setup tmpdir")
+	}
+	defer cleanupTmp(tmpdir)
+	tmpDir, err :=3D ioutil.TempDir(tmpdir, "runctmpdir")
+	if err !=3D nil {
+		return newSystemErrorWithCause(err, "tmpcopyup: failed to create tmpdir")
+	}
+	defer os.RemoveAll(tmpDir)
+
+	// Configure the *host* tmpdir as if it's the container mount. We change
+	// m.Destination since we are going to mount *on the host*.
+	oldDest :=3D m.Destination
+	m.Destination =3D tmpDir
+	err =3D mountPropagate(m, "/", mountLabel)
+	m.Destination =3D oldDest
+	if err !=3D nil {
 		return err
 	}
-	return nil
+	defer func() {
+		if Err !=3D nil {
+			if err :=3D unix.Unmount(tmpDir, unix.MNT_DETACH); err !=3D nil {
+				logrus.Warnf("tmpcopyup: failed to unmount tmpdir on error: %v", err)
+			}
+		}
+	}()
+
+	return utils.WithProcfd(rootfs, m.Destination, func(procfd string) (Err e=
rror) {
+		// Copy the container data to the host tmpdir. We append "/" to force
+		// CopyDirectory to resolve the symlink rather than trying to copy the
+		// symlink itself.
+		if err :=3D fileutils.CopyDirectory(procfd+"/", tmpDir); err !=3D nil {
+			return fmt.Errorf("tmpcopyup: failed to copy %s to %s (%s): %w", m.Dest=
ination, procfd, tmpDir, err)
+		}
+		// Now move the mount into the container.
+		if err :=3D unix.Mount(tmpDir, procfd, "", unix.MS_MOVE, ""); err !=3D n=
il {
+			return fmt.Errorf("tmpcopyup: failed to move mount %s to %s (%s): %w", =
tmpDir, procfd, m.Destination, err)
+		}
+		return nil
+	})
 }
=20
 func mountToRootfs(m *configs.Mount, c *mountConfig) error {
 	rootfs :=3D c.root
 	mountLabel :=3D c.label
-	dest :=3D m.Destination
-	if !strings.HasPrefix(dest, rootfs) {
-		dest =3D filepath.Join(rootfs, dest)
+	dest, err :=3D securejoin.SecureJoin(rootfs, m.Destination)
+	if err !=3D nil {
+		return err
 	}
=20
 	switch m.Device {
@@ -364,53 +412,21 @@ func mountToRootfs(m *configs.Mount, c *mountConfig) =
error {
 		}
 		return label.SetFileLabel(dest, mountLabel)
 	case "tmpfs":
-		copyUp :=3D m.Extensions&configs.EXT_COPYUP =3D=3D configs.EXT_COPYUP
-		tmpDir :=3D ""
-		// dest might be an absolute symlink, so it needs
-		// to be resolved under rootfs.
-		dest, err :=3D securejoin.SecureJoin(rootfs, m.Destination)
-		if err !=3D nil {
-			return err
-		}
-		m.Destination =3D dest
 		stat, err :=3D os.Stat(dest)
 		if err !=3D nil {
 			if err :=3D os.MkdirAll(dest, 0755); err !=3D nil {
 				return err
 			}
 		}
-		if copyUp {
-			tmpdir, err :=3D prepareTmp("/tmp")
-			if err !=3D nil {
-				return newSystemErrorWithCause(err, "tmpcopyup: failed to setup tmpdir=
")
-			}
-			defer cleanupTmp(tmpdir)
-			tmpDir, err =3D ioutil.TempDir(tmpdir, "runctmpdir")
-			if err !=3D nil {
-				return newSystemErrorWithCause(err, "tmpcopyup: failed to create tmpdi=
r")
-			}
-			defer os.RemoveAll(tmpDir)
-			m.Destination =3D tmpDir
+
+		if m.Extensions&configs.EXT_COPYUP =3D=3D configs.EXT_COPYUP {
+			err =3D doTmpfsCopyUp(m, rootfs, mountLabel)
+		} else {
+			err =3D mountPropagate(m, rootfs, mountLabel)
 		}
-		if err :=3D mountPropagate(m, rootfs, mountLabel); err !=3D nil {
+		if err !=3D nil {
 			return err
 		}
-		if copyUp {
-			if err :=3D fileutils.CopyDirectory(dest, tmpDir); err !=3D nil {
-				errMsg :=3D fmt.Errorf("tmpcopyup: failed to copy %s to %s: %v", dest,=
 tmpDir, err)
-				if err1 :=3D unix.Unmount(tmpDir, unix.MNT_DETACH); err1 !=3D nil {
-					return newSystemErrorWithCausef(err1, "tmpcopyup: %v: failed to unmou=
nt", errMsg)
-				}
-				return errMsg
-			}
-			if err :=3D unix.Mount(tmpDir, dest, "", unix.MS_MOVE, ""); err !=3D ni=
l {
-				errMsg :=3D fmt.Errorf("tmpcopyup: failed to move mount %s to %s: %v",=
 tmpDir, dest, err)
-				if err1 :=3D unix.Unmount(tmpDir, unix.MNT_DETACH); err1 !=3D nil {
-					return newSystemErrorWithCausef(err1, "tmpcopyup: %v: failed to unmou=
nt", errMsg)
-				}
-				return errMsg
-			}
-		}
 		if stat !=3D nil {
 			if err =3D os.Chmod(dest, stat.Mode()); err !=3D nil {
 				return err
@@ -454,19 +470,9 @@ func mountToRootfs(m *configs.Mount, c *mountConfig) e=
rror {
 		}
 		return mountCgroupV1(m, c)
 	default:
-		// ensure that the destination of the mount is resolved of symlinks at m=
ount time because
-		// any previous mounts can invalidate the next mount's destination.
-		// this can happen when a user specifies mounts within other mounts to c=
ause breakouts or other
-		// evil stuff to try to escape the container's rootfs.
-		var err error
-		if dest, err =3D securejoin.SecureJoin(rootfs, m.Destination); err !=3D =
nil {
-			return err
-		}
 		if err :=3D checkProcMount(rootfs, dest, m.Source); err !=3D nil {
 			return err
 		}
-		// update the mount with the correct dest after symlinks are resolved.
-		m.Destination =3D dest
 		if err :=3D os.MkdirAll(dest, 0755); err !=3D nil {
 			return err
 		}
@@ -649,7 +655,7 @@ func createDevices(config *configs.Config) error {
 	return nil
 }
=20
-func bindMountDeviceNode(dest string, node *devices.Device) error {
+func bindMountDeviceNode(rootfs, dest string, node *devices.Device) error {
 	f, err :=3D os.Create(dest)
 	if err !=3D nil && !os.IsExist(err) {
 		return err
@@ -657,7 +663,9 @@ func bindMountDeviceNode(dest string, node *devices.Dev=
ice) error {
 	if f !=3D nil {
 		f.Close()
 	}
-	return unix.Mount(node.Path, dest, "bind", unix.MS_BIND, "")
+	return utils.WithProcfd(rootfs, dest, func(procfd string) error {
+		return unix.Mount(node.Path, procfd, "bind", unix.MS_BIND, "")
+	})
 }
=20
 // Creates the device node in the rootfs of the container.
@@ -666,18 +674,21 @@ func createDeviceNode(rootfs string, node *devices.De=
vice, bind bool) error {
 		// The node only exists for cgroup reasons, ignore it here.
 		return nil
 	}
-	dest :=3D filepath.Join(rootfs, node.Path)
+	dest, err :=3D securejoin.SecureJoin(rootfs, node.Path)
+	if err !=3D nil {
+		return err
+	}
 	if err :=3D os.MkdirAll(filepath.Dir(dest), 0755); err !=3D nil {
 		return err
 	}
 	if bind {
-		return bindMountDeviceNode(dest, node)
+		return bindMountDeviceNode(rootfs, dest, node)
 	}
 	if err :=3D mknodDevice(dest, node); err !=3D nil {
 		if os.IsExist(err) {
 			return nil
 		} else if os.IsPermission(err) {
-			return bindMountDeviceNode(dest, node)
+			return bindMountDeviceNode(rootfs, dest, node)
 		}
 		return err
 	}
@@ -1013,61 +1024,47 @@ func writeSystemProperty(key, value string) error {
 }
=20
 func remount(m *configs.Mount, rootfs string) error {
-	var (
-		dest =3D m.Destination
-	)
-	if !strings.HasPrefix(dest, rootfs) {
-		dest =3D filepath.Join(rootfs, dest)
-	}
-	return unix.Mount(m.Source, dest, m.Device, uintptr(m.Flags|unix.MS_REMOU=
NT), "")
+	return utils.WithProcfd(rootfs, m.Destination, func(procfd string) error {
+		return unix.Mount(m.Source, procfd, m.Device, uintptr(m.Flags|unix.MS_RE=
MOUNT), "")
+	})
 }
=20
 // Do the mount operation followed by additional mounts required to take c=
are
-// of propagation flags.
+// of propagation flags. This will always be scoped inside the container r=
ootfs.
 func mountPropagate(m *configs.Mount, rootfs string, mountLabel string) er=
ror {
 	var (
-		dest  =3D m.Destination
 		data  =3D label.FormatMountLabel(m.Data, mountLabel)
 		flags =3D m.Flags
 	)
-	if libcontainerUtils.CleanPath(dest) =3D=3D "/dev" {
-		flags &=3D ^unix.MS_RDONLY
-	}
-
-	// Mount it rw to allow chmod operation. A remount will be performed
-	// later to make it ro if set.
-	if m.Device =3D=3D "tmpfs" {
+	// Delay mounting the filesystem read-only if we need to do further
+	// operations on it. We need to set up files in "/dev" and tmpfs mounts m=
ay
+	// need to be chmod-ed after mounting. The mount will be remounted ro lat=
er
+	// in finalizeRootfs() if necessary.
+	if libcontainerUtils.CleanPath(m.Destination) =3D=3D "/dev" || m.Device =
=3D=3D "tmpfs" {
 		flags &=3D ^unix.MS_RDONLY
 	}
=20
-	copyUp :=3D m.Extensions&configs.EXT_COPYUP =3D=3D configs.EXT_COPYUP
-	if !(copyUp || strings.HasPrefix(dest, rootfs)) {
-		dest =3D filepath.Join(rootfs, dest)
-	}
-
-	if err :=3D unix.Mount(m.Source, dest, m.Device, uintptr(flags), data); e=
rr !=3D nil {
-		return err
-	}
-
-	for _, pflag :=3D range m.PropagationFlags {
-		if err :=3D unix.Mount("", dest, "", uintptr(pflag), ""); err !=3D nil {
-			return err
+	// Because the destination is inside a container path which might be
+	// mutating underneath us, we verify that we are actually going to mount
+	// inside the container with WithProcfd() -- mounting through a procfd
+	// mounts on the target.
+	if err :=3D utils.WithProcfd(rootfs, m.Destination, func(procfd string) e=
rror {
+		return unix.Mount(m.Source, procfd, m.Device, uintptr(flags), data)
+	}); err !=3D nil {
+		return fmt.Errorf("mount through procfd: %w", err)
+	}
+	// We have to apply mount propagation flags in a separate WithProcfd() ca=
ll
+	// because the previous call invalidates the passed procfd -- the mount
+	// target needs to be re-opened.
+	if err :=3D utils.WithProcfd(rootfs, m.Destination, func(procfd string) e=
rror {
+		for _, pflag :=3D range m.PropagationFlags {
+			if err :=3D unix.Mount("", procfd, "", uintptr(pflag), ""); err !=3D ni=
l {
+				return err
+			}
 		}
-	}
-	return nil
-}
-
-func mountNewCgroup(m *configs.Mount) error {
-	var (
-		data   =3D m.Data
-		source =3D m.Source
-	)
-	if data =3D=3D "systemd" {
-		data =3D cgroups.CgroupNamePrefix + data
-		source =3D "systemd"
-	}
-	if err :=3D unix.Mount(source, m.Destination, m.Device, uintptr(m.Flags),=
 data); err !=3D nil {
-		return err
+		return nil
+	}); err !=3D nil {
+		return fmt.Errorf("change mount propagation through procfd: %w", err)
 	}
 	return nil
 }
diff --git a/libcontainer/utils/utils.go b/libcontainer/utils/utils.go
index 1b72b7a1c1ba..cd78f23e1bd0 100644
--- a/libcontainer/utils/utils.go
+++ b/libcontainer/utils/utils.go
@@ -3,12 +3,15 @@ package utils
 import (
 	"encoding/binary"
 	"encoding/json"
+	"fmt"
 	"io"
 	"os"
 	"path/filepath"
+	"strconv"
 	"strings"
 	"unsafe"
=20
+	"github.com/cyphar/filepath-securejoin"
 	"golang.org/x/sys/unix"
 )
=20
@@ -88,6 +91,57 @@ func CleanPath(path string) string {
 	return filepath.Clean(path)
 }
=20
+// stripRoot returns the passed path, stripping the root path if it was
+// (lexicially) inside it. Note that both passed paths will always be trea=
ted
+// as absolute, and the returned path will also always be absolute. In
+// addition, the paths are cleaned before stripping the root.
+func stripRoot(root, path string) string {
+	// Make the paths clean and absolute.
+	root, path =3D CleanPath("/"+root), CleanPath("/"+path)
+	switch {
+	case path =3D=3D root:
+		path =3D "/"
+	case root =3D=3D "/":
+		// do nothing
+	case strings.HasPrefix(path, root+"/"):
+		path =3D strings.TrimPrefix(path, root+"/")
+	}
+	return CleanPath("/" + path)
+}
+
+// WithProcfd runs the passed closure with a procfd path (/proc/self/fd/..=
.)
+// corresponding to the unsafePath resolved within the root. Before passin=
g the
+// fd, this path is verified to have been inside the root -- so operating =
on it
+// through the passed fdpath should be safe. Do not access this path throu=
gh
+// the original path strings, and do not attempt to use the pathname outsi=
de of
+// the passed closure (the file handle will be freed once the closure retu=
rns).
+func WithProcfd(root, unsafePath string, fn func(procfd string) error) err=
or {
+	// Remove the root then forcefully resolve inside the root.
+	unsafePath =3D stripRoot(root, unsafePath)
+	path, err :=3D securejoin.SecureJoin(root, unsafePath)
+	if err !=3D nil {
+		return fmt.Errorf("resolving path inside rootfs failed: %v", err)
+	}
+
+	// Open the target path.
+	fh, err :=3D os.OpenFile(path, unix.O_PATH|unix.O_CLOEXEC, 0)
+	if err !=3D nil {
+		return fmt.Errorf("open o_path procfd: %w", err)
+	}
+	defer fh.Close()
+
+	// Double-check the path is the one we expected.
+	procfd :=3D "/proc/self/fd/" + strconv.Itoa(int(fh.Fd()))
+	if realpath, err :=3D os.Readlink(procfd); err !=3D nil {
+		return fmt.Errorf("procfd verification failed: %w", err)
+	} else if realpath !=3D path {
+		return fmt.Errorf("possibly malicious path detected -- refusing to opera=
te on %s", realpath)
+	}
+
+	// Run the closure.
+	return fn(procfd)
+}
+
 // SearchLabels searches a list of key-value pairs for the provided key and
 // returns the corresponding value. The pairs must be separated with '=3D'.
 func SearchLabels(labels []string, query string) string {
diff --git a/libcontainer/utils/utils_test.go b/libcontainer/utils/utils_te=
st.go
index 7f38ed169a6b..d33662238d36 100644
--- a/libcontainer/utils/utils_test.go
+++ b/libcontainer/utils/utils_test.go
@@ -143,3 +143,38 @@ func TestCleanPath(t *testing.T) {
 		t.Errorf("expected to receive '/foo' and received %s", path)
 	}
 }
+
+func TestStripRoot(t *testing.T) {
+	for _, test :=3D range []struct {
+		root, path, out string
+	}{
+		// Works with multiple components.
+		{"/a/b", "/a/b/c", "/c"},
+		{"/hello/world", "/hello/world/the/quick-brown/fox", "/the/quick-brown/f=
ox"},
+		// '/' must be a no-op.
+		{"/", "/a/b/c", "/a/b/c"},
+		// Must be the correct order.
+		{"/a/b", "/a/c/b", "/a/c/b"},
+		// Must be at start.
+		{"/abc/def", "/foo/abc/def/bar", "/foo/abc/def/bar"},
+		// Must be a lexical parent.
+		{"/foo/bar", "/foo/barSAMECOMPONENT", "/foo/barSAMECOMPONENT"},
+		// Must only strip the root once.
+		{"/foo/bar", "/foo/bar/foo/bar/baz", "/foo/bar/baz"},
+		// Deal with .. in a fairly sane way.
+		{"/foo/bar", "/foo/bar/../baz", "/foo/baz"},
+		{"/foo/bar", "../../../../../../foo/bar/baz", "/baz"},
+		{"/foo/bar", "/../../../../../../foo/bar/baz", "/baz"},
+		{"/foo/bar/../baz", "/foo/baz/bar", "/bar"},
+		{"/foo/bar/../baz", "/foo/baz/../bar/../baz/./foo", "/foo"},
+		// All paths are made absolute before stripping.
+		{"foo/bar", "/foo/bar/baz/bee", "/baz/bee"},
+		{"/foo/bar", "foo/bar/baz/beef", "/baz/beef"},
+		{"foo/bar", "foo/bar/baz/beets", "/baz/beets"},
+	} {
+		got :=3D stripRoot(test.root, test.path)
+		if got !=3D test.out {
+			t.Errorf("stripRoot(%q, %q) -- got %q, expected %q", test.root, test.pa=
th, got, test.out)
+		}
+	}
+}
--=20
2.31.1


--4wmweqrjmk7egrvv--

--pwbl2bvlunp2gpjd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCYKThvgAKCRCdlLljIbnQ
Eo/yAQDtOxXcGkPD/Zvo8EO2Xf8EOjThSi+8eKEfXheMUnlEHAD/Wj2SyKgr0aHL
PXzfAJtsuD4mM5yx1HXVL+xXrjeXIQ4=
=z+9t
-----END PGP SIGNATURE-----

--pwbl2bvlunp2gpjd--


