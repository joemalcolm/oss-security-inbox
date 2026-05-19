Received: (qmail 29943 invoked by uid 550); 19 May 2026 16:20:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3375 invoked from network); 19 May 2026 08:48:03 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacopo Cappellato <jacopoc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b1d1ae79-efb5-e819-f33b-f8997c66cd0f@apache.org>
Content-Transfer-Encoding: 7bit
Date: Tue, 19 May 2026 08:35:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-45187: Apache OFBiz: Improper Authorization in Scheduled
 Job Creation Allows Low-Privileged Users to Submit System Jobs 

Severity: moderate 

Affected versions:

- Apache OFBiz before 24.09.06

Description:

Improper Authorization vulnerability in Apache OFBiz Webtools.

This issue affects Apache OFBiz: before 24.09.06.

Users are recommended to upgrade to version 24.09.06, which fixes the issue.

Credit:

Qiulin Deng (reporter)

References:

https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-45187

