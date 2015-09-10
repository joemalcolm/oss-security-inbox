X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2301" "Thursday" "10" "September" "2015" "20:26:30" "+0100" "Ben Hutchings" "ben@decadent.org.uk" "<1441913190.17007.15.camel@decadent.org.uk>" "58" "[oss-security] CVE request: Use-after-free in Linux kernel with aufs mmap patch" nil nil nil "9" "2015091019:26:30" "[oss-security] CVE request: Use-after-free in Linux kernel with aufs mmap patch" (number mark "        ben@decadent Sep 10   58/2301  " thread-indent "\"[oss-security] CVE request: Use-after-free in Linux kernel with aufs mmap patch\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18262 invoked by uid 550); 10 Sep 2015 19:26:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18219 invoked from network); 10 Sep 2015 19:26:52 -0000
Message-ID: <1441913190.17007.15.camel@decadent.org.uk>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-3mCREPO04TN2B+pMLKWX"
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.2.6
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on shadbolt.decadent.org.uk); SAEximRunCond expanded to false
Cc: sfjro@users.sourceforge.net
Date: Thu, 10 Sep 2015 20:26:30 +0100
From: Ben Hutchings <ben@decadent.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Use-after-free in Linux kernel with aufs mmap patch
To: oss-security <oss-security@lists.openwall.com>

--=-3mCREPO04TN2B+pMLKWX
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The aufs (Advanced Union Filesystem) project provides an optional patch
for the Linux kernel, called either aufs3-mmap.patch or
aufs4-mmap.patch, which is needed to ensure correct behaviour of
memory-mapped files from an aufs mount.

Each memory mapping (vma) holds a reference to the file that is mapped.
This patch makes it also hold a reference to the virtual file on the
union mount through which the file was found, where applicable.

In two functions, madvise_remove() and sys_msync(), it is necessary to
take an extra reference to the mapped file before unlocking the current
memory management state, as the vma may be freed after that point.
Unfortunately the aufs patch introduces later uses of the vma, resulting
in a potential use-after-free.  This is certainly exploitable for a
minor denial of service (BUG in process context, so the task can't be
cleaned up properly but the system does not panic) but might also be
usable for privilege escalation.

I posted a patch here that works for me:
http://sourceforge.net/p/aufs/mailman/message/34449209/

Please assign a CVE ID to this.

Ben.

--=20
Ben Hutchings
The most exhausting thing in life is being insincere. - Anne Morrow Lindberg



--=-3mCREPO04TN2B+pMLKWX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIVAwUAVfHZcOe/yOyVhhEJAQpWaxAAxLqp5iPL8qMY5HmQyQjjKBrLCIUj+ESW
YJh0sxh138pm1dNsNqT5wcW2iu9/HQeLc1lY0MV5UQgZdT/kNUDcMDVfox9uyL5N
mGs2kuc6URiWCYH11pDo8opiMD+2KfYiL6Wht04S3g7gnxFdnvWfvH+al0hPp527
h6b27orhy+YAAvhjVOGlsbZfs2d8G0Kv0IEyct66smZu08nBuKNiOIwO8AJW+xb9
hEY87kK2iukQ5vJBvpTx5XTHVgkusYykp1JupXiLV/lzprpc4McAAAuszo0rBWYF
tcR034cm0w9bM9MyaeEuxQ+8fMyf6x+6YcGZhnpujOJCApY/BP2jWPO9VgY/3OVj
2M3tTytzAymbL4c9+KRlhJEp/9Cm9yG38bf2ut/GMUqqpfZHx/3eqsgYkw3Ed/f7
O5274Gww6I5c9ZHVu9tVB24RUKyWp0tynPjsN3cZPvODwXJG44p1G09k9I1Z2ctF
UN3vnEVl+mQiFiQuRMqJ8It6pZ1zocg0IPodFjY1Y0QjDUNMXyXQY+i+ebA5HzAT
SF4g2JgbKyz4UPRWaOKB3wnt8Fwet76QSmnzovrbbUJq/FHKfXJSIf9nuxDlpQuD
A9VeNQ2bHGV/jDwAKz5QEa591v3JV/FJJ5jQkmHxV1BdEfoXI+fbk1Cud1OVzdJl
J4R5pI/Z13w=
=pkVf
-----END PGP SIGNATURE-----

--=-3mCREPO04TN2B+pMLKWX--
