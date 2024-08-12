Received: (qmail 29978 invoked by uid 550); 12 Aug 2024 16:23:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28619 invoked from network); 12 Aug 2024 16:00:06 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <de322975-cce4-72a7-13b5-fa3b8b6b0622@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 12 Aug 2024 15:59:56 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-41909: Apache MINA SSHD: integrity check bypass 

Severity: moderate

Affected versions:

- Apache MINA SSHD through 2.11.0

Description:

Like many other SSH implementations, Apache MINA SSHD suffered from the iss=
ue that is more widely known as CVE-2023-48795. An attacker that can interc=
ept traffic between client and server could drop certain packets from the s=
tream, potentially causing client and server to consequently end up with a =
connection for which=20
some security features have been downgraded or disabled, aka a Terrapin=20
attack

The mitigations to prevent this type of attack were implemented in Apache M=
INA SSHD 2.12.0, both client and server side. Users are recommended to upgr=
ade to at least this version. Note that both the client and the server impl=
ementation must have mitigations applied against this issue, otherwise the =
connection may still be affected.

Credit:

Fabian B=C3=A4umer (finder)

References:

https://github.com/apache/mina-sshd/issues/445
https://mina.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-41909

