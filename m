X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2803" "Thursday" "3" "September" "2015" "03:19:31" "+0200" "Jann Horn" "jann@thejh.net" "<20150903011931.GA18500@pc.thejh.net>" "62" "[oss-security] OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local privesc on Linux" nil nil nil "9" "2015090301:19:31" "[oss-security] OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local privesc on Linux" (number mark "U       jann@thejh.n Sep  3   62/2803  " thread-indent "\"[oss-security] OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local privesc on Linux\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3234 invoked by uid 550); 3 Sep 2015 01:19:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3190 invoked from network); 3 Sep 2015 01:19:43 -0000
Date: Thu, 3 Sep 2015 03:19:31 +0200
From: Jann Horn <jann@thejh.net>
To: oss-security@lists.openwall.com
Message-ID: <20150903011931.GA18500@pc.thejh.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] OpenSSH: CVE-2015-6565 (pty issue in 6.8-6.9) can lead to local
 privesc on Linux

--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

OpenSSH 6.8-6.9 chmod()ed the connection's PTY slave to mode 0622
(world-writable). This issue was discovered by Nikolay Edigaryev, fixed in
OpenSSH 7.0 and assigned CVE-2015-6565.

On Linux, the impact of this issue is higher because a local attacker can
carry out the following attack:

After the PTY has been unlocked and the slave has been chmod()ed, but before
the ssh server's child has made the PTY slave its controlling terminal, the
attacker opens the slave device with open(..., O_WRONLY). (This is pretty easy
to do, just open() the device in a loop until it works and hope that you were
the first one.) The Linux kernel will then make the PTY slave the controlling
terminal of the attacker's process. (The slave will therefore not become the
controlling terminal of sshd's child, but that's not a problem for the
attacker.) The victim's shell opens normally, but the attacker can now
perform ioctls on the slave that require having the PTY slave as controlling
terminal, most importantly TIOCSTI (pushback). Using this ioctl, the attacker
can write arbitrary commands into the victim user's terminal - not as output
to the user, but as input into the terminal that is delivered to the user's
shell - and thereby obtain code execution as the targeted user.

This attack was successfully tested against OpenSSH 6.9p1 compiled from source
on a Fedora box.

For a bit more about TIOCSTI, see
<http://www.halfdog.net/Security/2012/TtyPushbackPrivilegeEscalation/>.

The trivial attack makes it obvious to the victim that something's going on,
but it's not hard to make the entered command and the shell's new prompt
invisible.

A kernel patch that tightens the rules for opening a TTY as controlling
terminal is probably going to land soon.


--mP3DRpeJDSE+ciuQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJV56AjAAoJED4KNFJOeCOo/UgP/ROwKdoZgvhLrO6eoOSJeOxX
bB1XRAa1SACbdZmm9vcA5oP2lS3FrbLuMgHA+6PbhCGoBxeGFK0RCaoYq5woIyvt
oLwYDM1P69PDwPka9jDFi4bGaF5h3yu4rN0ziK+3VwEgq3T9xn1PJJ8jfbkAkrG2
NjGgS1N74Tii9nZCwrRDU752vE+hkpkLYSDw7fquqcJqP2WWDheRq8K4E0XoihBH
6CPb6QUpXSeOGrYPfNGDTEKhLzZiNqKa/pfUSIhsPShWltkXThD0EfOO+Zfnd9l2
AhXKlO9YsSxMQ3UH+f0FfnqttsGu9YF9xIVQu9M1zSHYtM9/zTUmWWIeBmUEj8u7
6nEacr7JdM+lh2872mVeN+1cmiFFfQronhupfV7S+Xh0aKVFf5ryL+MMzm5QZQsY
IiAtTKtph7tpcVnB/gW9HgxADXCPpvp2v3AsArpsTTOqIUXzM8kWUJXsnCVPjhPf
gYURt4fKaqlCBTTboB4P0hM564LtPOI0yxC0l1Q9CdC0wdgYBAQ8dN2oZX1ShTAI
wvtcgVE23eGiww+v8O3EZCYl2wDmkoF8qstAy8jL4JA+vuZP8sw7lNhIVnIJQxd/
Hu2hd6JKTfmvrlL/+8bj/srB1i95h379KRJjZsloAFuvms3bzGcb7X2z7jdw8GDM
fdYkaJi46QYhpZbKPg6M
=ZQvn
-----END PGP SIGNATURE-----

--mP3DRpeJDSE+ciuQ--
