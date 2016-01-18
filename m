X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1237" "Monday" "18" "January" "2016" "13:49:59" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160118184959.5815B42E00B@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: Out-of-bounds Read in the OpenJpeg's opj_j2k_update_image_data and opj_tgt_reset function" nil nil nil "1" "2016011818:49:59" "[oss-security] Re: Out-of-bounds Read in the OpenJpeg's opj_j2k_update_image_data and opj_tgt_reset function" (number mark "U       cve-assign@m Jan 18   37/1237  " thread-indent "\"[oss-security] Re: Out-of-bounds Read in the OpenJpeg's opj_j2k_update_image_data and opj_tgt_reset function\"\n") "<3626D6E697A150459C44C0E5D8D8D00E0DBD531F@EX02.corp.qihoo.net>" ("<3626D6E697A150459C44C0E5D8D8D00E0DBD531F@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11340 invoked by uid 550); 18 Jan 2016 18:50:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11320 invoked from network); 18 Jan 2016 18:50:11 -0000
From: cve-assign@mitre.org
To: limingxing@360.cn
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <3626D6E697A150459C44C0E5D8D8D00E0DBD531F@EX02.corp.qihoo.net>
Message-Id: <20160118184959.5815B42E00B@smtpvbsrv1.mitre.org>
Date: Mon, 18 Jan 2016 13:49:59 -0500 (EST)
Subject: [oss-security] Re: Out-of-bounds Read in the OpenJpeg's opj_j2k_update_image_data and opj_tgt_reset function

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> opj_j2k_update_image_data
> AddressSanitizer: heap-buffer-overflow
> READ of size 4

Use CVE-2016-1923.


> opj_tgt_reset
> AddressSanitizer: SEGV on unknown address

Use CVE-2016-1924.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWnTLyAAoJEL54rhJi8gl5TpEP/2nGFLYuk37FXlViClyDElMB
c03MAy9ToQjW1iLnnRNoLn9nqO15yvxLu28l0hzXnag01v9xaOy4Z8TJWRvXqB3V
Jn4SU3xD7mnaHbzo0ObU1ywWvXaA3TVbFMmGu2Y4uFDW7/B/ZZFacYwAfT930mg/
pUWsO8i9QS+7wA899E9RjeewTtskyKXLXXlNaATJEl2hjG8flXUCdB3KN4dsTHl4
wNX+MWm9NwsSxyMG+3Uj4o6Ec5nhNeF5qqSYuPJtQQOcZZEHR1/sa7mq/7WO60Gx
ChRoKx2shlKxq8nUkMgDyKIbmXY2l6Lj9y9VyrwnOs7cimqh6F3MoZZ082JMjYX9
5NRVu3U7eFL3iDkDVKrUto3OiUHCDM7hyLEquFsU3DfcWEXGZC2DH27CjonuA/qV
VcKrlcB0WH1don4JoBiOh+2keu6Jt9W+W5PEDTjvu1BI2yqaZO+NCsjciNJ1Aiis
V/ly2mAp/tFpuAJCXWMGBKCCsyzgUcHnUBrKi2xHnY9sXzBUJ1ppO+n+ZI0anO7B
U70ekz7IvDK2L9YbxP673hTgCst2WM9o+c1GeCSacYL5gB0xMwXRQvKwYgDlVu4c
A1as0YquprR0pMpjeKlqyilnIRJAzK20tUIfUoSjqjopKZFWrcbInpWqjFUyoSoI
gcc50NDQB0Wxi2hfVDxk
=TVQP
-----END PGP SIGNATURE-----
