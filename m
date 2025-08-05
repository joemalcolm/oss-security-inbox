Received: (qmail 15822 invoked by uid 550); 5 Aug 2025 14:03:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19572 invoked from network); 5 Aug 2025 06:46:48 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Nicolas Malin <nmalin@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e1370190-2485-bbef-bd90-e86cf6e4bb5f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 05 Aug 2025 06:46:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-54466: Apache OFBiz: RCE Vulnerability in scrum plugin 

Severity: moderate=20

Affected versions:

- Apache OFBiz before 24.09.02

Description:

Improper Control of Generation of Code ('Code Injection') vulnerability lea=
ding to a possible RCE in Apache OFBiz=C2=A0scrum plugin.

This issue affects Apache OFBiz: before 24.09.02=C2=A0only when the=C2=A0sc=
rum plugin is used.

Even=C2=A0unauthenticated attackers can exploit this=C2=A0vulnerability.

Users are recommended to upgrade to version 24.09.02, which fixes the issue.

This issue is being tracked as OFBIZ-13276=20

Credit:

Teeramet Eakwilai <teeramet@datafarm.co.th> (finder)
Thanasin Luangpipat (finder)
Jarukit Auikritskul (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://ofbiz.apache.org/release-notes-24.09.02.html
https://https://issues.apache.org/jira/browse/OFBIZ-13276
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-54466
https://issues.apache.org/jira/browse/OFBIZ-13276

