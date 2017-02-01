X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2327" "Wednesday" "1" "February" "2017" "14:08:50" "-0500" "Velmurugan Periasamy" "vel@apache.org" "<630EBE51-95AF-46C9-B51F-AA3D1D584A10@apache.org>" "50" "[oss-security] CVE update - fixed in Apache Ranger 0.6.3" nil nil nil "2" "2017020119:08:50" "[oss-security] CVE update - fixed in Apache Ranger 0.6.3" (number mark "U       vel@apache.o Feb  1   50/2327  " thread-indent "\"[oss-security] CVE update - fixed in Apache Ranger 0.6.3\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3402 invoked by uid 550); 1 Feb 2017 19:09:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3334 invoked from network); 1 Feb 2017 19:09:05 -0000
From: Velmurugan Periasamy <vel@apache.org>
Content-Type: multipart/alternative; boundary="Apple-Mail=_3B88B459-9D4E-4C5C-B2E9-A05CE861717D"
Date: Wed, 1 Feb 2017 14:08:50 -0500
Message-Id: <630EBE51-95AF-46C9-B51F-AA3D1D584A10@apache.org>
Cc: private@ranger.apache.org,
 dev@ranger.apache.org,
 user@ranger.apache.org
To: security <security@apache.org>,
 oss-security@lists.openwall.com,
 bugtraq@securityfocus.com
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] CVE update - fixed in Apache Ranger 0.6.3

--Apple-Mail=_3B88B459-9D4E-4C5C-B2E9-A05CE861717D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hello:

Please find below details on CVEs fixed in Ranger 0.6.3 release. Release de=
tails can be found at https://cwiki.apache.org/confluence/display/RANGER/0.=
6.3+Release+-+Apache+Ranger <https://cwiki.apache.org/confluence/display/RA=
NGER/0.6.3+Release+-+Apache+Ranger>

Thank you,
Velmurugan Periasamy

---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
-----------------------------------------------------------
CVE-2016-8746: Apache Ranger path matching issue in policy evaluation
Severity: Normal
Vendor: The Apache Software Foundation
Versions Affected: 0.6.0/0.6.1/0.6.2 versions of Apache Ranger
Users affected: All users of ranger policy admin tool
Description: Ranger policy engine incorrectly matches paths in certain cond=
itions when policy does not contain wildcards and has recursion flag set to=
 true.
Fix detail: Fixed policy evaluation logic.
Mitigation: Users should upgrade to 0.6.3 or later version of Apache Ranger=
 with the fix.
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
-----------------------------------------------------------
CVE-2016-8751: Apache Ranger stored cross site scripting issue
Severity: Normal
Vendor: The Apache Software Foundation
Versions Affected: 0.5.x and 0.6.0/0.6.1/0.6.2 versions of Apache Ranger
Users affected: All users of ranger policy admin tool
Description: Apache Ranger was found to be vulnerable to a Stored Cross-Sit=
e Scripting in when entering custom policy conditions. Admin users can stor=
e=20
some arbitrary javascript code to be executed when normal users login and a=
ccess policies.
Fix detail: Added logic to sanitize the user input.
Mitigation: Users should upgrade to 0.6.3 or later version of Apache Ranger=
 with the fix.
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
-----------------------------------------------------------=

--Apple-Mail=_3B88B459-9D4E-4C5C-B2E9-A05CE861717D--
