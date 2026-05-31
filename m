Received: (qmail 5120 invoked by uid 550); 1 Jun 2026 04:36:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13799 invoked from network); 31 May 2026 22:03:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Emmanuel_L=C3=A9charny?= <elecharny@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <82389c47-777c-b099-b37f-b09e6c63fab2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 22:03:27 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-35563: Apache Directory LDAP API: LDAP client
 implementation does not verify if the server certificate matches the
 intended LDAP hostname 

Severity: important=20

Affected versions:

- Apache Directory LDAP API (org.apache.directory.api:api-ldap-client-api) =
2.0.0 through 2.1.7

Description:

It was identified that the LDAP client implementation in version 2.1.7 does=
 not verify if the server certificate matches the intended LDAP=20
hostname. While the underlying code validates the certificate chain=20
against a trusted authority, the absence of endpoint identification=20
allows a valid certificate issued for an entirely unrelated host to be=20
improperly accepted. This oversight leaves the connection highly=20
vulnerable to server impersonation and complete connection compromise.


The
 root cause of this vulnerability lies in the incomplete TLS server=20
identity verification within the LDAP client implementation.




The attacker requires MITM capability on the network to exploit this vulner=
ability. This attacker must be able to present a certificate trusted by the=
 client's configured trust store.




The hostname verification has been enforced in the new version of the LDAP =
API

Credit:

Rafa=C5=82 =C5=81ykowski and =C5=81ukasz Kollbek of Qualtrics (finder)

References:

https://directory.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-35563

