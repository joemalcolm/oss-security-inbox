Received: (qmail 30055 invoked by uid 550); 21 May 2023 10:11:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22244 invoked from network); 21 May 2023 08:18:44 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <55ee885e-001c-10c7-5cad-a2bf49fca5e7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 21 May 2023 08:18:30 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-31098: Apache InLong: Weak Password Implementation in
 InLong 

Severity: moderate

Affected versions:

- Apache InLong 1.1.0 through 1.6.0

Description:

Weak Password Requirements vulnerability in Apache Software Foundation Apac=
he InLong.This issue affects Apache InLong: from 1.1.0 through 1.6.0.=C2=A0

When users change their password to a simple password (with any character or
symbol), attackers can easily guess the user's password and access the acco=
unt.

Users are advised to upgrade to Apache InLong's 1.7.0 or cherry-pick [1] to=
 solve it.



[1]=C2=A0 https://github.com/apache/inlong/pull/7805 https://github.com/apa=
che/inlong/pull/7805

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-31098

