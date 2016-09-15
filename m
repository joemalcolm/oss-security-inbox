X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1201" "Thursday" "15" "September" "2016" "01:37:03" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160915053703.A0B3572E007@smtpvbsrv1.mitre.org>" "33" "[oss-security] Re: CVE request -libdwarf 20160613 heap-buffer-overflow" nil nil nil "9" "2016091505:37:03" "[oss-security] Re: CVE request -libdwarf 20160613 heap-buffer-overflow" (number mark "U       cve-assign@m Sep 15   33/1201  " thread-indent "\"[oss-security] Re: CVE request -libdwarf 20160613 heap-buffer-overflow\"\n") "<53319709-5162-e3c0-e9c0-f50acc148929@724safe.com>" ("<53319709-5162-e3c0-e9c0-f50acc148929@724safe.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15683 invoked by uid 550); 15 Sep 2016 05:37:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15662 invoked from network); 15 Sep 2016 05:37:15 -0000
From: cve-assign@mitre.org
To: vul@724safe.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <53319709-5162-e3c0-e9c0-f50acc148929@724safe.com>
Message-Id: <20160915053703.A0B3572E007@smtpvbsrv1.mitre.org>
Date: Thu, 15 Sep 2016 01:37:03 -0400 (EDT)
Subject: [oss-security] Re: CVE request -libdwarf 20160613 heap-buffer-overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> AddressSanitizer: heap-buffer-overflow
> READ of size 4
> 
> _dwarf_read_loc_section
> dwarf_loc.c:919

Use CVE-2016-7410 for this buffer over-read.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX2jLpAAoJEHb/MwWLVhi2p78P/Radj5UkaF2fCmkMqPEqMn+R
Q7X/vpsabO3Yj7GZkQdcEB1RdiXA3Eqo+EhFXrIZzAinTDmKrWsgFiyXcM3C9R0f
9mhY9RTd/w3Yi3c4iP2wX41O41rCwyaKXkO310iwTGdEqba9KKiIirUPeeFcuV9N
eyxKbuV4X3aHl0EW5HUy37f/XXBIBNqt8LCFybq+3ZszXRhY+HfIKTx+h5iOv2Qk
sx7dgEBsz8roNN+9sue+cH1H6xOkRB/wg3Tcf1O3s6ChmBJ86jwDpBmM8CutsJzn
0mSLzdJt3sBx8romxS/XCb7I9O63LMDq8/iWRNOAgAltPOCwpvDMJZg+euYZx8en
Gexabth4rZ1SCVNX+bazY0HhVh0FKJRhL5UqK60+8jKFFSWxYGXetrAHjpIXRX0i
v3mizGwr8GTY4S8/P1djCt8BFMhIcYh3iDgq9Hmxr300apJF9H8/7vCZ5UmtRxsH
mHlgQcN4lT8qf7nI4fNnPFRMlPZlfpAkyC+M6bZT6Zo0oKF44pfRf1z4A4DTbitd
HmOlTiGHJ+f85ISI9SoUYy4R4sVO2BXBQ0hw1xAcY0CVoSPeZXF7pTQCGROMEpxJ
Yn/jRFryI7WRhdix4doqu+DvjW9WmEJZz8yqc6YZD25JkyaeCwdpJb9LpXue60pF
3eIKvk8nL7JiAKRPstES
=fJku
-----END PGP SIGNATURE-----
