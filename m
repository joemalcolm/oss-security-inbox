X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1736" "Monday" "29" "July" "2019" "11:55:25" "-0400" "Josh Thompson" "jfthomps@apache.org" "<2365364.TfTq3mqfPN@treebeard>" "43" "[oss-security] [CVE-2018-11772] Apache VCL SQL injection attack in privilege management" nil nil nil "7" "2019072915:55:25" "[oss-security] [CVE-2018-11772] Apache VCL SQL injection attack in privilege management" (number mark "U       jfthomps@apa Jul 29   43/1736  " thread-indent "\"[oss-security] [CVE-2018-11772] Apache VCL SQL injection attack in privilege management\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2018-11772] Apache VCL SQL injection attack in privilege management" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3375 invoked by uid 550); 29 Jul 2019 16:04:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30316 invoked from network); 29 Jul 2019 15:56:51 -0000
From: Josh Thompson <jfthomps@apache.org>
To: oss-security@lists.openwall.com
Date: Mon, 29 Jul 2019 11:55:25 -0400
Message-ID: <2365364.TfTq3mqfPN@treebeard>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] [CVE-2018-11772] Apache VCL SQL injection attack in privilege management

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

CVE-2018-11772: Apache VCL SQL injection attack in privilege management
 
Severity: Medium
 
Versions Affected: 2.1 through 2.5
 
Description: Apache VCL versions 2.1 through 2.5 do not properly validate 
cookie input when determining what node (if any) was previously selected in 
the privilege tree. The cookie data is then used in an SQL statement. This 
allows for an SQL injection attack. Access to this portion of a VCL system 
requires admin level rights.  Other layers of security seem to protect against 
malicious attack. However, all VCL systems running versions earlier than 2.5.1 
should be upgraded or patched. 
 
Mitigation: Upgrade to 2.5.1 or apply patches from https://vcl.apache.org/
security.html
 
Credit: This vulnerability was found and reported to the Apache VCL project by 
ADLab of Venustech.
 
CVE Released: July 29th, 2019
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEI0cOQm0VAdkhDARZSNnzl+fhyFkFAl0/Fu0ACgkQSNnzl+fh
yFk5yQ//Rn63ZYLD70vLNX9nTiXhVdCHe81prGpLG7JWUlSxt4zz7hYDT3pfgMcw
1A9Mjs2+tRTjRmSmb07MWhXokhT7TnF/UhikE//c0wjNSvMyrDktGkAWuS1oqc7C
kZxsVaPIBnR3irc3QHj1xYzQMYPHbVnGonXsiaU/VoYXu1Th7qH5XJnkw5xMpPHp
SI/uXtj9w9tgPSKZv43RvG/T/LGyzdJwujbRDywDDal2LkKSft/poZTN73l6WnSG
xLdFzl0DYb197kisdRMtZYx1IKhQ0JO62sxY8D2nJTGjcj+SH/gVRIvfIzA/qsbZ
eQz6ghoUMy3AGY4RfkoUS/HDrMayAWPiwiUWEolndwnbcrGYoOE1A/iD2iTbAsSc
SqvxrX6d9/U1s9Pnxh3D8lsU50//UVa5f3MY3dfcIWpZ7Ii2o2o5yDBzPj3ZW4up
DlTD6bmE9VRGidQGM5kky1RDKnXKYbRAeOVHKF/B0nh8dcg+iITvaqjVrmVFbMT/
+C9YM0sN7XJEtSmlJ/Za+ESgjaUbr+SqpL4XxisC6fU0WK9T2QC4aCCTjGdgw+CY
cEqmgfuiGhVdpMwZttOJJIqXT8WmSu+g/BF2xbn0fzbkV98YYYSCowRjiOvPA3hQ
ALJ1qRzhBf/ilxr/LnPyUoAbxo+OyETZ/chPxkp18PO6+M8DyVM=
=lR/Y
-----END PGP SIGNATURE-----



