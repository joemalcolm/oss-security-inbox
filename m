Received: (qmail 22491 invoked by uid 550); 19 May 2026 16:20:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3783 invoked from network); 19 May 2026 08:39:30 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacopo Cappellato <jacopoc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5160cefc-43d8-8af1-4bc3-80cd811ce205@apache.org>
Content-Transfer-Encoding: 7bit
Date: Tue, 19 May 2026 08:34:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-31910: Apache OFBiz: Improper Input Validation in UI
 Factory Classes Leads to SSRF and Blind File Access 

Severity: moderate 

Affected versions:

- Apache OFBiz before 24.09.06

Description:

Server-Side Request Forgery (SSRF) vulnerability in Apache OFBiz.

This issue affects Apache OFBiz: before 24.09.06.

Users are recommended to upgrade to version 24.09.06, which fixes the issue.

Credit:

Voyag3r-Security (reporter)

References:

https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-31910

