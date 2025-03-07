Received: (qmail 3238 invoked by uid 550); 7 Mar 2025 16:14:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9449 invoked from network); 7 Mar 2025 13:40:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <92ad8e61-6a27-b63c-b289-0e774bf1038c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 07 Mar 2025 13:39:51 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-26865: Apache OFBiz: Server-Side Template Injection
 affecting the ecommerce plugin leading to possible RCE 

Severity: important

Affected versions:

- Apache OFBiz 18.12.17 before 18.12.18

Description:

Improper Neutralization of Special Elements Used in a Template Engine vulne=
rability in Apache OFBiz.

This issue affects Apache OFBiz: from 18.12.17 before 18.12.18.=C2=A0=C2=A0

It's a regression between=C2=A018.12.17 and=C2=A018.12.18.
In case you use something like that, which is not recommended!
For security, only official releases should be used.

In other words, if you use 18.12.17 you are still safe.
The version 18.12.17 is not a affected.
But something between=C2=A018.12.17 and 18.12.18 is.

In that case, users are recommended to upgrade to version 18.12.18, which f=
ixes the issue.

Credit:

Matei "Mal" Badanoiu (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://issues.apache.org/jira/browse/OFBIZ-12594
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-26865

