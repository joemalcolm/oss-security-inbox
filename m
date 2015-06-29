X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["687" "Monday" "29" "June" "2015" "12:52:13" "-0400" "Giancarlo Canales" "gcanalesb@me.com" "<1E5ABE12-1C64-492D-AEA4-FAC8EE1B2151@me.com>" "27" "[oss-security] CVE request: Stack overflow in redcarpet's header_anchor" nil nil nil "6" "2015062916:52:13" "[oss-security] CVE request: Stack overflow in redcarpet's header_anchor" (number mark "        gcanalesb@me Jun 29   27/687   " thread-indent "\"[oss-security] CVE request: Stack overflow in redcarpet's header_anchor\"\n") "<9F15CD0F-3D8D-4987-BB87-BAE3D4F728C1@me.com>" ("<9F15CD0F-3D8D-4987-BB87-BAE3D4F728C1@me.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26603 invoked by uid 550); 29 Jun 2015 16:52:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26580 invoked from network); 29 Jun 2015 16:52:41 -0000
X-Proofpoint-Virus-Version: vendor=fsecure
 engine=2.50.10432:5.14.151,1.0.33,0.0.0000
 definitions=2015-06-29_03:2015-06-29,2015-06-29,1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=7.0.1-1412110000 definitions=main-1506290270
Content-type: text/plain; charset=us-ascii
MIME-version: 1.0 (1.0)
X-Mailer: iPhone Mail (12F70)
In-reply-to: <9F15CD0F-3D8D-4987-BB87-BAE3D4F728C1@me.com>
Content-transfer-encoding: quoted-printable
Message-id: <1E5ABE12-1C64-492D-AEA4-FAC8EE1B2151@me.com>
References: <9F15CD0F-3D8D-4987-BB87-BAE3D4F728C1@me.com>
Cc: "cve-assign@mitre.org" <cve-assign@mitre.org>
Date: Mon, 29 Jun 2015 12:52:13 -0400
From: Giancarlo Canales <gcanalesb@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Stack overflow in redcarpet's header_anchor
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

After examining the redcarpet source code, I noticed that header_anchor use=
s variable length arrays (VLA) without any range checking.

This is conducive to a stack overflow, followed by the potential for arbitr=
ary code execution.

Redcarpet is a Markdown parser library.

I'm requesting a CVE number for this vulnerability.

Title: Stack overflow in redcarpet's header_anchor
Products: redcarpet
Affects: v3.3.0 - v3.3.1
Type: Stack overflow
First CVE request: Yes
Fixed: Yes, v3.3.2

Fix:
https://github.com/vmg/redcarpet/commit/2cee777c1e5babe8a1e2683d31ea75cc4af=
e55fb

Changelog:
https://github.com/vmg/redcarpet/blob/master/CHANGELOG.md

Thanks,=20

Giancarlo Canales Barreto=
