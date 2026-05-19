Received: (qmail 5534 invoked by uid 550); 19 May 2026 16:18:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9907 invoked from network); 19 May 2026 08:34:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacopo Cappellato <jacopoc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e4aac8f9-ed32-6891-1ba6-f4cd0dfe2504@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 08:30:38 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-29226: Apache OFBiz: Low-Privilege SSRF in Content
 Component 

Severity: moderate=20

Affected versions:

- Apache OFBiz before 24.09.06

Description:

Server-Side Request Forgery (SSRF) vulnerability in Apache OFBiz via Conten=
t component operations.

This issue affects Apache OFBiz: before 24.09.06.

Users are recommended to upgrade to version 24.09.06, which fixes the issue.

Credit:

Lidor B / thisis0xczar of Novee Security (reporter)
Sho Odagiri of GMO Cybersecurity by Ierae, Inc. (reporter)
duanjinshi@163.com (reporter)

References:

https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-29226

