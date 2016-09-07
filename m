X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2228" "Tuesday" "6" "September" "2016" "20:56:28" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160907005628.1FE726C547C@smtpvmsrv1.mitre.org>" "54" "[oss-security] Re: CVE Request Qemu: scsi: mptsas: invalid memory access while building configuration pages" nil nil nil "9" "2016090700:56:28" "[oss-security] Re: CVE Request Qemu: scsi: mptsas: invalid memory access while building configuration pages" (number mark "U       cve-assign@m Sep  6   54/2228  " thread-indent "\"[oss-security] Re: CVE Request Qemu: scsi: mptsas: invalid memory access while building configuration pages\"\n") "<alpine.LFD.2.20.1609061818400.23358@wniryva>" ("<alpine.LFD.2.20.1609061818400.23358@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9411 invoked by uid 550); 7 Sep 2016 00:56:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9393 invoked from network); 7 Sep 2016 00:56:39 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, vv474172261@gmail.com
In-Reply-To: <alpine.LFD.2.20.1609061818400.23358@wniryva>
Message-Id: <20160907005628.1FE726C547C@smtpvmsrv1.mitre.org>
Date: Tue,  6 Sep 2016 20:56:28 -0400 (EDT)
Subject: [oss-security] Re: CVE Request Qemu: scsi: mptsas: invalid memory access while building configuration pages

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick emulator(Qemu) built with the LSI SAS1068 Host Bus emulation support, is
> vulnerable to an invalid memory access issue. It could occur while building
> configuration page headers in 'mptsas_config_manufacturing_1'.
> 
> A privileged user inside guest could use this flaw to crash the Qemu process
> on the host, resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg04295.html

>> When LSI SAS1068 Host Bus emulator builds configuration page
>> headers, the format string used in 'mptsas_config_manufacturing_1'
>> was wrong. It could lead to an invalid memory access.

Use CVE-2016-7157.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/scsi/mptconfig.c but
that may be an expected place for a later update.


> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg04296.html

>> When LSI SAS1068 Host Bus emulator builds configuration page
>> headers, mptsas_config_pack() asserts to check returned size
>> value is within limit of 256 bytes. Fix that assert expression.

Our interpretation is that this assert issue is not an independently
relevant security problem, and does not need its own unique CVE ID.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXz2PsAAoJEHb/MwWLVhi2XXcP/1ZIu5eguJjtVoGHYTsE8IrY
+4CzVNeYbdHFzIunDooQkT062zPsRzzBGIVYng2cSrAw5segRhmt6cQ/jbG6UNPe
TPvsRpwlhm9qTpc0FSGpNW/lr4sWF8eIfJIvOmUcYp+j/MhlUlFFQbSL79AtABkr
vnKTyqbVf6iwRM2UB+ywbzoD004eeZaefuVN13vk5GTjhRkxoeSyd4Erpe/E1IzP
37Vsx0b1LdeNimkDJC0QfTxIHesRTcd9UkZq4No9Ztj4bBh0WIyhBZGS0W5FonUB
H1tRHi/zSJlZKHhqhfoszM4xQOst0yfcOqOhUueX92zThAvt8FIPZJq9v23tg9ib
9lYaX+1GzupRhqjbB+yDnUh8NLYhAQqpLAi/ryva1J3dsaVrbZyZwpwBZNjvUfG8
2Vgf0s+4WTcLvaanYKh+T/tSwtHIeaHEh+O65vvPKVDbox9FSjgOlHzr9ANUks0v
eoRz9telzBkKUOZMALOxIFRmB4z18a5il+MLsmV0cKM3jFSKrkx83d/L/t/3n7ub
oBD3dAEHri+nH/MiIGZUBKrN6r1cD6tylySTvLerMQpH7C7ovxOIpTEWv1CW8FYg
7OH6ZBGiH0QpjWI45vIVk1nrZ/H5krpPnmEnBJZIJ9v/H6nIVWoosP134GMAKjlL
xQG3c8wAuTo62bt7kHsQ
=yZzK
-----END PGP SIGNATURE-----
