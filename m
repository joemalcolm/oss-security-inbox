X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1468" "Wednesday" "5" "August" "2015" "16:37:04" "-0400" "Velmurugan Periasamy" "vel@apache.org" "<D1E7EC30.9D53F%vel@apache.org>" "45" "[oss-security] CVEs fixed in Ranger 0.5" nil nil nil "8" "2015080520:37:04" "[oss-security] CVEs fixed in Ranger 0.5" (number mark "        vel@apache.o Aug  5   45/1468  " thread-indent "\"[oss-security] CVEs fixed in Ranger 0.5\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20468 invoked by uid 550); 5 Aug 2015 21:04:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11793 invoked from network); 5 Aug 2015 20:36:03 -0000
User-Agent: Microsoft-MacOutlook/14.5.1.150515
Message-ID: <D1E7EC30.9D53F%vel@apache.org>
Thread-Topic: CVEs fixed in Ranger 0.5
Mime-version: 1.0
Content-type: multipart/alternative;
	boundary="B_3521637430_35925425"
Date: Wed, 05 Aug 2015 16:37:04 -0400
From: Velmurugan Periasamy <vel@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVEs fixed in Ranger 0.5
To: "dev@ranger.incubator.apache.org" <dev@ranger.incubator.apache.org>,
	<user@ranger.incubator.apache.org>,
	<security@apache.org>,
	<oss-security@lists.openwall.com>,
	<bugtraq@securityfocus.com>

--B_3521637430_35925425
Content-type: text/plain;
	charset="ISO-8859-2"
Content-transfer-encoding: quoted-printable

Ranger Community:

Please see below details.

CVE-2015-0265: Apache Ranger code injection vulnerability
----------------------------------------------------------------------------
---
Severity: Important
Vendor: The Apache Software Foundation
Versions Affected: 0.4.0 version of Apache Ranger
Users affected: All admin users of ranger policy admin tool
Description: Unauthorized users can send some javascript code to be executed
in ranger policy admin tool admin sessions
Fix detail: Added logic to sanitize the user input
Mitigation: Users should upgrade to 0.5.0+ version of Apache Ranger with the
fix
Credit: Thanks to Jakub Ka=B3u=BFny from SecuRing for reporting this issue

CVE-2015-0266: Apache Ranger direct url access vulnerability
----------------------------------------------------------------------------
-----
Severity: Important
Vendor: The Apache Software Foundation
Versions Affected: 0.4.0 version of Apache Ranger
Users affected: All users of ranger policy admin tool
Description: Regular users can type in the URL of modules that are
accessible only to admin users
Fix detail: Added logic in the backend to verify user access
Mitigation: Users should upgrade to 0.5.0+ version of Apache Ranger with the
fix
Credit: Thanks to Jakub Ka=B3u=BFny from SecuRing for reporting this issue

Thank you,
Vel



--B_3521637430_35925425--


