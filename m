Received: (qmail 9782 invoked by uid 550); 19 May 2026 16:19:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13366 invoked from network); 19 May 2026 08:34:34 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacopo Cappellato <jacopoc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ad47543e-b55b-52a0-efd4-683f04fc5bc2@apache.org>
Content-Transfer-Encoding: 7bit
Date: Tue, 19 May 2026 08:31:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-31378: Apache OFBiz: JSON Attribute Override and URL
 Allowlist Bypass Leads to Remote Code Execution 

Severity: important 

Affected versions:

- Apache OFBiz before 24.09.06

Description:

Improper Input Validation vulnerability in Apache OFBiz.

This issue affects Apache OFBiz: before 24.09.06.

Users are recommended to upgrade to version 24.09.06, which fixes the issue.

Credit:

Sho Odagiri of GMO Cybersecurity by Ierae, Inc. (reporter)

References:

https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-31378

