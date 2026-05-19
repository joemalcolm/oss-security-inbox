Received: (qmail 24440 invoked by uid 550); 19 May 2026 16:20:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28411 invoked from network); 19 May 2026 08:46:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacopo Cappellato <jacopoc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1bca9006-c3cc-6901-8ab2-94ba904565cd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 08:34:59 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-35086: Apache OFBiz: Authenticated Remote Code Execution
 via Unsafe Template Expansion in email services 

Severity: moderate=20

Affected versions:

- Apache OFBiz before 24.09.06

Description:

Improper Control of Generation of Code ('Code Injection') vulnerability in =
email services of Apache OFBiz.

This issue affects Apache OFBiz: before 24.09.06.

Users are recommended to upgrade to version 24.09.06, which fixes the issue.

Credit:

Hyunwoo Kim (@v4bel) (reporter)

References:

https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-35086

