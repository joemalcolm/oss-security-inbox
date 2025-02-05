Received: (qmail 3571 invoked by uid 550); 5 Feb 2025 17:20:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26363 invoked from network); 5 Feb 2025 17:05:20 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Benoit Tellier <btellier@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <05da3e26-eacc-7a33-67aa-0a90d3bd51ae@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 05 Feb 2025 17:05:10 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-37358: Apache James: denial of service through the use of
 IMAP literals 

Affected versions:

- Apache James server through 3.7.5
- Apache James server 3.8.0 through 3.8.1

Description:

Similarly to CVE-2024-34055, Apache James is vulnerable to denial of servic=
e through the abuse of IMAP literals from both authenticated and unauthenti=
cated users, which could be used to cause unbounded memory allocation and v=
ery long computations

Version 3.7.6 and 3.8.2 restrict such illegitimate use of IMAP literals.

Credit:

Xavier GUIMARD (reporter)
Benoit TELLIER (coordinator)

References:

https://james.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-37358

