X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1364" "Wednesday" "9" "November" "2016" "00:29:14" "-0500" "Velmurugan Periasamy" "vel@apache.org" "<4468058A-9BC7-4EBE-91B0-2B1CD450693A@apache.org>" "39" "[oss-security] CVE update (CVE-2016-6815) - Fixed in Ranger 0.6.2" nil nil nil "11" "2016110905:29:14" "[oss-security] CVE update (CVE-2016-6815) - Fixed in Ranger 0.6.2" (number mark "U       vel@apache.o Nov  9   39/1364  " thread-indent "\"[oss-security] CVE update (CVE-2016-6815) - Fixed in Ranger 0.6.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26415 invoked by uid 550); 9 Nov 2016 05:29:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26391 invoked from network); 9 Nov 2016 05:29:31 -0000
From: Velmurugan Periasamy <vel@apache.org>
Content-Type: multipart/alternative; boundary="Apple-Mail=_5605A2FD-CD86-491B-B5BE-2BB100D6A0FA"
Date: Wed, 9 Nov 2016 00:29:14 -0500
Message-Id: <4468058A-9BC7-4EBE-91B0-2B1CD450693A@apache.org>
Cc: private <private@ranger.incubator.apache.org>,
 "<dev@ranger.incubator.apache.org>" <dev@ranger.incubator.apache.org>,
 user@ranger.incubator.apache.org,
 Velmurugan Periasamy <vel@apache.org>
To: security <security@apache.org>,
 oss-security@lists.openwall.com,
 bugtraq@securityfocus.com
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] CVE update (CVE-2016-6815) - Fixed in Ranger 0.6.2

--Apple-Mail=_5605A2FD-CD86-491B-B5BE-2BB100D6A0FA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello:

Here=E2=80=99s a CVE update for Ranger 0.6.2 release. Please see below deta=
ils.

Release details can be found at https://cwiki.apache.org/confluence/display=
/RANGER/0.6.2+Release+-+Apache+Ranger <https://cwiki.apache.org/confluence/=
display/RANGER/0.6.2+Release+-+Apache+Ranger>

Thank you,
Velmurugan Periasamy

---------------------------------------------------------------------------=
----------------------------
CVE-2016-6815: Apache Ranger user privilege vulnerability
---------------------------------------------------------------------------=
----------------------------
Severity: Normal
Vendor: The Apache Software Foundation
Versions Affected: All 0.5.x versions or 0.6.0/0.6.1 versions of Apache Ran=
ger
Users affected: All users of ranger policy admin tool
Description: Users with "keyadmin" role should not be allowed to change=20
password for users with "admin" role.
Fix detail: Added logic to validate the user privilege in the backend.
Mitigation: Users should upgrade to 0.6.2 or later version of Apache Ranger=
=20
with the fix.
---------------------------------------------------------------------------=
----------------------------



--Apple-Mail=_5605A2FD-CD86-491B-B5BE-2BB100D6A0FA--
