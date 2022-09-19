Received: (qmail 32434 invoked by uid 550); 20 Sep 2022 09:47:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3078 invoked from network); 19 Sep 2022 23:13:38 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Benoit Tellier <btellier@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a1429adf-2639-f01f-1978-ca7d0f733df7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 19 Sep 2022 23:13:25 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-28220: STARTTLS command injection in Apache JAMES 

Severity: This can result in Man-in -the-middle command injection attacks, =
leading potentially to leakage of sensible information like user credential=
s. Exploit in IMAP requires a local account but SMTP exploit does not. Data=
 integrity could be compromised in POP3.

Description:

Apache James prior to release 3.6.3 and 3.7.1 is vulnerable to a buffering =
attack relying on the use of the STARTTLS command.=20

Fix of CVE-2021-38542, which solved similar problem fron Apache James 3.6.1=
, is subject to a parser differential and do not take into account concurre=
nt requests.



This issue is being tracked as JAMES-1862

Mitigation:

Upgrade to Apache James 3.7.1 or Apache James 3.6.3.

Credit:

Apache James PMC would like to thanks Benoit TELLIER for this report, and F=
abian Ising for his support.

References:

https://james.apache.org/james/update/2022/08/26/james-3.7.1.html

