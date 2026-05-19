Received: (qmail 14026 invoked by uid 550); 19 May 2026 16:19:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1413 invoked from network); 19 May 2026 08:38:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacopo Cappellato <jacopoc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <baaa9713-4cab-dc58-3c1b-2536f7d55b87@apache.org>
Content-Transfer-Encoding: 7bit
Date: Tue, 19 May 2026 08:32:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-31387: Apache OFBiz: Cookie Manipulation Allows
 Authenticated JWT Forgery and Account Impersonation 

Severity: important 

Affected versions:

- Apache OFBiz before 24.09.06

Description:

Improper Authentication vulnerability in Apache OFBiz.

This issue affects Apache OFBiz: before 24.09.06.

Users are recommended to upgrade to version 24.09.06, which fixes the issue.

Credit:

Sho Odagiri of GMO Cybersecurity by Ierae, Inc. (reporter)

References:

https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-31387

