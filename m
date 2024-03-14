Received: (qmail 13395 invoked by uid 550); 14 Mar 2024 20:49:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21796 invoked from network); 14 Mar 2024 19:43:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Colm O hEigeartaigh <coheigea@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <218dcbf7-b036-f88d-ba11-aa20521ccc09@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Mar 2024 19:47:13 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-28752: Apache CXF SSRF Vulnerability using the Aegis
 databinding 

Severity: important

Affected versions:

- Apache CXF before 4.0.4, 3.6.3, 3.5.8

Description:

A SSRF vulnerability using the Aegis DataBinding in versions of Apache CXF =
before 4.0.4, 3.6.3 and 3.5.8 allows an attacker to perform SSRF style atta=
cks on webservices that take at least one parameter of any type. Users of o=
ther data bindings (including the default databinding) are not impacted.

Credit:

Tobias S. Fink (finder)

References:

https://cxf.apache.org/security-advisories.data/CVE-2024-28752.txt
https://cxf.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-28752

