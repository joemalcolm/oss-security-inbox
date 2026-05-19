Received: (qmail 32206 invoked by uid 550); 19 May 2026 16:20:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22149 invoked from network); 19 May 2026 08:52:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacopo Cappellato <jacopoc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b8bea6e1-f5c2-ffd2-b9ec-dc086c9fda1a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 08:36:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-46586: Apache OFBiz: Improper Validation in
 traverseContent Service Enables Authenticated Groovy Code Execution 

Severity: low=20

Affected versions:

- Apache OFBiz before 24.09.06

Description:

Improper Control of Generation of Code ('Code Injection'), Improper Neutral=
ization of Directives in Dynamically Evaluated Code ('Eval Injection') vuln=
erability in Apache OFBiz.

This issue affects Apache OFBiz: before 24.09.06.

Users are recommended to upgrade to version 24.09.06, which fixes the issue.

Credit:

lwd3c (finder)

References:

https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-46586

