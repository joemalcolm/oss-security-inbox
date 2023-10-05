Received: (qmail 27950 invoked by uid 550); 5 Oct 2023 08:05:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27917 invoked from network); 5 Oct 2023 08:05:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1696493095; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=8Gxdrc0fsKrXnLlTrARJNKTRDZx/i2TnnrgzDju8iOA=;
	b=af195NHEnWo6bVqp1HiLF5/DBm4sYU7smTXVhSrGqRCSp93FfSYqqLz67S7AdH2mZcrne2
	A5YA7wuOyUVr6qdeLF4NSRGanEjshTQXb9WIwQVM7YEj/vSmd2Pf/UqQAUYs5zNpSDrgpM
	5/3KcrhkowSFitrVpWr1bsSCJpkDklA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1696493095;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=8Gxdrc0fsKrXnLlTrARJNKTRDZx/i2TnnrgzDju8iOA=;
	b=Ep99oeN7l+HSu14/ciMuSnD8wINSbypTArYqn21/rm8EWqZ2xGJAZnA1gkAj+xCNcnbtvx
	cA+BzfhoxS2xxoBA==
Date: Thu, 5 Oct 2023 10:04:53 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ZR5uJlT5IQueFy6R@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QiIft6GikqJk1Ry4"
Content-Disposition: inline
Subject: [oss-security] Cadence: Fixed /tmp path issues; no longer maintained by upstream
 (CVE-2023-43782, CVE-2023-43783)

--QiIft6GikqJk1Ry4
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="GEwfCKYdacUu5RR0"
Content-Disposition: inline
Date: Thu, 5 Oct 2023 10:04:53 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Cadence: Fixed /tmp path issues; no longer maintained by upstream
 (CVE-2023-43782, CVE-2023-43783)


--GEwfCKYdacUu5RR0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

this is a report about two fixed temporary file path issues in the Cadence =
[1]
tools for audio production. There are no upstream fixes available since the
upstream author considers this project as deprecated and mostly no longer
necessary. The GitHub project has consequently been archived as a response =
to
my report of these security issues.

Cadence is still packaged on a number of Linux distributions though (e.g.
Gentoo, openSUSE, Fedora, Arch). Our openSUSE Cadence package maintainer
informed me that there still exist some use cases for which there is no pro=
per
replacement for Cadence yet, when using the Jack audio system [2].

This detailed report and the CVE assignments are mostly intended to make the
community aware that there are issues in Cadence and that it is no longer
maintained, thus it should be moved away from. For short term fixes I have
attached two patches that address the two issues outlined in this report.

1) CVE-2023-43782: Use of Fixed Temporary File Path in /tmp/.cadence-aloop-=
daemon.x
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D

This temporary file is used in `cadence.py` and `cadence_aloop_daemon.py`. =
It
is used to control the starting and stopping of the aloop daemon.

- in cadence.py only the `stat()` and `unlink()` system calls are used on t=
his
  path. Symlink attacks should not be possible.
- in `cadence_aloop_daemon.py` `mknod()` is used to create this file. This
  system call is pretty safe against following symlinks as well.
- the content of the file is not evaluated by any of the scripts.

In `cadence_aloop_daemon.py` the use of the file is as follows:

```
    checkFile =3D "/tmp/.cadence-aloop-daemon.x"
=20=20=20=20
    [...]
=20=20=20=20
    # Create check file
    if not os.path.exists(checkFile):
        os.mknod(checkFile)
=20=20=20=20
    [...]
=20=20=20=20
    while doLoop and os.path.exists(checkFile):
        [...]
        sleep(1)
=20=20=20=20
    [...]
    if os.path.exists(checkFile):
        os.remove(checkFile)
```

If the file already exists (created by another user in the system) then the
file is used as is. This allows other users in the system to perform a
denial-of-service against the aloop daemon, by pre-creating this file
and removing it at an arbitrary time again, to make the daemon stop.

2) CVE-2023-43783: Use of Fixed Temporary File Path in /tmp/cadence-wineasi=
o.reg
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

This file is used if Wine is installed on the system and when the Wine ASIO
related settings are changed and applied in the Cadence GUI dialog. In
Cadence.py the following code deals with it:

```
    if "wineasio" in self.settings_changed_types:
        REGFILE  =3D 'REGEDIT4\n'
        REGFILE +=3D '\n'
        REGFILE +=3D '[HKEY_CURRENT_USER\Software\Wine\WineASIO]\n'
        REGFILE +=3D '"Autostart server"=3Ddword:0000000%i\n' % int(1 if se=
lf.cb_wineasio_autostart.isChecked() else 0)
        REGFILE +=3D '"Connect to hardware"=3Ddword:0000000%i\n' % int(1 if=
 self.cb_wineasio_hw.isChecked() else 0)
        REGFILE +=3D '"Fixed buffersize"=3Ddword:0000000%i\n' % int(1 if se=
lf.cb_wineasio_fixed_bsize.isChecked() else 0)
        REGFILE +=3D '"Number of inputs"=3Ddword:000000%s\n' % smartHex(sel=
f.sb_wineasio_ins.value(), 2)
        REGFILE +=3D '"Number of outputs"=3Ddword:000000%s\n' % smartHex(se=
lf.sb_wineasio_outs.value(), 2)
        REGFILE +=3D '"Preferred buffersize"=3Ddword:0000%s\n' % smartHex(i=
nt(self.cb_wineasio_bsizes.currentText()), 4)
=20=20=20=20=20=20=20=20
        writeFile =3D open("/tmp/cadence-wineasio.reg", "w")
        writeFile.write(REGFILE)
        writeFile.close()
=20=20=20=20=20=20=20=20
        os.system("regedit /tmp/cadence-wineasio.reg")
```

Without the Linux kernel's symlink protection (`fs.protected_symlinks` sysc=
tl)
this would allow other users to stage a symlink attack. Thus other users co=
uld
point /tmp/cadence-wineasio.reg to a compromised file, or have the user
running Cadence create this file in an arbitrary location.

Without the Linux kernel's regular file protection (`fs.protected_regular`
sysctl) this would allow other users to place an attacker controlled
world-writable file in this location. By winning a race condition (waiting =
for
Cadence to write its desired content and then quickly replacing the file's
content again) the attacker can cause arbitrary data to be passed to
`regedit`. Since the Wine registry controls ample application behaviour this
can be considered a local arbitrary code execution.

Luckily most modern Linux distributions have the kernel protections mention=
ed
above enabled which means that the worst case will not happen. Even with th=
ese
protection mechanisms the following problems remain:

- Cadence can be prevented from saving Wine ASIO settings by pre-creating t=
his
  file.
- The file is created world-readable by Cadence, thus the content of the fi=
le
  can leak to other user contexts on the system. Luckily the data that is
  written there is not sensitive at the moment.

3) Affectedness and Patches
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

These two fixed tmp file paths have been around in Cadence since commits in
2012, all upstream version tags since version 0.9.0 contain them.

The attached patches are hotfixes based on version release 0.9.2 that I
authored to allow distributors to fix these issues until ways are found to
move away from Cadence.

4) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2023-08-04: I contacted the Cadence upstream author and reported the two
            vulnerabilities, offering coordinated disclosure.
            I quickly received a reply from the author stating that Cadence
            should no longer be used and that he intends to archive the
            project at some point.
2023-08-07: I replied that the tmp file issues aren't hard to fix and a
            maintenance-only release that also makes packagers aware of the
            need to move away from Cadence would be helpful.
2023-08-21: I received no more replies from the upstream author. Instead I
            found the GitHub repository archived in the meantime. Therefore=
 I
            decided to provide custom patches for the openSUSE package.
2023-09-06: I requested CVE IDs from Mitre for the issues. I also published
            the information about the issues in our Bugzilla bug tracker.
2023-10-04: It took a longer time for Mitre to assign the CVE IDs. With all
            data available I published this report.

5) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://github.com/falkTX/Cadence.git
[2]: https://bugzilla.suse.com/show_bug.cgi?id=3D1213983#c5

Best Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--GEwfCKYdacUu5RR0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-cadence_aloop_daemon-place-lockfile-into-non-public-.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 986a26147fa85fc3b2727a13c478b12994555e4a Mon Sep 17 00:00:00 2001
From: Matthias Gerstner <matthias.gerstner@suse.de>
Date: Tue, 22 Aug 2023 14:06:40 +0200
Subject: [PATCH] cadence_aloop_daemon: place lockfile into non-public
 directory

The fixed /tmp path for the lock / shutdown handling of the daemon is
problematic security wise, since any other user in the system can block
this path. This also makes parallel instances for multiple user accounts
impossible.

Select a location in the user's /run directory or in its home directory
(as a fallback).
---
 src/cadence.py              | 3 ++-
 src/cadence_aloop_daemon.py | 5 +++--
 src/shared.py               | 8 ++++++++
 3 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/src/cadence.py b/src/cadence.py
index 87a14a8..714e2d6 100755
--- a/src/cadence.py
+++ b/src/cadence.py
@@ -38,6 +38,7 @@ import ui_cadence_tb_alsa
 import ui_cadence_tb_a2j
 import ui_cadence_tb_pa
 import ui_cadence_rwait
+from shared import getDaemonLockfile
 from shared_cadence import *
 from shared_canvasjack import *
 from shared_settings import *
@@ -1710,7 +1711,7 @@ class CadenceMainW(QMainWindow, ui_cadence.Ui_Cadence=
MainW):
=20
     @pyqtSlot()
     def slot_AlsaBridgeStop(self):
-        checkFile =3D "/tmp/.cadence-aloop-daemon.x"
+        checkFile =3D self.getDaemonLockfile("cadence-aloop-daemon")
         if os.path.exists(checkFile):
             os.remove(checkFile)
=20
diff --git a/src/cadence_aloop_daemon.py b/src/cadence_aloop_daemon.py
index c8408ef..b53f64d 100755
--- a/src/cadence_aloop_daemon.py
+++ b/src/cadence_aloop_daemon.py
@@ -33,6 +33,7 @@ else:
 # Imports (Custom Stuff)
=20
 import jacklib
+from shared import getDaemonLockfile
=20
 # --------------------------------------------------
 # Auto re-activate if on good kernel
@@ -50,7 +51,7 @@ doRunNow  =3D True
 useZita   =3D False
 procIn    =3D QProcess()
 procOut   =3D QProcess()
-checkFile =3D "/tmp/.cadence-aloop-daemon.x"
+checkFile =3D getDaemonLockfile("cadence-aloop-daemon")
=20
 # --------------------------------------------------
 # Global JACK variables
@@ -161,7 +162,7 @@ if __name__ =3D=3D '__main__':
     client =3D jacklib.client_open("cadence-aloop-daemon", jacklib.JackUse=
ExactName, None)
=20
     if not client:
-        print("cadence-aloop-daemon is already running, delete \"/tmp/.cad=
ence-aloop-daemon.x\" to close it")
+        print("cadence-aloop-daemon is already running, delete \"{}\" to c=
lose it".format(checkFile))
         quit()
=20
     if jacklib.JACK2:
diff --git a/src/shared.py b/src/shared.py
index 2df4d54..e65d292 100644
--- a/src/shared.py
+++ b/src/shared.py
@@ -312,3 +312,11 @@ def setIcons(self_, modes):
     if "misc" in modes:
         gGui.ui.act_quit.setIcon(getIcon("application-exit"))
         gGui.ui.act_configure.setIcon(getIcon("configure"))
+
+def getDaemonLockfile(base):
+    lockdir =3D os.environ.get("XDG_RUNTIME_DIR", None)
+    if not lockdir:
+        lockdir =3D os.path.expanduser("~")
+
+    return os.path.join(lockdir, "{}-lock".format(base))
+
--=20
2.41.0


--GEwfCKYdacUu5RR0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-cadence.py-wine-ASIO-settings-use-safe-tempfile.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 3fdff274c40795ad6a24891066358aa7a3953962 Mon Sep 17 00:00:00 2001
From: Matthias Gerstner <matthias.gerstner@suse.de>
Date: Tue, 22 Aug 2023 14:28:33 +0200
Subject: [PATCH] cadence.py: wine ASIO settings: use safe tempfile

This fixed tempfile path poses a security issue that even might allow
other users on the system to inject arbitrary wine registry settings, if
protect_symlinks and protect_regular kernel protection is not enabled.

Use a proper NamedTemporaryFile to pass the data to regedit to fix this.
---
 src/cadence.py | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/src/cadence.py b/src/cadence.py
index 714e2d6..fddadfb 100755
--- a/src/cadence.py
+++ b/src/cadence.py
@@ -47,6 +47,8 @@ from shared_settings import *
 # Import getoutput
=20
 from subprocess import getoutput
+import tempfile
+import subprocess
=20
 # ------------------------------------------------------------------------=
------------------------------------
 # Try Import DBus
@@ -2095,11 +2097,10 @@ class CadenceMainW(QMainWindow, ui_cadence.Ui_Caden=
ceMainW):
             REGFILE +=3D '"Number of outputs"=3Ddword:000000%s\n' % smartH=
ex(self.sb_wineasio_outs.value(), 2)
             REGFILE +=3D '"Preferred buffersize"=3Ddword:0000%s\n' % smart=
Hex(int(self.cb_wineasio_bsizes.currentText()), 4)
=20
-            writeFile =3D open("/tmp/cadence-wineasio.reg", "w")
-            writeFile.write(REGFILE)
-            writeFile.close()
-
-            os.system("regedit /tmp/cadence-wineasio.reg")
+            with tempfile.NamedTemporaryFile('w') as tmpfile:
+                tmpfile.write(REGFILE)
+                tmpfile.flush()
+                subprocess.run(["regedit", tmpfile.name])
=20
         self.settings_changed_types =3D []
         self.frame_tweaks_settings.setVisible(False)
--=20
2.41.0


--GEwfCKYdacUu5RR0--

--QiIft6GikqJk1Ry4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmUebiYACgkQFMQFyXGS
NVOZ1A/7BUzpZVVLEuBjATt3nYpg9cg9fab7IIeYYtOn2wABCe0vcwN9xoeRKQ0u
RsEhpbRaiqOiG2IsaXIuD9AJ1oYAhqdbFdhazlEfyNwWAi00YJB1bM1qSofmc4KL
ZuAs4DAotBM+CYhCkAQnHP7DXICf8tne27VNeBpjzH/FOJy+RkbT1H3sQkOcf6Db
lk6o1C14RQHoWJDaSBNpQbAwikW8wKhVPIrbsbHu7jKbMveSqyREM0caSE3knpQb
vfogf+0frHuqh9Jcoh+uHSvBEPNfRLRMKnyEJbhiZdrNW585sj17z/P/tljHCQ6v
/zSGPWVFex51lXbhCVzqMbrv5z3NHsX0fdKZzhvLPyd7JBx+kcgV0nD9xrRQYFZZ
383jxHjGR4pdY1CRtRs3qZej5Jn+f9iovWdxqLzL8OWnuta2WoxRu9qABNIF4KGo
0OH+TFKRAVs5pHC3IRvE9dkbTJOcEPuxymGSxIpkkF5gVUQ+rRXEj4IMWkpUlSV1
ELtR9tUSQcmucUywRHXzBUibRMW5nRaysMSHKCUzQRXUR2zQXb36pjGt3DUHm1dH
cYxqXotQbNQEON8372IK8InnDVcUiri08jwoY2uBfLuZpNEcs8n5EjzFYS28hAtY
FRiqbqrdLItdaR1q8yWXu/n4cA75ElfneOQihzrhf1YeqX8Z1zc=
=7N5V
-----END PGP SIGNATURE-----

--QiIft6GikqJk1Ry4--
