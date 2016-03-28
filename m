X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1276" "Monday" "28" "March" "2016" "13:37:56" "-0400" "Velmurugan Periasamy" "vel@apache.org" "<D31EE434.14B879%vel@apache.org>" "35" "[oss-security] CVE update (CVE-2016-0735) - Fixed in Ranger 0.5.2" nil nil nil "3" "2016032817:37:56" "[oss-security] CVE update (CVE-2016-0735) - Fixed in Ranger 0.5.2" (number mark "U       vel@apache.o Mar 28   35/1276  " thread-indent "\"[oss-security] CVE update (CVE-2016-0735) - Fixed in Ranger 0.5.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19600 invoked by uid 550); 28 Mar 2016 18:06:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32638 invoked from network); 28 Mar 2016 17:38:15 -0000
User-Agent: Microsoft-MacOutlook/14.5.4.150722
Date: Mon, 28 Mar 2016 13:37:56 -0400
From: Velmurugan Periasamy <vel@apache.org>
To: "dev@ranger.incubator.apache.org" <dev@ranger.incubator.apache.org>,
	"user@ranger.incubator.apache.org" <user@ranger.incubator.apache.org>,
	<security@apache.org>,
	<oss-security@lists.openwall.com>,
	<bugtraq@securityfocus.com>
CC: Velmurugan Periasamy <vel@apache.org>,
	<private@ranger.incubator.apache.org>
Message-ID: <D31EE434.14B879%vel@apache.org>
Thread-Topic: CVE update (CVE-2016-0735) - Fixed in Ranger 0.5.2
Mime-version: 1.0
Content-type: multipart/alternative;
	boundary="B_3542017083_52007087"
Subject: [oss-security] CVE update (CVE-2016-0735) - Fixed in Ranger 0.5.2

--B_3542017083_52007087
Content-type: text/plain;
	charset="ISO-8859-1"
Content-transfer-encoding: quoted-printable

Hello:

Here=B9s a CVE update for Ranger 0.5.2 release. Please see below details.

Thank you,
Velmurugan Periasamy

--------------------------------------------------------------------------
CVE-2016-0735: Ranger policy excludes flags processing
--------------------------------------------------------------------------
Severity: Important
Vendor: The Apache Software Foundation
Versions Affected: 0.5.0/0.5.1 versions of Apache Ranger
Users affected: All users that use Ranger to authorize HBase, Hive, and
Knox.
Description: In some cases, presence of an exclude policy at a
resource-level can give the user access at its parent resource-level. For
example, if a hive policy excludes access for a user to a particular column,
then such a user would be able to alter the name of that table. Only a user
who has access at the table level should be able to do so. Due to this bug
however, the user is able to do the operation when an exclude policy is
present at the column-level for that table.
Mitigation: Users should upgrade to Ranger 0.5.2 version
--------------------------------------------------------------------------



--B_3542017083_52007087--


