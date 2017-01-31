X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1300" "Tuesday" "31" "January" "2017" "10:16:06" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<56fb00f92d6f4f429556c5b5424c6388@imshyb01.MITRE.ORG>" "33" "[oss-security] Re: mp3splt: NULL pointer dereference in splt_cue_export_to_file (cue.c)" nil nil nil "1" "2017013115:16:06" "[oss-security] Re: mp3splt: NULL pointer dereference in splt_cue_export_to_file (cue.c)" (number mark "U       cve-assign@m Jan 31   33/1300  " thread-indent "\"[oss-security] Re: mp3splt: NULL pointer dereference in splt_cue_export_to_file (cue.c)\"\n") "<9288234.IgCNv62ja1@arcadia>" ("<9288234.IgCNv62ja1@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28591 invoked by uid 550); 31 Jan 2017 15:16:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28544 invoked from network); 31 Jan 2017 15:16:18 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <9288234.IgCNv62ja1@arcadia>
Message-ID: <56fb00f92d6f4f429556c5b5424c6388@imshyb01.MITRE.ORG>
Date: Tue, 31 Jan 2017 10:16:06 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: mp3splt: NULL pointer dereference in splt_cue_export_to_file (cue.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2017/01/29/mp3splt-null-pointer-dereference-in-splt_cue_export_to_file-cue-c
> 
> AddressSanitizer: SEGV on unknown address 0x000000000000
> 
> splt_cue_export_to_file libmp3splt-0.9.2/src/cue.c:725

Use CVE-2017-5665.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYkKj0AAoJEHb/MwWLVhi2chAP/2AbNCqqgNqb+SVg15pzegAy
4kFc436rib1t18uFrm6gxIXHlQA0BLVgex8DISdUEXRr503uOzwsTjDDgwFHwbHl
E7PmvzcfyhnZ1sujcfbd87pm6qf9Jv8eAlNr1DZTYu0VkFH0HkAIO3dzACNlTDDE
9tXV2kMBEfyZfdXY8Fha4KZdG7NUCKUQqns1rdm2JGa583VLC984YiEvGPIv1xFf
zmxURxRDRkgNPmhPmfRun3rPJbx0dqRDJqlxOsRxL1W+Axb+ogSxAu79WpEn4jvN
2doXQnZujQudiusVkqK4QXfzmcQMncQIN0fOygsJIySI38iJYHh3wBzWwPNDhI3x
H9r/nakhrBRiE/29r+4fzQvyOU3iARvh04iJlikXLEFz8GrER4kg+8rUI4wIDpn/
Vum4k7o+N0nni1FcAUEaL2JtRRuj55ikWzG+BwqhBzmSW3TG4UinyRu35Yu16aTI
YHPjJQKPziVFtn2Q8TH/nPlnIcshc4zcqRD8m4B/7usRsFMJuSOStx1gA2SBanLG
2bPFXCXhZX/Hv4hHl8Yzw7HKI8W3dxWcNBtBXcsvx6XRuTHXUhTEc6m0fHRyLU+i
O7jzRx+7qaqP4UnYwOAH0J2HA9Pp9XY2UGW7K9BbSw4Z/6vzNC10QWU4lf0Cg7FC
myDnoBgiEOuCOOfErLrK
=Ip7W
-----END PGP SIGNATURE-----
