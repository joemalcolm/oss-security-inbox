Received: (qmail 1045 invoked by uid 550); 31 Jan 2024 20:30:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32766 invoked from network); 31 Jan 2024 20:30:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1706733193;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=tKOVDuznx4r80DE/ALLjbf0MMS1AGPYp1IZ8E+DsfQo=;
	b=ysNws05cNLOvuUQtJ59IdaAIxOFbkIWVxNodalkGx5ZMURqR+evUA21G3GpicZmgeIpIJw
	IcupfIRnk/q2zbh7DAHy3t+UAJMhHlEA8nA9kH2kvs2etEcld3AYAC3xXVnFIJZdTJQtCF
	tkyJfNHAFaIH/xJgxOAVImxTz8EyNqe04SxQf8wpUjDLBxE26zFfukMBcoDnx3G0jcM5ME
	324a54WYTy89G8a2/sxnPDHFYc1FgfYURGRPLO1G+Kh19XFAHb3jx24ohmDdou2W3eDNp4
	yXUiywJS/ocEdofENcxwba2c3pie0iJUnTnWYMJcKA8XCw0gINReROhKhWbyDg==
Date: Thu, 1 Feb 2024 07:33:01 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
To: oss-security@lists.openwall.com
Cc: dev@opencontainers.org
Message-ID: <20240131.201014-manual.rungs.vicious.preface-640Q4W5TLTW7@cyphar.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r5u66meen6hrm2jg"
Content-Disposition: inline
Subject: [oss-security] runc: CVE-2024-21626: high severity container breakout attack

--r5u66meen6hrm2jg
Content-Type: multipart/mixed; boundary="5ce53mraqcl2f5l7"
Content-Disposition: inline


--5ce53mraqcl2f5l7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

NOTE: This advisory was sent to <security-announce@opencontainers.org>
two weeks ago. If you ship any Open Container Initiative software, we
highly recommend that you subscribe to our security-announce list in
order to receive more timely disclosures of future security issues. The
procedure for subscribing to security-announce is outlined here[1].

Hello,

This is a notification to vendors that use runc about a high-severity
vulnerability (CVE-2024-21626) with several exploit methods which allow
for full container breakouts due to an internal file descriptor leak.

Attached are patches which resolve this issue and provide further
hardening to prevent similar issues from happening in the future. The
provided patches apply cleanly on top of runc 1.1.11. We have also
released runc 1.1.12[3] with these patches applied.

The most severe version of this issue is assigned a CVSS of
CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:C/C:H/I:H/A:H (8.6 -- High severity). For
a full breakdown of the CVSS scoring for each sub-issue, please read
through the advisory[2] which describes each attack in more detail.

The core issue is a file descriptor leak, and while we do O_CLOEXEC all
file descriptors before executing the container code, the file
descriptor is open when doing setcwd(2) which means that the reference
can be kept alive into the container by configuring the working
directory to be a path resolved through the file descriptor (and the
non-dumpable bit is unset after execve(2) meaning that there are
multiple ways to attack this other than bad configurations).

There is also an execve(2)-based attack that makes simple verification
unworkable and was particularly hairy to fix (the patch involves doing
//go:linkname to access Go runtime internals, because the only way to
defend against it entirely is to close all unneeded file descriptors --
for the same reason that #!-based tricks meant that CVE-2019-5736
required drastic measures).

Aside from only running trusted images and never using "runc exec" on
containers, there are no generic workarounds for the issue and so users
are strongly advised to patch their installations as soon as possible.
Usage of user namespaces and LSMs like SELinux will reduce the impact of
a container breakout (and we recommend using them) but do not stop it
from happening entirely.

Credit for discovering and reporting the original vulnerability goes to
Rory McNamara from Snyk. In addition, credit goes to @lifubang from
acmcoder and Aleksa Sarai from SUSE for discovering how to adapt the
attacks in various ways to make them more severe and practical for real
SaaS workloads.

Please send any questions you have to <dev@opencontainers.org> or open
an issue on our issue tracker[4]. If you feel the issue is
security-sensitive please send a mail to <security@opencontainers.org>.

[1]: https://github.com/opencontainers/.github/blob/main/SECURITY.md#disclo=
sure-distribution-list
[2]: https://github.com/opencontainers/runc/security/advisories/GHSA-xr7r-f=
8xq-vfvv
[3]: https://github.com/opencontainers/runc/releases/tag/v1.1.12
[4]: https://github.com/opencontainers/runc/issues/new

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--5ce53mraqcl2f5l7
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment; filename="0001-Fix-File-to-Close.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 506552a88bd3455e80a9b3829568e94ec0160309 Mon Sep 17 00:00:00 2001
From: "hang.jiang" <hang.jiang@daocloud.io>
Date: Fri, 1 Sep 2023 16:17:13 +0800
Subject: [PATCH 1/8] Fix File to Close

(This is a cherry-pick of 937ca107c3d22da77eb8e8030f2342253b980980.)

Signed-off-by: hang.jiang <hang.jiang@daocloud.io>
Fixes: GHSA-xr7r-f8xq-vfvv CVE-2024-21626
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 libcontainer/cgroups/fs/paths.go | 1 +
 update.go                        | 1 +
 2 files changed, 2 insertions(+)

diff --git a/libcontainer/cgroups/fs/paths.go b/libcontainer/cgroups/fs/pat=
hs.go
index 1092331b25d8..2cb970a3d55b 100644
--- a/libcontainer/cgroups/fs/paths.go
+++ b/libcontainer/cgroups/fs/paths.go
@@ -83,6 +83,7 @@ func tryDefaultCgroupRoot() string {
 	if err !=3D nil {
 		return ""
 	}
+	defer dir.Close()
 	names, err :=3D dir.Readdirnames(1)
 	if err !=3D nil {
 		return ""
diff --git a/update.go b/update.go
index 9ce5a2e835b2..6d582ddddecb 100644
--- a/update.go
+++ b/update.go
@@ -174,6 +174,7 @@ other options are ignored.
 				if err !=3D nil {
 					return err
 				}
+				defer f.Close()
 			}
 			err =3D json.NewDecoder(f).Decode(&r)
 			if err !=3D nil {
--=20
2.43.0


--5ce53mraqcl2f5l7
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment;
	filename="0002-init-verify-after-chdir-that-cwd-is-inside-the-conta.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 0994249a5ec4e363bfcf9af58a87a722e9a3a31b Mon Sep 17 00:00:00 2001
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Tue, 26 Dec 2023 23:53:07 +1100
Subject: [PATCH 2/8] init: verify after chdir that cwd is inside the contai=
ner

If a file descriptor of a directory in the host's mount namespace is
leaked to runc init, a malicious config.json could use /proc/self/fd/...
as a working directory to allow for host filesystem access after the
container runs. This can also be exploited by a container process if it
knows that an administrator will use "runc exec --cwd" and the target
--cwd (the attacker can change that cwd to be a symlink pointing to
/proc/self/fd/... and wait for the process to exec and then snoop on
/proc/$pid/cwd to get access to the host). The former issue can lead to
a critical vulnerability in Docker and Kubernetes, while the latter is a
container breakout.

We can (ab)use the fact that getcwd(2) on Linux detects this exact case,
and getcwd(3) and Go's Getwd() return an error as a result. Thus, if we
just do os.Getwd() after chdir we can easily detect this case and error
out.

In runc 1.1, a /sys/fs/cgroup handle happens to be leaked to "runc
init", making this exploitable. On runc main it just so happens that the
leaked /sys/fs/cgroup gets clobbered and thus this is only consistently
exploitable for runc 1.1.

Fixes: GHSA-xr7r-f8xq-vfvv CVE-2024-21626
Co-developed-by: lifubang <lifubang@acmcoder.com>
Signed-off-by: lifubang <lifubang@acmcoder.com>
[refactored the implementation and added more comments]
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 libcontainer/init_linux.go               | 31 ++++++++++++++++++++++++
 libcontainer/integration/seccomp_test.go | 20 +++++++--------
 2 files changed, 41 insertions(+), 10 deletions(-)

diff --git a/libcontainer/init_linux.go b/libcontainer/init_linux.go
index 5b88c71fc83a..d9f18139f54b 100644
--- a/libcontainer/init_linux.go
+++ b/libcontainer/init_linux.go
@@ -8,6 +8,7 @@ import (
 	"io"
 	"net"
 	"os"
+	"path/filepath"
 	"strings"
 	"unsafe"
=20
@@ -135,6 +136,32 @@ func populateProcessEnvironment(env []string) error {
 	return nil
 }
=20
+// verifyCwd ensures that the current directory is actually inside the mou=
nt
+// namespace root of the current process.
+func verifyCwd() error {
+	// getcwd(2) on Linux detects if cwd is outside of the rootfs of the
+	// current mount namespace root, and in that case prefixes "(unreachable)"
+	// to the returned string. glibc's getcwd(3) and Go's Getwd() both detect
+	// when this happens and return ENOENT rather than returning a non-absolu=
te
+	// path. In both cases we can therefore easily detect if we have an inval=
id
+	// cwd by checking the return value of getcwd(3). See getcwd(3) for more
+	// details, and CVE-2024-21626 for the security issue that motivated this
+	// check.
+	//
+	// We have to use unix.Getwd() here because os.Getwd() has a workaround f=
or
+	// $PWD which involves doing stat(.), which can fail if the current
+	// directory is inaccessible to the container process.
+	if wd, err :=3D unix.Getwd(); errors.Is(err, unix.ENOENT) {
+		return errors.New("current working directory is outside of container mou=
nt namespace root -- possible container breakout detected")
+	} else if err !=3D nil {
+		return fmt.Errorf("failed to verify if current working directory is safe=
: %w", err)
+	} else if !filepath.IsAbs(wd) {
+		// We shouldn't ever hit this, but check just in case.
+		return fmt.Errorf("current working directory is not absolute -- possible=
 container breakout detected: cwd is %q", wd)
+	}
+	return nil
+}
+
 // finalizeNamespace drops the caps, sets the correct user
 // and working dir, and closes any leaked file descriptors
 // before executing the command inside the namespace
@@ -193,6 +220,10 @@ func finalizeNamespace(config *initConfig) error {
 			return fmt.Errorf("chdir to cwd (%q) set in config.json failed: %w", co=
nfig.Cwd, err)
 		}
 	}
+	// Make sure our final working directory is inside the container.
+	if err :=3D verifyCwd(); err !=3D nil {
+		return err
+	}
 	if err :=3D system.ClearKeepCaps(); err !=3D nil {
 		return fmt.Errorf("unable to clear keep caps: %w", err)
 	}
diff --git a/libcontainer/integration/seccomp_test.go b/libcontainer/integr=
ation/seccomp_test.go
index 31092a0a5d21..ecdfa7957df1 100644
--- a/libcontainer/integration/seccomp_test.go
+++ b/libcontainer/integration/seccomp_test.go
@@ -13,7 +13,7 @@ import (
 	libseccomp "github.com/seccomp/libseccomp-golang"
 )
=20
-func TestSeccompDenyGetcwdWithErrno(t *testing.T) {
+func TestSeccompDenySyslogWithErrno(t *testing.T) {
 	if testing.Short() {
 		return
 	}
@@ -25,7 +25,7 @@ func TestSeccompDenyGetcwdWithErrno(t *testing.T) {
 		DefaultAction: configs.Allow,
 		Syscalls: []*configs.Syscall{
 			{
-				Name:     "getcwd",
+				Name:     "syslog",
 				Action:   configs.Errno,
 				ErrnoRet: &errnoRet,
 			},
@@ -39,7 +39,7 @@ func TestSeccompDenyGetcwdWithErrno(t *testing.T) {
 	buffers :=3D newStdBuffers()
 	pwd :=3D &libcontainer.Process{
 		Cwd:    "/",
-		Args:   []string{"pwd"},
+		Args:   []string{"dmesg"},
 		Env:    standardEnvironment,
 		Stdin:  buffers.Stdin,
 		Stdout: buffers.Stdout,
@@ -65,17 +65,17 @@ func TestSeccompDenyGetcwdWithErrno(t *testing.T) {
 	}
=20
 	if exitCode =3D=3D 0 {
-		t.Fatalf("Getcwd should fail with negative exit code, instead got %d!", =
exitCode)
+		t.Fatalf("dmesg should fail with negative exit code, instead got %d!", e=
xitCode)
 	}
=20
-	expected :=3D "pwd: getcwd: No such process"
+	expected :=3D "dmesg: klogctl: No such process"
 	actual :=3D strings.Trim(buffers.Stderr.String(), "\n")
 	if actual !=3D expected {
 		t.Fatalf("Expected output %s but got %s\n", expected, actual)
 	}
 }
=20
-func TestSeccompDenyGetcwd(t *testing.T) {
+func TestSeccompDenySyslog(t *testing.T) {
 	if testing.Short() {
 		return
 	}
@@ -85,7 +85,7 @@ func TestSeccompDenyGetcwd(t *testing.T) {
 		DefaultAction: configs.Allow,
 		Syscalls: []*configs.Syscall{
 			{
-				Name:   "getcwd",
+				Name:   "syslog",
 				Action: configs.Errno,
 			},
 		},
@@ -98,7 +98,7 @@ func TestSeccompDenyGetcwd(t *testing.T) {
 	buffers :=3D newStdBuffers()
 	pwd :=3D &libcontainer.Process{
 		Cwd:    "/",
-		Args:   []string{"pwd"},
+		Args:   []string{"dmesg"},
 		Env:    standardEnvironment,
 		Stdin:  buffers.Stdin,
 		Stdout: buffers.Stdout,
@@ -124,10 +124,10 @@ func TestSeccompDenyGetcwd(t *testing.T) {
 	}
=20
 	if exitCode =3D=3D 0 {
-		t.Fatalf("Getcwd should fail with negative exit code, instead got %d!", =
exitCode)
+		t.Fatalf("dmesg should fail with negative exit code, instead got %d!", e=
xitCode)
 	}
=20
-	expected :=3D "pwd: getcwd: Operation not permitted"
+	expected :=3D "dmesg: klogctl: Operation not permitted"
 	actual :=3D strings.Trim(buffers.Stderr.String(), "\n")
 	if actual !=3D expected {
 		t.Fatalf("Expected output %s but got %s\n", expected, actual)
--=20
2.43.0


--5ce53mraqcl2f5l7
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment;
	filename="0003-setns-init-do-explicit-lookup-of-execve-argument-ear.patch"
Content-Transfer-Encoding: quoted-printable

=46rom fbe3eed1e568a376f371d2ced1b4ac16b7d7adde Mon Sep 17 00:00:00 2001
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Fri, 5 Jan 2024 01:42:32 +1100
Subject: [PATCH 3/8] setns init: do explicit lookup of execve argument early

(This is a partial backport of a minor change included in commit
dac41717465462b21fab5b5942fe4cb3f47d7e53.)

This mirrors the logic in standard_init_linux.go, and also ensures that
we do not call exec.LookPath in the final execve step.

While this is okay for regular binaries, it seems exec.LookPath calls
os.Getenv which tries to emit a log entry to the test harness when
running in "go test" mode. In a future patch (in order to fix
CVE-2024-21626), we will close all of the file descriptors immediately
before execve, which would mean the file descriptor for test harness
logging would be closed at execve time. So, moving exec.LookPath earlier
is necessary.

Ref: dac417174654 ("runc-dmz: reduce memfd binary cloning cost with small C=
 binary")
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 libcontainer/setns_init_linux.go | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/libcontainer/setns_init_linux.go b/libcontainer/setns_init_lin=
ux.go
index 09ab552b3d12..e891773ec578 100644
--- a/libcontainer/setns_init_linux.go
+++ b/libcontainer/setns_init_linux.go
@@ -4,6 +4,7 @@ import (
 	"errors"
 	"fmt"
 	"os"
+	"os/exec"
 	"strconv"
=20
 	"github.com/opencontainers/selinux/go-selinux"
@@ -82,6 +83,21 @@ func (l *linuxSetnsInit) Init() error {
 	if err :=3D apparmor.ApplyProfile(l.config.AppArmorProfile); err !=3D nil=
 {
 		return err
 	}
+
+	// Check for the arg before waiting to make sure it exists and it is
+	// returned as a create time error.
+	name, err :=3D exec.LookPath(l.config.Args[0])
+	if err !=3D nil {
+		return err
+	}
+	// exec.LookPath in Go < 1.20 might return no error for an executable
+	// residing on a file system mounted with noexec flag, so perform this
+	// extra check now while we can still return a proper error.
+	// TODO: remove this once go < 1.20 is not supported.
+	if err :=3D eaccess(name); err !=3D nil {
+		return &os.PathError{Op: "eaccess", Path: name, Err: err}
+	}
+
 	// Set seccomp as close to execve as possible, so as few syscalls take
 	// place afterward (reducing the amount of syscalls that users need to
 	// enable in their seccomp profiles).
@@ -101,5 +117,5 @@ func (l *linuxSetnsInit) Init() error {
 		return &os.PathError{Op: "close log pipe", Path: "fd " + strconv.Itoa(l.=
logFd), Err: err}
 	}
=20
-	return system.Execv(l.config.Args[0], l.config.Args[0:], os.Environ())
+	return system.Exec(name, l.config.Args[0:], os.Environ())
 }
--=20
2.43.0


--5ce53mraqcl2f5l7
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment;
	filename="0004-init-close-internal-fds-before-execve.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 284ba3057e428f8d6c7afcc3b0ac752e525957df Mon Sep 17 00:00:00 2001
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Tue, 2 Jan 2024 14:58:28 +1100
Subject: [PATCH 4/8] init: close internal fds before execve

If we leak a file descriptor referencing the host filesystem, an
attacker could use a /proc/self/fd magic-link as the source for execve
to execute a host binary in the container. This would allow the binary
itself (or a process inside the container in the 'runc exec' case) to
write to a host binary, leading to a container escape.

The simple solution is to make sure we close all file descriptors
immediately before the execve(2) step. Doing this earlier can lead to very
serious issues in Go (as file descriptors can be reused, any (*os.File)
reference could start silently operating on a different file) so we have
to do it as late as possible.

Unfortunately, there are some Go runtime file descriptors that we must
not close (otherwise the Go scheduler panics randomly). The only way of
being sure which file descriptors cannot be closed is to sneakily
go:linkname the runtime internal "internal/poll.IsPollDescriptor"
function. This is almost certainly not recommended but there isn't any
other way to be absolutely sure, while also closing any other possible
files.

In addition, we can keep the logrus forwarding logfd open because you
cannot execve a pipe and the contents of the pipe are so restricted
(JSON-encoded in a format we pick) that it seems unlikely you could even
construct shellcode. Closing the logfd causes issues if there is an
error returned from execve.

In mainline runc, runc-dmz protects us against this attack because the
intermediate execve(2) closes all of the O_CLOEXEC internal runc file
descriptors and thus runc-dmz cannot access them to attack the host.

Fixes: GHSA-xr7r-f8xq-vfvv CVE-2024-21626
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 libcontainer/logs/logs.go           |  9 ++++
 libcontainer/setns_init_linux.go    | 19 ++++++++
 libcontainer/standard_init_linux.go | 19 ++++++++
 libcontainer/utils/utils_unix.go    | 72 +++++++++++++++++++++++++----
 4 files changed, 111 insertions(+), 8 deletions(-)

diff --git a/libcontainer/logs/logs.go b/libcontainer/logs/logs.go
index 95deb0d6ca7a..349a18ed3839 100644
--- a/libcontainer/logs/logs.go
+++ b/libcontainer/logs/logs.go
@@ -4,10 +4,19 @@ import (
 	"bufio"
 	"encoding/json"
 	"io"
+	"os"
=20
 	"github.com/sirupsen/logrus"
 )
=20
+// IsLogrusFd returns whether the provided fd matches the one that logrus =
is
+// currently outputting to. This should only ever be called by UnsafeClose=
From
+// from `runc init`.
+func IsLogrusFd(fd uintptr) bool {
+	file, ok :=3D logrus.StandardLogger().Out.(*os.File)
+	return ok && file.Fd() =3D=3D fd
+}
+
 func ForwardLogs(logPipe io.ReadCloser) chan error {
 	done :=3D make(chan error, 1)
 	s :=3D bufio.NewScanner(logPipe)
diff --git a/libcontainer/setns_init_linux.go b/libcontainer/setns_init_lin=
ux.go
index e891773ec578..d1bb12273c04 100644
--- a/libcontainer/setns_init_linux.go
+++ b/libcontainer/setns_init_linux.go
@@ -15,6 +15,7 @@ import (
 	"github.com/opencontainers/runc/libcontainer/keys"
 	"github.com/opencontainers/runc/libcontainer/seccomp"
 	"github.com/opencontainers/runc/libcontainer/system"
+	"github.com/opencontainers/runc/libcontainer/utils"
 )
=20
 // linuxSetnsInit performs the container's initialization for running a ne=
w process
@@ -117,5 +118,23 @@ func (l *linuxSetnsInit) Init() error {
 		return &os.PathError{Op: "close log pipe", Path: "fd " + strconv.Itoa(l.=
logFd), Err: err}
 	}
=20
+	// Close all file descriptors we are not passing to the container. This is
+	// necessary because the execve target could use internal runc fds as the
+	// execve path, potentially giving access to binary files from the host
+	// (which can then be opened by container processes, leading to container
+	// escapes). Note that because this operation will close any open file
+	// descriptors that are referenced by (*os.File) handles from underneath
+	// the Go runtime, we must not do any file operations after this point
+	// (otherwise the (*os.File) finaliser could close the wrong file). See
+	// CVE-2024-21626 for more information as to why this protection is
+	// necessary.
+	//
+	// This is not needed for runc-dmz, because the extra execve(2) step means
+	// that all O_CLOEXEC file descriptors have already been closed and thus
+	// the second execve(2) from runc-dmz cannot access internal file
+	// descriptors from runc.
+	if err :=3D utils.UnsafeCloseFrom(l.config.PassedFilesCount + 3); err !=
=3D nil {
+		return err
+	}
 	return system.Exec(name, l.config.Args[0:], os.Environ())
 }
diff --git a/libcontainer/standard_init_linux.go b/libcontainer/standard_in=
it_linux.go
index c09a7bed30ea..d1d94352f93d 100644
--- a/libcontainer/standard_init_linux.go
+++ b/libcontainer/standard_init_linux.go
@@ -17,6 +17,7 @@ import (
 	"github.com/opencontainers/runc/libcontainer/keys"
 	"github.com/opencontainers/runc/libcontainer/seccomp"
 	"github.com/opencontainers/runc/libcontainer/system"
+	"github.com/opencontainers/runc/libcontainer/utils"
 )
=20
 type linuxStandardInit struct {
@@ -258,5 +259,23 @@ func (l *linuxStandardInit) Init() error {
 		return err
 	}
=20
+	// Close all file descriptors we are not passing to the container. This is
+	// necessary because the execve target could use internal runc fds as the
+	// execve path, potentially giving access to binary files from the host
+	// (which can then be opened by container processes, leading to container
+	// escapes). Note that because this operation will close any open file
+	// descriptors that are referenced by (*os.File) handles from underneath
+	// the Go runtime, we must not do any file operations after this point
+	// (otherwise the (*os.File) finaliser could close the wrong file). See
+	// CVE-2024-21626 for more information as to why this protection is
+	// necessary.
+	//
+	// This is not needed for runc-dmz, because the extra execve(2) step means
+	// that all O_CLOEXEC file descriptors have already been closed and thus
+	// the second execve(2) from runc-dmz cannot access internal file
+	// descriptors from runc.
+	if err :=3D utils.UnsafeCloseFrom(l.config.PassedFilesCount + 3); err !=
=3D nil {
+		return err
+	}
 	return system.Exec(name, l.config.Args[0:], os.Environ())
 }
diff --git a/libcontainer/utils/utils_unix.go b/libcontainer/utils/utils_un=
ix.go
index 220d0b439379..842f9b0a6d26 100644
--- a/libcontainer/utils/utils_unix.go
+++ b/libcontainer/utils/utils_unix.go
@@ -7,8 +7,11 @@ import (
 	"fmt"
 	"os"
 	"strconv"
+	_ "unsafe" // for go:linkname
=20
 	"golang.org/x/sys/unix"
+
+	"github.com/opencontainers/runc/libcontainer/logs"
 )
=20
 // EnsureProcHandle returns whether or not the given file handle is on pro=
cfs.
@@ -23,9 +26,11 @@ func EnsureProcHandle(fh *os.File) error {
 	return nil
 }
=20
-// CloseExecFrom applies O_CLOEXEC to all file descriptors currently open =
for
-// the process (except for those below the given fd value).
-func CloseExecFrom(minFd int) error {
+type fdFunc func(fd int)
+
+// fdRangeFrom calls the passed fdFunc for each file descriptor that is op=
en in
+// the current process.
+func fdRangeFrom(minFd int, fn fdFunc) error {
 	fdDir, err :=3D os.Open("/proc/self/fd")
 	if err !=3D nil {
 		return err
@@ -50,15 +55,66 @@ func CloseExecFrom(minFd int) error {
 		if fd < minFd {
 			continue
 		}
-		// Intentionally ignore errors from unix.CloseOnExec -- the cases where
-		// this might fail are basically file descriptors that have already
-		// been closed (including and especially the one that was created when
-		// os.ReadDir did the "opendir" syscall).
-		unix.CloseOnExec(fd)
+		// Ignore the file descriptor we used for readdir, as it will be closed
+		// when we return.
+		if uintptr(fd) =3D=3D fdDir.Fd() {
+			continue
+		}
+		// Run the closure.
+		fn(fd)
 	}
 	return nil
 }
=20
+// CloseExecFrom sets the O_CLOEXEC flag on all file descriptors greater or
+// equal to minFd in the current process.
+func CloseExecFrom(minFd int) error {
+	return fdRangeFrom(minFd, unix.CloseOnExec)
+}
+
+//go:linkname runtime_IsPollDescriptor internal/poll.IsPollDescriptor
+
+// In order to make sure we do not close the internal epoll descriptors th=
e Go
+// runtime uses, we need to ensure that we skip descriptors that match
+// "internal/poll".IsPollDescriptor. Yes, this is a Go runtime internal th=
ing,
+// unfortunately there's no other way to be sure we're only keeping the fi=
le
+// descriptors the Go runtime needs. Hopefully nothing blows up doing this=
...
+func runtime_IsPollDescriptor(fd uintptr) bool //nolint:revive
+
+// UnsafeCloseFrom closes all file descriptors greater or equal to minFd i=
n the
+// current process, except for those critical to Go's runtime (such as the
+// netpoll management descriptors).
+//
+// NOTE: That this function is incredibly dangerous to use in most Go code=
, as
+// closing file descriptors from underneath *os.File handles can lead to v=
ery
+// bad behaviour (the closed file descriptor can be re-used and then any
+// *os.File operations would apply to the wrong file). This function is on=
ly
+// intended to be called from the last stage of runc init.
+func UnsafeCloseFrom(minFd int) error {
+	// We must not close some file descriptors.
+	return fdRangeFrom(minFd, func(fd int) {
+		if runtime_IsPollDescriptor(uintptr(fd)) {
+			// These are the Go runtimes internal netpoll file descriptors.
+			// These file descriptors are operated on deep in the Go scheduler,
+			// and closing those files from underneath Go can result in panics.
+			// There is no issue with keeping them because they are not
+			// executable and are not useful to an attacker anyway. Also we
+			// don't have any choice.
+			return
+		}
+		if logs.IsLogrusFd(uintptr(fd)) {
+			// Do not close the logrus output fd. We cannot exec a pipe, and
+			// the contents are quite limited (very little attacker control,
+			// JSON-encoded) making shellcode attacks unlikely.
+			return
+		}
+		// There's nothing we can do about errors from close(2), and the
+		// only likely error to be seen is EBADF which indicates the fd was
+		// already closed (in which case, we got what we wanted).
+		_ =3D unix.Close(fd)
+	})
+}
+
 // NewSockPair returns a new unix socket pair
 func NewSockPair(name string) (parent *os.File, child *os.File, err error)=
 {
 	fds, err :=3D unix.Socketpair(unix.AF_LOCAL, unix.SOCK_STREAM|unix.SOCK_C=
LOEXEC, 0)
--=20
2.43.0


--5ce53mraqcl2f5l7
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment;
	filename="0005-cgroup-plug-leaks-of-sys-fs-cgroup-handle.patch"
Content-Transfer-Encoding: quoted-printable

=46rom b6633f48a8c970433737b9be5bfe4f25d58a5aa7 Mon Sep 17 00:00:00 2001
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Tue, 26 Dec 2023 23:36:51 +1100
Subject: [PATCH 5/8] cgroup: plug leaks of /sys/fs/cgroup handle

We auto-close this file descriptor in the final exec step, but it's
probably a good idea to not possibly leak the file descriptor to "runc
init" (we've had issues like this in the past) especially since it is a
directory handle from the host mount namespace.

In practice, on runc 1.1 this does leak to "runc init" but on main the
handle has a low enough file descriptor that it gets clobbered by the
ForkExec of "runc init".

OPEN_TREE_CLONE would let us protect this handle even further, but the
performance impact of creating an anonymous mount namespace is probably
not worth it.

Also, switch to using an *os.File for the handle so if it goes out of
scope during setup (i.e. an error occurs during setup) it will get
cleaned up by the GC.

Fixes: GHSA-xr7r-f8xq-vfvv CVE-2024-21626
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 libcontainer/cgroups/file.go | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/libcontainer/cgroups/file.go b/libcontainer/cgroups/file.go
index 48b263a1661e..f6e1b73bd921 100644
--- a/libcontainer/cgroups/file.go
+++ b/libcontainer/cgroups/file.go
@@ -77,16 +77,16 @@ var (
 	// TestMode is set to true by unit tests that need "fake" cgroupfs.
 	TestMode bool
=20
-	cgroupFd     int =3D -1
-	prepOnce     sync.Once
-	prepErr      error
-	resolveFlags uint64
+	cgroupRootHandle *os.File
+	prepOnce         sync.Once
+	prepErr          error
+	resolveFlags     uint64
 )
=20
 func prepareOpenat2() error {
 	prepOnce.Do(func() {
 		fd, err :=3D unix.Openat2(-1, cgroupfsDir, &unix.OpenHow{
-			Flags: unix.O_DIRECTORY | unix.O_PATH,
+			Flags: unix.O_DIRECTORY | unix.O_PATH | unix.O_CLOEXEC,
 		})
 		if err !=3D nil {
 			prepErr =3D &os.PathError{Op: "openat2", Path: cgroupfsDir, Err: err}
@@ -97,15 +97,16 @@ func prepareOpenat2() error {
 			}
 			return
 		}
+		file :=3D os.NewFile(uintptr(fd), cgroupfsDir)
+
 		var st unix.Statfs_t
-		if err =3D unix.Fstatfs(fd, &st); err !=3D nil {
+		if err :=3D unix.Fstatfs(int(file.Fd()), &st); err !=3D nil {
 			prepErr =3D &os.PathError{Op: "statfs", Path: cgroupfsDir, Err: err}
 			logrus.Warnf("falling back to securejoin: %s", prepErr)
 			return
 		}
=20
-		cgroupFd =3D fd
-
+		cgroupRootHandle =3D file
 		resolveFlags =3D unix.RESOLVE_BENEATH | unix.RESOLVE_NO_MAGICLINKS
 		if st.Type =3D=3D unix.CGROUP2_SUPER_MAGIC {
 			// cgroupv2 has a single mountpoint and no "cpu,cpuacct" symlinks
@@ -132,7 +133,7 @@ func openFile(dir, file string, flags int) (*os.File, e=
rror) {
 		return openFallback(path, flags, mode)
 	}
=20
-	fd, err :=3D unix.Openat2(cgroupFd, relPath,
+	fd, err :=3D unix.Openat2(int(cgroupRootHandle.Fd()), relPath,
 		&unix.OpenHow{
 			Resolve: resolveFlags,
 			Flags:   uint64(flags) | unix.O_CLOEXEC,
@@ -140,20 +141,20 @@ func openFile(dir, file string, flags int) (*os.File,=
 error) {
 		})
 	if err !=3D nil {
 		err =3D &os.PathError{Op: "openat2", Path: path, Err: err}
-		// Check if cgroupFd is still opened to cgroupfsDir
+		// Check if cgroupRootHandle is still opened to cgroupfsDir
 		// (happens when this package is incorrectly used
 		// across the chroot/pivot_root/mntns boundary, or
 		// when /sys/fs/cgroup is remounted).
 		//
 		// TODO: if such usage will ever be common, amend this
-		// to reopen cgroupFd and retry openat2.
-		fdStr :=3D strconv.Itoa(cgroupFd)
+		// to reopen cgroupRootHandle and retry openat2.
+		fdStr :=3D strconv.Itoa(int(cgroupRootHandle.Fd()))
 		fdDest, _ :=3D os.Readlink("/proc/self/fd/" + fdStr)
 		if fdDest !=3D cgroupfsDir {
-			// Wrap the error so it is clear that cgroupFd
+			// Wrap the error so it is clear that cgroupRootHandle
 			// is opened to an unexpected/wrong directory.
-			err =3D fmt.Errorf("cgroupFd %s unexpectedly opened to %s !=3D %s: %w",
-				fdStr, fdDest, cgroupfsDir, err)
+			err =3D fmt.Errorf("cgroupRootHandle %d unexpectedly opened to %s !=3D =
%s: %w",
+				cgroupRootHandle.Fd(), fdDest, cgroupfsDir, err)
 		}
 		return nil, err
 	}
--=20
2.43.0


--5ce53mraqcl2f5l7
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment;
	filename="0006-libcontainer-mark-all-non-stdio-fds-O_CLOEXEC-before.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 683ad2ff3b01fb142ece7a8b3829de17150cf688 Mon Sep 17 00:00:00 2001
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Thu, 28 Dec 2023 00:42:23 +1100
Subject: [PATCH 6/8] libcontainer: mark all non-stdio fds O_CLOEXEC before
 spawning init

Given the core issue in GHSA-xr7r-f8xq-vfvv was that we were unknowingly
leaking file descriptors to "runc init", it seems prudent to make sure
we proactively prevent this in the future. The solution is to simply
mark all non-stdio file descriptors as O_CLOEXEC before we spawn "runc
init".

For libcontainer library users, this could result in unrelated files
being marked as O_CLOEXEC -- however (for the same reason we are doing
this for runc), for security reasons those files should've been marked
as O_CLOEXEC anyway.

Fixes: GHSA-xr7r-f8xq-vfvv CVE-2024-21626
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 libcontainer/container_linux.go | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/libcontainer/container_linux.go b/libcontainer/container_linux=
.go
index 59aa0338ac6d..40b332f98104 100644
--- a/libcontainer/container_linux.go
+++ b/libcontainer/container_linux.go
@@ -353,6 +353,15 @@ func (c *linuxContainer) start(process *Process) (retE=
rr error) {
 		}()
 	}
=20
+	// Before starting "runc init", mark all non-stdio open files as O_CLOEXEC
+	// to make sure we don't leak any files into "runc init". Any files to be
+	// passed to "runc init" through ExtraFiles will get dup2'd by the Go
+	// runtime and thus their O_CLOEXEC flag will be cleared. This is some
+	// additional protection against attacks like CVE-2024-21626, by making
+	// sure we never leak files to "runc init" we didn't intend to.
+	if err :=3D utils.CloseExecFrom(3); err !=3D nil {
+		return fmt.Errorf("unable to mark non-stdio fds as cloexec: %w", err)
+	}
 	if err :=3D parent.start(); err !=3D nil {
 		return fmt.Errorf("unable to start container process: %w", err)
 	}
--=20
2.43.0


--5ce53mraqcl2f5l7
Content-Type: text/x-patch; charset=us-ascii
Content-Disposition: attachment;
	filename="0007-init-don-t-special-case-logrus-fds.patch"
Content-Transfer-Encoding: quoted-printable

=46rom e9665f4d606b64bf9c4652ab2510da368bfbd951 Mon Sep 17 00:00:00 2001
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Sat, 20 Jan 2024 16:56:38 +1100
Subject: [PATCH 7/8] init: don't special-case logrus fds

We close the logfd before execve so there's no need to special case it.
In addition, it turns out that (*os.File).Fd() doesn't handle the case
where the file was closed and so it seems suspect to use that kind of
check.

Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 libcontainer/logs/logs.go        | 9 ---------
 libcontainer/utils/utils_unix.go | 8 --------
 2 files changed, 17 deletions(-)

diff --git a/libcontainer/logs/logs.go b/libcontainer/logs/logs.go
index 349a18ed3839..95deb0d6ca7a 100644
--- a/libcontainer/logs/logs.go
+++ b/libcontainer/logs/logs.go
@@ -4,19 +4,10 @@ import (
 	"bufio"
 	"encoding/json"
 	"io"
-	"os"
=20
 	"github.com/sirupsen/logrus"
 )
=20
-// IsLogrusFd returns whether the provided fd matches the one that logrus =
is
-// currently outputting to. This should only ever be called by UnsafeClose=
From
-// from `runc init`.
-func IsLogrusFd(fd uintptr) bool {
-	file, ok :=3D logrus.StandardLogger().Out.(*os.File)
-	return ok && file.Fd() =3D=3D fd
-}
-
 func ForwardLogs(logPipe io.ReadCloser) chan error {
 	done :=3D make(chan error, 1)
 	s :=3D bufio.NewScanner(logPipe)
diff --git a/libcontainer/utils/utils_unix.go b/libcontainer/utils/utils_un=
ix.go
index 842f9b0a6d26..bf3237a29118 100644
--- a/libcontainer/utils/utils_unix.go
+++ b/libcontainer/utils/utils_unix.go
@@ -10,8 +10,6 @@ import (
 	_ "unsafe" // for go:linkname
=20
 	"golang.org/x/sys/unix"
-
-	"github.com/opencontainers/runc/libcontainer/logs"
 )
=20
 // EnsureProcHandle returns whether or not the given file handle is on pro=
cfs.
@@ -102,12 +100,6 @@ func UnsafeCloseFrom(minFd int) error {
 			// don't have any choice.
 			return
 		}
-		if logs.IsLogrusFd(uintptr(fd)) {
-			// Do not close the logrus output fd. We cannot exec a pipe, and
-			// the contents are quite limited (very little attacker control,
-			// JSON-encoded) making shellcode attacks unlikely.
-			return
-		}
 		// There's nothing we can do about errors from close(2), and the
 		// only likely error to be seen is EBADF which indicates the fd was
 		// already closed (in which case, we got what we wanted).
--=20
2.43.0


--5ce53mraqcl2f5l7--

--r5u66meen6hrm2jg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCZbqufQAKCRAol/rSt+lE
bzfOAQDlWOwQY/PfSI+iUzxV425qkk12awtu5d8VQQs6bnwOcgEA6hjiuxis2S5k
uzfXebenEsOrpbOyIPdWiMHDLonzWQU=
=+2j4
-----END PGP SIGNATURE-----

--r5u66meen6hrm2jg--
