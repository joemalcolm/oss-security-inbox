Received: (qmail 11727 invoked by uid 550); 22 Jun 2023 20:15:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9540 invoked from network); 22 Jun 2023 20:12:18 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Dominik Riemer <riemer@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8e637dad-3c59-7108-064b-148c61ab3177@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 22 Jun 2023 20:12:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-31469: Apache StreamPipes: Privilege escalation through
 non-admin user 

Severity: important

Affected versions:

- Apache StreamPipes 0.69.0 through 0.91.0

Description:

A REST interface in Apache StreamPipes (versions 0.69.0 to 0.91.0) was not =
properly restricted to admin-only access. This allowed a non-admin user wit=
h valid login credentials to elevate privileges beyond the initially assign=
ed roles.
The issue is resolved by upgrading to StreamPipes 0.92.0.

Credit:

Xun Bai, LJQC Open Source Security Institute (finder)

References:

https://streampipes.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-31469

