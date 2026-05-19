Received: (qmail 19501 invoked by uid 550); 19 May 2026 16:19:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3541 invoked from network); 19 May 2026 08:39:22 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacopo Cappellato <jacopoc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5b5e2633-8ab8-b15f-3e60-0f9412186a38@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 08:32:29 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-31388: Apache OFBiz: Cross-Tenant Data Exposure via
 Program Export Feature 

Severity: moderate=20

Affected versions:

- Apache OFBiz before 24.09.06

Description:

Improper Access Control vulnerability in Apache OFBiz in multi-tenant deplo=
yments.

This issue affects Apache OFBiz: before 24.09.06.

Users are recommended to upgrade to version 24.09.06, which fixes the issue.

Credit:

Krishna Uprit (reporter)

References:

https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-31388

