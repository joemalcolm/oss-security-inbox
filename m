Received: (qmail 30606 invoked by uid 550); 16 Nov 2024 14:05:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1670 invoked from network); 16 Nov 2024 07:55:28 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c103abf0-f0ae-02eb-b089-3ac0fa5efd55@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 16 Nov 2024 07:54:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-48962: Apache OFBiz: Bypass SameSite restrictions with
 target redirection using URL parameters (SSTI and CSRF leading to RCE) 

Affected versions:

- Apache OFBiz before 18.12.17

Description:

Improper Control of Generation of Code ('Code Injection'), Cross-Site Reque=
st Forgery (CSRF), : Improper Neutralization of Special Elements Used in a =
Template Engine vulnerability in Apache OFBiz.

This issue affects Apache OFBiz: before 18.12.17.

Users are recommended to upgrade to version 18.12.17, which fixes the issue.

Credit:

Sebastiano Sartor <s@sebsrt.xyz> (finder)
Ryan <marimoo.eth@gmail.com> (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://issues.apache.org/jira/browse/OFBIZ-13162
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-48962

