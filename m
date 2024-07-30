Received: (qmail 13748 invoked by uid 550); 30 Jul 2024 12:00:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22068 invoked from network); 30 Jul 2024 07:49:18 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jun Gao <gaojun2048@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <84eeb9be-2d48-ddc3-e6ec-e3ba77d19e49@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jul 2024 07:48:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-48396: Apache SeaTunnel Web: Authentication bypass 

Severity: moderate

Affected versions:

- Apache SeaTunnel Web 1.0.0

Description:

Web Authentication vulnerability in Apache SeaTunnel.=C2=A0Since the jwt ke=
y is hardcoded in the application, an attacker can forge
any token to log in any user.

Attacker can get=C2=A0secret key in=C2=A0/seatunnel-server/seatunnel-app/sr=
c/main/resources/application.yml and then create a token.
This issue affects Apache SeaTunnel: 1.0.0.

Users are recommended to upgrade to version 1.0.1, which fixes the issue.

Credit:

jiahua huang / Joyh (reporter)

References:

https://seatunnel.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-48396

