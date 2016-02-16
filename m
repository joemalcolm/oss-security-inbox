X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1971" "Tuesday" "16" "February" "2016" "13:16:17" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160216181617.3A8856C0774@smtpvmsrv1.mitre.org>" "46" "[oss-security] Re: CVE request Qemu: usb: null pointer dereference in remote NDIS control message handling" nil nil nil "2" "2016021618:16:17" "[oss-security] Re: CVE request Qemu: usb: null pointer dereference in remote NDIS control message handling" (number mark "U       cve-assign@m Feb 16   46/1971  " thread-indent "\"[oss-security] Re: CVE request Qemu: usb: null pointer dereference in remote NDIS control message handling\"\n") "<alpine.LFD.2.20.1602162208400.13313@wniryva>" ("<alpine.LFD.2.20.1602162208400.13313@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12059 invoked by uid 550); 16 Feb 2016 18:16:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12041 invoked from network); 16 Feb 2016 18:16:28 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, luodalongde@gmail.com
In-Reply-To: <alpine.LFD.2.20.1602162208400.13313@wniryva>
Message-Id: <20160216181617.3A8856C0774@smtpvmsrv1.mitre.org>
Date: Tue, 16 Feb 2016 13:16:17 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu: usb: null pointer dereference in remote NDIS control message handling

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the USB Net device emulation support is vulnerable to
> a NULL pointer dereference issue. It could occur while processing remote NDIS
> control message packets, when the USB configuration descriptor object is null.
> 
> A privileged user inside guest could use this flaw to crash the Qemu process
> instance resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-02/msg02553.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1302299

>> When processing remote NDIS control message packets, the USB Net
>> device emulator checks to see if the USB configuration descriptor
>> object is of RNDIS type(2). But it does not check if it is null,
>> which leads to a null dereference error. Add check to avoid it.

Use CVE-2016-2392.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/usb/dev-network.c but
that may be an expected place for a later update.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWw2azAAoJEL54rhJi8gl5P9kP/Rs4ZAE8ZXhvH4ToA3otZhpg
wAh8ottOV8upMXJbpvsAorv3GNZ8mhV54fda4PUACFFO7sBt6vC8TU+9jy8r9Ey2
4anpNmRyEh7Dhb5DayV5SAIst5scurFfjM6xRiLq2TYkYTDsgV/hwG3a5h1gQ9yn
VyrmPpSkQi5RFU74HWn0ZAfFa+/ohsClTEy6pWORNtznzd2Ie5Pzwunjda3Wofxc
cGr+xfh+pFUTIFhyWL1E6N1aoRaj7eYjB/b+23qKo6uAjgYYg9KB4WkbblUSMvOM
J5Tin3cbQI8E5EAe5N0oR5KKDYrmsSL6LxUnl+kctnxg19M35jSAWm6Mb9z7X/wn
b1q6PZ1/P1PegIheyaI8SwmJGJpB7s1uaanPPQEWuF9IdmDUoacBKcuSHZgHfBaJ
R4EQ7gpomp7+pEva4HxRuRPHFyrY8Cc9fZaPig8Oz3SwlhkcJEcREqgxzWEUE/K4
6gMdIPWQ3x/trX+Q+FbG0sdcPJ3kEXVVqdxcNAFk8A3oiWYptNAWVUWzKZQlk4tY
SbaMcp3T6ZBdv5d3v2jI6Au3ReZrJsfpslcYZ+57QXvaxGdkfa/eIe6irPWHUt7c
F2qVi29w7MN9KLzs4VYsu11Yu4dWFlfui4/BGJF0uFGn3V++nXnmA/5fPzmKcn2G
FJMS80TAffgwEurUNih2
=XXSy
-----END PGP SIGNATURE-----
