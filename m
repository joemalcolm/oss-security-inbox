Received: (qmail 16218 invoked by uid 550); 31 Mar 2023 12:05:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25828 invoked from network); 31 Mar 2023 05:28:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Benoit Tellier <btellier@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b25b13ef-81bb-4d59-930d-a566659f8b2f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 31 Mar 2023 05:28:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-26269: Apache James server: Privilege escalation through
 unauthenticated JMX 

Severity: moderate

Description:

Apache James server version 3.7.3 and earlier provides a JMX management ser=
vice without authentication by default. This allows privilege escalation by=
 a=20
malicious local user.

Administrators are advised to disable JMX, or set up a JMX password.

Work Arounds:

Note that version 3.7.4 onward will set up a JMX password automatically for=
 Guice users.

Credit:

Matei "Mal" Badanoiu (reporter)

References:

https://james.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-26269

