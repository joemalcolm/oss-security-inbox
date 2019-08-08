X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1712" "Thursday" "8" "August" "2019" "12:15:54" "-0400" "Velmurugan Periasamy" "vel@apache.org" "<09D4A543-35B4-4416-A0E3-CF88CFDFDE12@apache.org>" "35" "[oss-security] CVE update - fixed in Apache Ranger 2.0.0" nil nil nil "8" "2019080816:15:54" "[oss-security] CVE update - fixed in Apache Ranger 2.0.0" (number mark "U       vel@apache.o Aug  8   35/1712  " thread-indent "\"[oss-security] CVE update - fixed in Apache Ranger 2.0.0\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE update - fixed in Apache Ranger 2.0.0" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25856 invoked by uid 550); 8 Aug 2019 16:16:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25819 invoked from network); 8 Aug 2019 16:16:10 -0000
From: Velmurugan Periasamy <vel@apache.org>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <09D4A543-35B4-4416-A0E3-CF88CFDFDE12@apache.org>
Date: Thu, 8 Aug 2019 12:15:54 -0400
Cc: private@ranger.apache.org,
 dev@ranger.apache.org,
 user@ranger.apache.org
To: security@apache.org,
 oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.11)
Subject: [oss-security] CVE update - fixed in Apache Ranger 2.0.0

Hello:

Please find below details on CVE fixed in Ranger 2.0.0 release. Release det=
ails can be found at https://cwiki.apache.org/confluence/display/RANGER/2.0=
.0+Release+-+Apache+Ranger

=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94
CVE-2019-12397: Apache Ranger cross site scripting issue
Severity: Normal
Vendor: The Apache Software Foundation
Versions Affected: 0.7.0 to 1.2.0 versions of Apache Ranger, prior to 2.0.0
Users affected: All users of ranger policy admin tool
Description: Apache Ranger was found to be vulnerable to a Cross-Site Scrip=
ting in policy import functionality.=20
Fix detail: Added logic to sanitize the user input.
Mitigation: Users should upgrade to 2.0.0 or later version of Apache Ranger=
 with the fix.
Credit: Jan Kaszycki from STM Solutions
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94

Thank you,
Velmurugan Periasamy

