Received: (qmail 28191 invoked by uid 550); 4 Aug 2024 12:50:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11436 invoked from network); 4 Aug 2024 07:33:54 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4b3d4f2a-788b-102d-c93a-4159f858e94a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 04 Aug 2024 07:33:34 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-38856: Apache OFBiz: Unauthenticated endpoint could allow
 execution of screen rendering code 

Severity: important

Affected versions:

- Apache OFBiz through 18.12.14

Description:

Incorrect Authorization vulnerability in Apache OFBiz.

This issue affects Apache OFBiz: through 18.12.14.

Users are recommended to upgrade to version 18.12.15, which fixes the issue.

Unauthenticated endpoints could allow execution of screen rendering code of=
 screens if some preconditions are met (such as when the screen definitions=
 don't explicitly check user's permissions because they rely on the configu=
ration of their endpoints).

This issue is being tracked as OFBIZ-13128=20

Credit:

unam4 (finder)
ruozhi (finder)
m1sn0w (finder)
kuiplatain (finder)
PaperPen@Timeline Sec (finder)
RacerZ (finder)
e0mlja (finder)
Donghyun (finder)
4ra1n (finder)
godspeed (finder)
Hasib Vhora (finder)
pwnull (finder)
blckder02-YHLab (finder)
Xenc from SGLAB of Legendsec at Qi'anxin Group (finder)
Nicholas Zubrisky. (finder)
Y4tacker  (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-38856
https://issues.apache.org/jira/browse/OFBIZ-13128

