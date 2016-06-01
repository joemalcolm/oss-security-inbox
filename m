X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1565" "Wednesday" "1" "June" "2016" "10:41:46" "-0400" "Velmurugan Periasamy" "vel@apache.org" "<AB91E013-C484-4EDD-98BB-0D6E4938C22A@apache.org>" "40" "[oss-security] CVE update (CVE-2016-2174) - Fixed in Ranger 0.5.3" "^Cc:" nil nil "6" "2016060114:41:46" "[oss-security] CVE update (CVE-2016-2174) - Fixed in Ranger 0.5.3" (number mark "U       vel@apache.o Jun  1   40/1565  " thread-indent "\"[oss-security] CVE update (CVE-2016-2174) - Fixed in Ranger 0.5.3\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11488 invoked by uid 550); 1 Jun 2016 14:53:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5448 invoked from network); 1 Jun 2016 14:42:05 -0000
Content-Type: multipart/alternative; boundary="Apple-Mail=_CE0A7601-DB18-43F0-BE05-419205EE85B2"
Message-Id: <AB91E013-C484-4EDD-98BB-0D6E4938C22A@apache.org>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Cc: dev@ranger.incubator.apache.org,
 user@ranger.incubator.apache.org,
 private@ranger.incubator.apache.org,
 vel@apache.org
Date: Wed, 1 Jun 2016 10:41:46 -0400
From: Velmurugan Periasamy <vel@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE update (CVE-2016-2174) - Fixed in Ranger 0.5.3
To: security@apache.org,
 oss-security@lists.openwall.com,
 bugtraq@securityfocus.com

--Apple-Mail=_CE0A7601-DB18-43F0-BE05-419205EE85B2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252

Hello:

Here=92s a CVE update for Ranger 0.5.3 release. Please see below details.=20

Release details can be found at https://cwiki.apache.org/confluence/display=
/RANGER/0.5.3+Release+-+Apache+Ranger

Thank you,
Velmurugan Periasamy

---------------------------------------------------------------------------=
--------------------
CVE-2016-2174: Apache Ranger sql injection vulnerability
---------------------------------------------------------------------------=
--------------------
Severity: Normal
Vendor: The Apache Software Foundation
Versions Affected: All versions of Apache Ranger from 0.5.0 (up to 0.5.3)
Users Affected: All admin users of ranger policy admin tool
Description: SQL Injection vulnerability in Audit > Access tab. When the us=
er=20
clicks an element from policyId row of the list, there is a call made under=
neath=20
with eventTime parameter which contains the vulnerability. Admin users can=
=20
send some arbitrary sql code to be executed along with eventTime parameter
 using /service/plugins/policies/eventTime url.
Fix details: Replaced native queries with JPA named queries
Mitigation: Users should upgrade to 0.5.3 version of Apache Ranger with the=
 fix.
Credit: Thanks to Mateusz Olejarka from SecuRing for reporting this issue.
---------------------------------------------------------------------------=
--------------------=

--Apple-Mail=_CE0A7601-DB18-43F0-BE05-419205EE85B2--
