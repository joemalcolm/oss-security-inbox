Received: (qmail 17762 invoked by uid 550); 27 Feb 2024 16:12:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14317 invoked from network); 27 Feb 2024 16:11:32 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Benoit Tellier <btellier@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e1d6b22f-d4e6-ed7e-d161-ca7b54e85e4f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 27 Feb 2024 16:14:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-21742: Apache James Mime4J: Mime4J DOM header injection 

Severity: low

Affected versions:

- Apache James Mime4J through 0.8.9

Description:

Improper input validation allows for header injection in MIME4J library whe=
n using MIME4J DOM for composing message.
This can be exploited by an attacker to add unintended headers to MIME mess=
ages.

Credit:

Benoit TELLIER (finder)

References:

https://james.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-21742

