Received: (qmail 3910 invoked by uid 550); 26 Nov 2025 05:23:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24075 invoked from network); 26 Nov 2025 04:58:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Karan Kumar <karan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <29697e61-8a4b-6337-5ed2-f8b366885f05@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 26 Nov 2025 04:58:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-59390: Apache Druid: Kerberos authenticaton chooses a
 cryptographically unsecure secret if not configured explicitly. 

Severity: low=20

Affected versions:

- Apache Druid through 34.0.0

Description:

Apache Druid=E2=80=99s Kerberos authenticator uses a weak fallback secret w=
hen the `druid.auth.authenticator.kerberos.cookieSignatureSecret` configura=
tion is not explicitly set. In this case, the secret is generated using `Th=
readLocalRandom`,
 which is not a crypto-graphically secure random number generator. This=20
may allow an attacker to predict or brute force the secret used to sign=20
authentication cookies, potentially enabling token forgery or=20
authentication bypass. Additionally, each process generates its own=20
fallback secret, resulting in inconsistent secrets across nodes. This=20
causes authentication failures in distributed or multi-broker=20
deployments, effectively leading to a incorrectly configured clusters. User=
s are=20
advised to configure a strong=C2=A0`druid.auth.authenticator.kerberos.cooki=
eSignatureSecret`



This issue affects Apache Druid: through 34.0.0.

Users are recommended to upgrade to version 35.0.0, which fixes the issue m=
aking it mandatory to set `druid.auth.authenticator.kerberos.cookieSignatur=
eSecret` when using the=C2=A0Kerberos authenticator. Services will fail to =
come up if the secret is not set.

Credit:

Luke Smith (smithluke1966@gmail.com) (finder)
1nfocalypse (analyst)

References:

https://druid.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-59390

