X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1517" "Wednesday" "8" "February" "2017" "23:57:18" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<51799c78175246f8a0fa7a2cf4a579cb@imshyb02.MITRE.ORG>" "38" "[oss-security] Re: CVE Request: Nova-LXD incorrectly applied Neutron security group rules" nil nil nil "2" "2017020904:57:18" "[oss-security] Re: CVE Request: Nova-LXD incorrectly applied Neutron security group rules" (number mark "U       cve-assign@m Feb  8   38/1517  " thread-indent "\"[oss-security] Re: CVE Request: Nova-LXD incorrectly applied Neutron security group rules\"\n") "<ddadc77b-f3fe-1c7b-fd44-513b11d2f0cf@canonical.com>" ("<ddadc77b-f3fe-1c7b-fd44-513b11d2f0cf@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13451 invoked by uid 550); 9 Feb 2017 04:57:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13433 invoked from network); 9 Feb 2017 04:57:30 -0000
From: <cve-assign@mitre.org>
To: <tyhicks@canonical.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<james.page@ubuntu.com>, <security@ubuntu.com>
In-Reply-To: <ddadc77b-f3fe-1c7b-fd44-513b11d2f0cf@canonical.com>
Message-ID: <51799c78175246f8a0fa7a2cf4a579cb@imshyb02.MITRE.ORG>
Date: Wed, 8 Feb 2017 23:57:18 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: Nova-LXD incorrectly applied Neutron security group rules

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Neutron security group rules were not being applied to Nova-LXD
> instances due to improperly named veth pairs. This resulted in network
> traffic to/from external hosts being incorrectly allowed.
> 
> https://launchpad.net/bugs/1656847
> https://github.com/openstack/nova-lxd/commit/1b76cefb92081efa1e88cd8f330253f857028bd2

>> neutron security group rules not applied to nova-lxd containers

>> Ensure LXD veth host device is named correctly 

Use CVE-2017-5936.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYm/MjAAoJEHb/MwWLVhi2GfsP/11sv6xSUUNviPsH3inKCd0L
yb75QNWPa0PykxWpK5qz66Zp5Am9m334X80aXVl8coClws8NsTaTUg69i3XlmqVn
7wkq5l1osxF0cL1q9WVdjsCeMrhtej8Eu3OOyjCIcdcXRlEXYamNsNCumcl9t4ag
fUf5Zg0vDJGUG+JBAjjJV7RVYzOPV0R+U3kjVec/tm1XwHrpCnPQuA0YM3Nsb8f4
VnGaqjjQ+3Q5IGv913iWYFSSsYFNaSHonKhZsHyzSBq/J2w6Emc6IlKpckpld5on
p/ti9N9DaDMaA6FbAjB8iE1G1z7d78NtVYu38ldWN96VEme+QP0/GA2PgUbMtDo1
b6GT/hOkwYhoajRBUmhKZJy/JSGBIZzOB6WnZ7HRch73XZZzRIgoQIwqubWrZOoO
z3Y/68B1nyRdlUFx2dVg2F20WwVPFDfSsbddiEtPAKtjiEdPnqfp4hyFvtcFgZSJ
p1Vy0UbgPPYDOfnk4Jsqg9gUP2NKw4Hu/XuNVQmpKGz6pTMRuNIi5UPgEpwACMjI
3xvNZuzjVIpprJIv4khDTBYWTCNu6M0Jy9uK1xy4jhuu/Uni3cNCl8hUg644ijkE
S1m7Dsr5JwxAjgdhZYImJ1cV9eMJVC5NAJY3R/aDbQy5Orj6roVXQCwPgh9RKONC
wdqgZRIgubzEuTWAlACz
=jFpH
-----END PGP SIGNATURE-----
