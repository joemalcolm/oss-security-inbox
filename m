X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1577" "Monday" "9" "January" "2017" "22:58:27" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<cd9f00addf1c43088cde0881b4b8560b@imshyb02.MITRE.ORG>" "42" "[oss-security] Re: ark vulnerability: need CVE" nil nil nil "1" "2017011003:58:27" "[oss-security] Re: ark vulnerability: need CVE" (number mark "U       cve-assign@m Jan  9   42/1577  " thread-indent "\"[oss-security] Re: ark vulnerability: need CVE\"\n") "<1493422.koq1c4PBay@xps>" ("<1493422.koq1c4PBay@xps>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3385 invoked by uid 550); 10 Jan 2017 03:58:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3362 invoked from network); 10 Jan 2017 03:58:39 -0000
From: <cve-assign@mitre.org>
To: <aacid@kde.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<security@kde.org>
In-Reply-To: <1493422.koq1c4PBay@xps>
Message-ID: <cd9f00addf1c43088cde0881b4b8560b@imshyb02.MITRE.ORG>
Date: Mon, 9 Jan 2017 22:58:27 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: ark vulnerability: need CVE

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The problem is that the "Open" functionality of ark would run shell scripts,
> this is quite unexpected.
> 
> The title for the advisory we're preparing is
>   Ark: unintended execution of scripts and executable files
> 
> https://cgit.kde.org/ark.git/commit/?id=82fdfd24d46966a117fa625b68784735a40f9065

>> Stop running executables when opening urls
>> This is a security risk because it's not clear when an entry in an archive is an executable.
>> BUG: 374572
>> FIXED-IN: 16.12.1 
>> 
>> part/part.cpp

Use CVE-2017-5330.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYdFt9AAoJEHb/MwWLVhi2O1cP/j2jfRgKsZmXXe0W8jJ6E7Kv
cIWbn9rinS+2a+EpZFPBapmQlLEgG9ONtne7HxEZcotGaG8R3Mxe10S02tsfs2JO
CV8gAddvtB5KPAhRwca+A67ZyTQNT9Dci7tirO2ybyEFd5yeUw+QDSSJ86ccr2PZ
HxKbHvK6u0F1LTU9mvdZA7pEdK/SJkNirX3xZN8O+EFr0IAi2ZY/ddOB2XRg+SXI
37/sLuoLytE0XzZpzQd88xkA/zh7U7BNwmIoDO3Lkl4AnbJVg2Onq/UsjNomZL2o
HJcKrMmN1iexeIUHbu7Td8S9gZO4cOXstPlhtyczR4gFcck3aS1XJqGDRXJPskGW
dSgVQIVzjGEDoTGTmtj2R1aBKl2D4clQuI6XTlnxoCFnJVIBvTsJYJrMpu2GwM1i
zzHPkCPQrkP1o5Q7D6JY8QgHyeUFxYDgYZSYfwY9EQb2sApryLu1sWJU508PlRpF
Db8TqayWIv43/W7A3+GYvqJgV2W5aqmC6g3K4twPgf7hutkClXdAKFScfrnPj6Vl
fLEdkClmCOPnTzxf1p/+T0wdSoZpSXeEdHDqp114K+sUm2E40AngsiUKwLpOsVq/
eYGRsiimFoFD3Q5y1W6qMkx3bxUohBVGm4kLwTtTEyS9Wxj6BGbNif4rmoImqAkq
QL8FSCznwEMU4rixmDum
=tetf
-----END PGP SIGNATURE-----
