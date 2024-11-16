Received: (qmail 32007 invoked by uid 550); 16 Nov 2024 14:05:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19867 invoked from network); 16 Nov 2024 07:58:59 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b68dafaf-8650-5424-3e67-aaad8f5ceb7f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 16 Nov 2024 07:54:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-47208: Apache OFBiz: URLs allowing remote use of Groovy
 expressions, leading to RCE 

Severity: important

Affected versions:

- Apache OFBiz before 18.12.17

Description:

Server-Side Request Forgery (SSRF), Improper Control of Generation of Code =
('Code Injection') vulnerability in Apache OFBiz.

This issue affects Apache OFBiz: before 18.12.17.

Users are recommended to upgrade to version 18.12.17, which fixes the issue.

Credit:

=E5=AD=99=E7=9B=B8 (Sun Xiang) (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://issues.apache.org/jira/browse/OFBIZ-13158
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-47208

