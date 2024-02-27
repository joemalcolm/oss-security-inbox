Received: (qmail 4060 invoked by uid 550); 27 Feb 2024 13:38:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13649 invoked from network); 27 Feb 2024 12:25:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Benoit Tellier <btellier@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <caae87f6-2f72-9701-fc2a-97e716c5edbd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 27 Feb 2024 12:28:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-51747: SMTP smuggling in Apache James 

Severity: important

Affected versions:

- Apache James server through 3.7.4
- Apache James server 3.8 through 3.8.0

Description:

Apache James prior to versions 3.8.1 and 3.7.5 is vulnerable to SMTP smuggl=
ing.

A lenient behaviour in line delimiter handling might create a difference of=
 interpretation between the sender and the receiver which can be exploited =
by an attacker to forge an SMTP envelop, allowing for instance to bypass SP=
F checks.

The patch implies enforcement of CRLF as a line delimiter as part of the DA=
TA transaction.

We recommend James users to upgrade to non vulnerable versions.

Credit:

Benoit TELLIER (coordinator)

References:

https://sec-consult.com/blog/detail/smtp-smuggling-spoofing-e-mails-worldwi=
de/
https://postfix.org/smtp-smuggling.html
https://james.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-51747

