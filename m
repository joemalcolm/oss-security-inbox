Received: (qmail 23853 invoked by uid 550); 19 May 2026 16:20:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28308 invoked from network); 19 May 2026 08:45:57 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacopo Cappellato <jacopoc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3f692bd3-fc1e-2210-64df-a9989e415620@apache.org>
Content-Transfer-Encoding: 7bit
Date: Tue, 19 May 2026 08:34:27 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-31986: Apache OFBiz: Unauthenticated RCE via Default JWT
 Signing Key and Widget Template Injection 

Severity: moderate 

Affected versions:

- Apache OFBiz before 24.09.06

Description:

Use of Hard-coded Cryptographic Key vulnerability in Apache OFBiz.

This issue affects Apache OFBiz: before 24.09.06.

Users are recommended to upgrade to version 24.09.06, which fixes the issue.

Credit:

Lidor B / thisis0xczar of Novee Security (reporter)

References:

https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-31986

