X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1660" "Friday" "18" "November" "2016" "19:00:55" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<5ec374c5124440d5ae0dea13583cddab@imshyb02.MITRE.ORG>" "41" "[oss-security] Re: CVE Request: libtiff: Out-of-bounds Write memcpy and less bound check in tiff2pdf" nil nil nil "11" "2016111900:00:55" "[oss-security] Re: CVE Request: libtiff: Out-of-bounds Write memcpy and less bound check in tiff2pdf" (number mark "U       cve-assign@m Nov 18   41/1660  " thread-indent "\"[oss-security] Re: CVE Request: libtiff: Out-of-bounds Write memcpy and less bound check in tiff2pdf\"\n") "<46B49944-E27F-410E-A3BE-93A46F51B001@topsec.com.cn>" ("<46B49944-E27F-410E-A3BE-93A46F51B001@topsec.com.cn>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13360 invoked by uid 550); 19 Nov 2016 00:01:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13342 invoked from network); 19 Nov 2016 00:01:06 -0000
From: <cve-assign@mitre.org>
To: <chenqin@topsec.com.cn>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <46B49944-E27F-410E-A3BE-93A46F51B001@topsec.com.cn>
Message-ID: <5ec374c5124440d5ae0dea13583cddab@imshyb02.MITRE.ORG>
Date: Fri, 18 Nov 2016 19:00:55 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: libtiff: Out-of-bounds Write memcpy and less bound check in tiff2pdf

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://bugzilla.maptools.org/show_bug.cgi?id=2579
> 
> tools/tiff2pdf.c: fix read -largely- outsize of buffer in
>        t2p_readwrite_pdf_image_tile(), causing crash, when reading a
>        JPEG compressed image with TIFFTAG_JPEGTABLES length being one.
>        Reported as MSVR 35101 by Axel Souchet and Vishal Chauhan from
>        the MSRC Vulnerabilities & Mitigations team.

>> Out-of-bounds Write Caused by memcpy and no bound check.

>> will cause illegal write. An attacker may control the write address and/or
>> value
>> to result in denial-of-service or command execution.

Use CVE-2016-9453.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYL5R+AAoJEHb/MwWLVhi2Za4P/ioEFjcWkhT7AqaXUZ+G5dZ3
M9grgWYnmkBsGwqWD56LCNLjDcD4OexKOeogFMBbJkVFaMnyX4eq/uddNlIq2dne
9TiSm2+X4HKlbw4qiruUx3HbKsgUvQmMrowfGVA97KanT5bCIa/bt94G3/e1lLwl
FZJ+qlooyFf8VBpR+3UWROPNSbD/m6DgRLDK0yDBxg0J2pKUJHJAu75Ql5BGXkC3
70yiP9r5Rz9MkrIrTjzRGBidG/aSlrzaPhDk88bNv7edFwUT2EJfndtLLINV3CNl
0eLCNX3MDb7jwCzw3DtRUPEmuqcBiAUdY/mU0V1IuO9+ipWJl959ELzdgpsFcJ9C
4SHCOYS3XHNJeJOaQJ9nJJUmWF6DgK2xhYfwTXeifQgaBdN2h0S8DByTQU14oqVw
5wJCXbGhWvbPq4NGDVG8ATIkgh+K1zoKn/06C/W4lyEgEc8w17xE2GDFyOglrTYt
EYQZg5qeES940DU+khUOeSp+YOb/m3UCaUmJd/DKOcOofdoUZUVakLXfBMyKZ9rp
VRYS8k80wwhM5KZWuiGpCOAVVW+BHFCBYgSmXZ+mA6fVP8fqooUy5G+7mjiMidzl
uyip79HBywTkawVnAEQS5RHgdNOvVIwS6j8rbQN+M5dTseTPdoifRsbJmKLlWEfl
u/1E3rv67yYtw4XU/Rr7
=Np2d
-----END PGP SIGNATURE-----
