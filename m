X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1509" "Friday" "9" "December" "2016" "00:15:55" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<0a28087cee8346dba6e874e403ccd471@imshyb02.MITRE.ORG>" "37" "[oss-security] Re: CVE request Qemu: char: use after free issue in char backend" nil nil nil "12" "2016120905:15:55" "[oss-security] Re: CVE request Qemu: char: use after free issue in char backend" (number mark "U       cve-assign@m Dec  9   37/1509  " thread-indent "\"[oss-security] Re: CVE request Qemu: char: use after free issue in char backend\"\n") "<alpine.LFD.2.20.1612081659560.28510@wniryva>" ("<alpine.LFD.2.20.1612081659560.28510@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28491 invoked by uid 550); 9 Dec 2016 05:16:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28470 invoked from network); 9 Dec 2016 05:16:07 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1612081659560.28510@wniryva>
Message-ID: <0a28087cee8346dba6e874e403ccd471@imshyb02.MITRE.ORG>
Date: Fri, 9 Dec 2016 00:15:55 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: char: use after free issue in char backend

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the 'chardev' backend support is vulnerable to
> a use after free issue. It could occur while hotplug and unplugging the device
> in the guest.
> 
> A guest user/process could use this flaw to crash a Qemu process on the host
> resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg05597.html
> http://git.qemu.org/?p=qemu.git;a=commit;h=a4afa548fc6dd9842ed86639b4d37d4d1c4ad480

Use CVE-2016-9923.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYSjxoAAoJEHb/MwWLVhi2dS4P/ilXRDRPZhWKKopE5w9P5lj9
4IY209xoJmQ85S891zCZvw3ety9GDpvAH1bi3uk49kqA9jeB9NYgJ+TD6ZyPEOoO
gItsGg7FX6QK65tnno8I+QUlKgHM91vy/KEi/o2FgQHc7lDP2RBq9Bt9REvYaqh3
QDh3IjaDieWy6T0Nkxh1I8u6+PeD+oBe6cNIFc8him7Vrb90SkT7Qe9/ZCG53MP8
vgrkJA3mTc4ShKGbdBix2T1HhjdV/KIEEgQ5BDjlqhW6xFXVxRhBBRbhPMayGXkW
1ulpwAU6q/i2e2GdydTxNV/RdOiKl1Zi3J3mScR8Lq3xjS0/Bw+cGyHfB9u/4kWm
4PSeyISGWs992CYHAr+JlzQ5MG7rDg52bcEqixeDzQrUb84EwGED6pU11vU/8fE1
t/fZaAS05FoS1mE16cDPyq0Floi95rmOn1H3TBHR9nKENvIJvFyhqYQmYXR43Jpl
k//RBNrF+Hb18AtFOh9azEf0gOnhBrtTnHv2queK2gOc+YkxOx9P8R0BnI+bZV0o
cWtEImu4CJR8EROlMuCWsI7lZ99Frw7N69oNv6AZo0rwyvxEhSLwp/QWR+scBEOx
4tJ+300qsapKR+fSQxojA9em6yZ1QpukfD3ACUn7F8WQeA2RyzGpSjLimydUGpp6
SHLCzbqDbd78s2ztkQam
=R+2A
-----END PGP SIGNATURE-----
