Received: (qmail 20382 invoked by uid 550); 1 Mar 2024 22:41:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17542 invoked from network); 1 Mar 2024 10:38:54 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <dfd84788-4844-1bd6-1546-4eec5c844e42@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 01 Mar 2024 10:42:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-27140: Apache Archiva: reflected XSS 

Severity: moderate

Affected versions:

- Apache Archiva 2.0.0 or later

Description:

** UNSUPPORTED WHEN ASSIGNED **

Improper Neutralization of Input During Web Page Generation ('Cross-site Sc=
ripting') vulnerability in Apache Archiva.

This issue affects Apache Archiva: from 2.0.0.

As this project is retired, we do not plan to release a version that fixes =
this issue. Users are recommended to find an alternative or restrict access=
 to the instance to trusted users. Alternatively, you could configure a HTT=
P proxy in front of your Archiva instance to only forward requests that do =
not have malicious characters in the URL.

NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

Credit:

sandr0 / Sandro Bauer (sandr0.xyz) (finder)
BTullis / Ben Tullis (wikimedia.org) (finder)
sbassett / Scott Bassett (wikimedia.org) (finder)
L0ne1y (finder)

References:

https://attic.apache.org/projects/archiva.html
https://www.cve.org/CVERecord?id=3DCVE-2024-27140

