Received: (qmail 25905 invoked by uid 550); 16 Jul 2024 19:42:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1674 invoked from network); 16 Jul 2024 19:04:54 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Dominik Riemer <riemer@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5e87e214-ee78-d691-15a3-f60988c64e65@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jul 2024 19:02:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-31979: Apache StreamPipes: Possibility of SSRF in
 pipeline element installation process 

Severity: moderate

Affected versions:

- Apache StreamPipes through 0.93.0

Description:

Server-Side Request Forgery (SSRF) vulnerability in Apache StreamPipes duri=
ng installation process of pipeline elements.
Previously, StreamPipes allowed users to configure custom endpoints from wh=
ich to install additional pipeline elements.=20
These endpoints were not properly validated, allowing an attacker to get St=
reamPipes to send an HTTP GET request to an arbitrary address.
This issue affects Apache StreamPipes: through 0.93.0.

Users are recommended to upgrade to version 0.95.0, which fixes the issue.

Credit:

L0ne1y (finder)

References:

https://streampipes.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-31979

