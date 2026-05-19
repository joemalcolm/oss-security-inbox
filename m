Received: (qmail 19839 invoked by uid 550); 19 May 2026 16:19:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15728 invoked from network); 19 May 2026 08:42:28 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacopo Cappellato <jacopoc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <aa0fcdd6-71c3-ee01-dcd0-f474330145b0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 08:33:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-31906: Apache OFBiz: Reflected XSS via Improper HTML
 Attribute Escaping in Layered-Modal Dialog Parameters 

Severity: moderate=20

Affected versions:

- Apache OFBiz before 24.09.06

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Sc=
ripting') vulnerability in Apache OFBiz.

This issue affects Apache OFBiz: before 24.09.06.

Users are recommended to upgrade to version 24.09.06, which fixes the issue.

Credit:

Sho Odagiri of GMO Cybersecurity by Ierae, Inc. (reporter)

References:

https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-31906

