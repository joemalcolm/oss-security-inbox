X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1759" "Sunday" "30" "October" "2016" "15:42:59" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<a3bc645664c34b6dbfe5aa8b76797692@imshyb02.MITRE.ORG>" "44" "[oss-security] Re: CVE request Qemu: 9pfs: integer overflow leading to OOB access" nil nil nil "10" "2016103019:42:59" "[oss-security] Re: CVE request Qemu: 9pfs: integer overflow leading to OOB access" (number mark "U       cve-assign@m Oct 30   44/1759  " thread-indent "\"[oss-security] Re: CVE request Qemu: 9pfs: integer overflow leading to OOB access\"\n") "<alpine.LFD.2.20.1610281440190.16066@wniryva>" ("<alpine.LFD.2.20.1610281440190.16066@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5547 invoked by uid 550); 30 Oct 2016 19:43:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5480 invoked from network); 30 Oct 2016 19:43:10 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1610281440190.16066@wniryva>
Message-ID: <a3bc645664c34b6dbfe5aa8b76797692@imshyb02.MITRE.ORG>
Date: Sun, 30 Oct 2016 15:42:59 -0400
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: 9pfs: integer overflow leading to OOB access

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9
> File System(9pfs) support, is vulnerable to an integer overflow issue. It
> could occur by accessing xattributes values.
> 
> A privileged user inside guest could use this flaw to crash the Qemu process
> instance resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg02942.html

>> Fix this by comparing the offset and the xattr size, which are
>> both uint64_t, before trying to compute the effective number of bytes
>> to read or write.

Use CVE-2016-9104.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/9pfs/9p.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYFkuAAAoJEHb/MwWLVhi2fJwQAKH7JgohXVJh8HsReYgIUaBD
pa9ceIq+t77Ddd8uS0N7srXQnZCXTkM+PKxKLW2cvBtZviUvF0wYCuoUIR3dh66e
L9otE6tlEUQIMSXFuzWsUNhxQfQRYhdU1x9PuraPdcFSHE881xm9UWkg4L7PXcrL
m2YS9A2kxniOjVTEWgv/Wt7Ay/hbzKX++asyBq1MomGeKQooy279xgU+C9oly8mV
Zs6jdxpKcOElyC7qAW9Bn0jQ5FN10mWIBWX6C38MjjpGrtxKJS87gPpz/j2BKNTZ
+JoqjDimpbEvv7PXUXMBzLa19lkJmQS9pAvbnvcVyG7IcAwBCLLP0s0Uvldmd6vX
2vh/vSrQ2TTktZYxhEy0CMgn5+viynrF0nMZHs2Oc//XS2dsdk/EGsRb9J7q/Oma
UX1QGfJ/mPekHKhT8uprlpOb2IQKQX6w+GnTWexqWpbT5E/CCsuIHtiYtOxvMCAJ
qHpXE1apcW66f6lNpGu4W2KDQ+4QZoK8wk7Eo+s36QqYuPO4K0C1h/jJoGvqqcoj
byN7na2s/ZgGukxK4XOEbIpVxOuJhskf4OuXo1bz4pBhhAo8qtMf4w5bA9j5m0kJ
Q/V2lN9fiK3CewzS0kLCarid7HRBAHqlETG+5ULKZvfJOFu9Mu3FrGSZGKDYCnAP
lxrzglHL0JsqKlqwaY5U
=ja9u
-----END PGP SIGNATURE-----
