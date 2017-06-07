X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2293" "Wednesday" "7" "June" "2017" "16:31:01" "-0400" "Velmurugan Periasamy" "vel@apache.org" "<ECBAEA0F-C443-4B00-8928-E8577E20001C@apache.org>" "44" "[oss-security] CVE update - fixed in Apache Ranger 0.7.1" "^Cc:" nil nil "6" "2017060720:31:01" "[oss-security] CVE update - fixed in Apache Ranger 0.7.1" (number mark "        vel@apache.o Jun  7   44/2293  " thread-indent "\"[oss-security] CVE update - fixed in Apache Ranger 0.7.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4042 invoked by uid 550); 7 Jun 2017 20:31:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3986 invoked from network); 7 Jun 2017 20:31:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Message-Id: <ECBAEA0F-C443-4B00-8928-E8577E20001C@apache.org>
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Cc: private@ranger.apache.org,
 dev@ranger.apache.org,
 user@ranger.apache.org
Date: Wed, 7 Jun 2017 16:31:01 -0400
From: Velmurugan Periasamy <vel@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE update - fixed in Apache Ranger 0.7.1
To: security <security@apache.org>,
 oss-security@lists.openwall.com,
 bugtraq@securityfocus.com

Hello:

Please find below details on CVEs fixed in Ranger 0.7.1 release. Release de=
tails can be found at https://cwiki.apache.org/confluence/display/RANGER/0.=
7.1+Release+-+Apache+Ranger=20

---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
-----------------------------------------------------------
CVE-2017-7676: Apache Ranger policy evaluation ignores characters after =E2=
=80=98*=E2=80=99 wildcard character
Severity: Critical
Vendor: The Apache Software Foundation
Versions Affected: 0.5.x/0.6.x/0.7.0 versions of Apache Ranger
Users affected: Environments that use Ranger policies with characters after=
 =E2=80=98*=E2=80=99 wildcard character =E2=80=93 like my*test, test*.txt
Description: Policy resource matcher ignores characters after =E2=80=98*=E2=
=80=99 wildcard character, which can result in unintended behavior.
Fix detail: Ranger policy resource matcher was updated to correctly handle =
wildcard matches.
Mitigation: Users should upgrade to 0.7.1 or later version of Apache Ranger=
 with the fix.
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
-----------------------------------------------------------
CVE-2017-7677: Apache Ranger Hive Authorizer should check for RWX permissio=
n when external location is specified
Severity: Critical
Vendor: The Apache Software Foundation
Versions Affected: 0.5.x/0.6.x/0.7.0 versions of Apache Ranger
Users affected: Environments that use external location for hive tables=20
Description: In environments that use external location for hive tables, Ap=
ache Ranger Hive Authorizer should check for RWX permission for the externa=
l location specified for create table.
Fix detail: Ranger Hive Authorizer was updated to correctly handle permissi=
on check with external location.
Mitigation: Users should upgrade to 0.7.1 or later version of Apache Ranger=
 with the fix.
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
-----------------------------------------------------------

Thank you,
Velmurugan Periasamy=
