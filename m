X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1382" "Monday" "22" "August" "2016" "10:42:09" "-0400" "Velmurugan Periasamy" "vel@apache.org" "<D3E08781.193C42%vel@apache.org>" "43" "[oss-security] CVE update (CVE-2016-5395) - Fixed in Apache Ranger 0.6.1" nil nil nil "8" "2016082214:42:09" "[oss-security] CVE update (CVE-2016-5395) - Fixed in Apache Ranger 0.6.1" (number mark "U       vel@apache.o Aug 22   43/1382  " thread-indent "\"[oss-security] CVE update (CVE-2016-5395) - Fixed in Apache Ranger 0.6.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20403 invoked by uid 550); 22 Aug 2016 14:42:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20385 invoked from network); 22 Aug 2016 14:42:30 -0000
User-Agent: Microsoft-MacOutlook/14.6.6.160626
Date: Mon, 22 Aug 2016 10:42:09 -0400
From: Velmurugan Periasamy <vel@apache.org>
To: "security@apache.org" <security@apache.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"bugtraq@securityfocus.com" <bugtraq@securityfocus.com>,
	<victor.hora@securusglobal.com>
CC: "dev@ranger.incubator.apache.org" <dev@ranger.incubator.apache.org>,
	"user@ranger.incubator.apache.org" <user@ranger.incubator.apache.org>,
	"private@ranger.incubator.apache.org" <private@ranger.incubator.apache.org>,
	Velmurugan Periasamy <vel@apache.org>
Message-ID: <D3E08781.193C42%vel@apache.org>
Thread-Topic: CVE update (CVE-2016-5395) - Fixed in Apache Ranger 0.6.1
Mime-version: 1.0
Content-type: multipart/alternative;
	boundary="B_3554707337_12476631"
Subject: [oss-security] CVE update (CVE-2016-5395) - Fixed in Apache Ranger 0.6.1

--B_3554707337_12476631
Content-type: text/plain;
	charset="ISO-8859-1"
Content-transfer-encoding: quoted-printable

Hello:

Here=B9s a CVE update for Ranger 0.6.1 release. Please see below details.

Release details can be found at
https://cwiki.apache.org/confluence/display/RANGER/0.6.1+Release+-+Apache+Ra
nger

Thank you,
Velmurugan Periasamy

----------------------------------------------------------------------------
-------------------
CVE-2016-5395: Apache Ranger Stored Cross Site Scripting vulnerability
----------------------------------------------------------------------------
-------------------
Severity: Normal=20
Vendor: The Apache Software Foundation
Versions Affected: All 0.5.x versions of Apache Ranger and version 0.6.0
Users Affected: All users of ranger policy admin tool
Description: Apache Ranger was found to be vulnerable to a
Stored Cross-Site Scripting in the create user functionality. Admin users
can
store some arbitrary javascript code to be executed when normal users login
and
access policies.=20
Fix details: Added logic to sanitize the user input
Mitigation: Users should upgrade to 0.6.1 or later version of Apache Ranger
with the fix.
Credit: Thanks to Victor Hora from Securus Global for reporting this issue.
----------------------------------------------------------------------------
-------------------



--B_3554707337_12476631--


