Received: (qmail 20140 invoked by uid 550); 15 Dec 2023 08:22:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17470 invoked from network); 15 Dec 2023 05:47:15 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Albumen Kevin <albumenj@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3e0759ba-1169-3f8b-226f-f26fd26a312e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 Dec 2023 05:47:29 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-29234: Bypass serialize checks in Apache Dubbo 

Severity: moderate

Affected versions:

- Apache Dubbo 3.1.0 through 3.1.10
- Apache Dubbo 3.2.0 through 3.2.4

Description:

A deserialization vulnerability existed when decode a=C2=A0malicious packag=
e.This issue affects Apache Dubbo: from 3.1.0 through 3.1.10, from 3.2.0 th=
rough 3.2.4.

Users are recommended to upgrade to the latest version, which fixes the iss=
ue.

Credit:

Bofei Chen, Lei Zhang, Guangliang Yang, Keke Lian and Xinyou Huang (finder)

References:

https://dubbo.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-29234

