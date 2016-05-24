X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1875" "Tuesday" "24" "May" "2016" "09:45:54" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160524134554.0F51B6C0E37@smtpvmsrv1.mitre.org>" "45" "[oss-security] Re: CVE Request: Qemu: scsi: mptsas infinite loop in mptsas_fetch_requests" nil nil nil "5" "2016052413:45:54" "[oss-security] Re: CVE Request: Qemu: scsi: mptsas infinite loop in mptsas_fetch_requests" (number mark "U       cve-assign@m May 24   45/1875  " thread-indent "\"[oss-security] Re: CVE Request: Qemu: scsi: mptsas infinite loop in mptsas_fetch_requests\"\n") "<alpine.LFD.2.20.1605241505150.26750@wniryva>" ("<alpine.LFD.2.20.1605241505150.26750@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24012 invoked by uid 550); 24 May 2016 13:46:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23994 invoked from network); 24 May 2016 13:46:05 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liqiang6-s@360.cn
In-Reply-To: <alpine.LFD.2.20.1605241505150.26750@wniryva>
Message-Id: <20160524134554.0F51B6C0E37@smtpvmsrv1.mitre.org>
Date: Tue, 24 May 2016 09:45:54 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Qemu: scsi: mptsas infinite loop in mptsas_fetch_requests

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the LSI SAS1068 Host Bus Adapter emulation
> support is vulnerable to an infinite loop issue. It could occur while fetching
> new requests in mptsas_fetch_requests().
> 
> A privileged user inside guest could use this flaw to consume excessive host
> resources or crash the Qemu process resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2016-05/msg04027.html

>> The LSI SAS1068 Host Bus Adapter emulator in Qemu, periodically
>> looks for requests and fetches them. A loop doing that in
>> mptsas_fetch_requests() could run infinitely if 's->state' was
>> not operational. Move check to avoid such a loop.

Use CVE-2016-4964.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/scsi/mptsas.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXRFoUAAoJEHb/MwWLVhi2eREP/RhdpWO2TWtok4uMWzOC5tUE
w/MXH56dSTjvJUVVD7zD6LGNVaxXkjywiPNX49Pk4mibEKgXD1J1KnhsjpmroJes
3Lh1tU9ojMJYhSwQVTVvKakuo3zhDMm307nao8zLTyA1H44vAj0w8bYeqal3Q2+k
n86IVtv3AsjQQEWkFcAZbQBKw78Vkbg2DtYoBzy7Wp/7S99CyMy4EFQiWUI/2dVj
1uJdes2eAPawoPHI/1fKK9aGg3ZMslA6sw+vtBC9iQkYd99whBf0OiKgauJC5c8L
j0o7pedV+jwciDTAzFdTaM9yoVaoGhaH7QZY7NfBl3aWbZDaxJAZKicOWHFNXt0y
ePswqrHNhglshL0OwiZTlPktaz1o1iJxSjYEOYc1eY0X9y3peTg8+3gao+EAWDng
hbR2opWVdgjjy3Ob/tV1QSVASbZV+BSCavMUOcHf0ulQTHBRJOKXopGcY1Qmx8Ot
DhgDZINAhSSgrlBLvgfXYMlRKVm9MTZqfpjwQTr8kdHOpQljrHB00SJSAzI5uvlx
HdbTUonZvaTYSenkaK1D+L/8C+0hPZXrf7B1IyXh6QFILJAZ5+TYyzXxdajUoImg
jl1wPo5DS0i/wFO4Obt7phpf7MM2rabo1WDzolWiGU+glmVIuXFmEVa43d2eTBxz
ORKeSpt/xA4I3D98cYxe
=fzoY
-----END PGP SIGNATURE-----
