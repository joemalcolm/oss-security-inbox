Received: (qmail 23890 invoked by uid 550); 19 Oct 2023 13:17:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24455 invoked from network); 19 Oct 2023 09:43:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5930e90b-0d47-b061-5ed5-aa3662ef7dea@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 19 Oct 2023 09:40:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-43622: Apache HTTP Server: DoS in HTTP/2 with initial
 windows size 0 

Severity: low

Affected versions:

- Apache HTTP Server 2.4.55 through 2.4.57

Description:

An attacker, opening a HTTP/2 connection with an initial window size of 0, =
was able to block handling of that connection indefinitely in Apache HTTP S=
erver. This could be used to exhaust worker resources in the server, simila=
r to the well known "slow loris" attack pattern.
This has been fixed in version 2.4.58, so that such connection are terminat=
ed properly after the configured connection timeout.

This issue affects Apache HTTP Server: from 2.4.55 through 2.4.57.

Users are recommended to upgrade to version 2.4.58, which fixes the issue.

Credit:

Prof. Sven Dietrich (City University of New York) (finder)
Isa Jafarov (City University of New York) (finder)
Prof. Heejo Lee (Korea University) (finder)
Choongin Lee (Korea University) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-43622

Timeline:

2023-09-15: reported

