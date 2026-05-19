Received: (qmail 11310 invoked by uid 550); 19 May 2026 16:19:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14308 invoked from network); 19 May 2026 08:34:57 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacopo Cappellato <jacopoc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f5257546-fd92-0833-aae8-12f6da997e4d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 08:31:23 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-31379: Apache OFBiz: Path Traversal and File Upload
 Validation Bypass Leading to Arbitrary File Write, Stored XSS and RCE in
 Catalog Manager 

Severity: moderate=20

Affected versions:

- Apache OFBiz before 24.09.06

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Sc=
ripting'), Improper Limitation of a Pathname to a Restricted Directory ('Pa=
th Traversal'), Improper Control of Generation of Code ('Code Injection') v=
ulnerability in Apache OFBiz.

This issue affects Apache OFBiz: before 24.09.06.

Users are recommended to upgrade to version 24.09.06, which fixes the issue.

Credit:

Sho Odagiri of GMO Cybersecurity by Ierae, Inc. (reporter)
Emily Bishop of 992labs (reporter)

References:

https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-31379

