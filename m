Received: (qmail 28109 invoked by uid 550); 22 Jul 2024 12:27:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5849 invoked from network); 22 Jul 2024 09:35:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Francesco_Chicchiricc=C3=B2?= <ilgrosso@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <332207c0-1be7-c172-6e4e-8b96939f9034@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jul 2024 09:35:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-38503: Apache Syncope: HTML tags can be injected into
 Console or Enduser text fields 

Severity: moderate

Affected versions:

- Apache Syncope 2.1 through 2.1.14
- Apache Syncope 3.0 through 3.0.7

Description:

When editing a user, group or any object in the Syncope Console, HTML tags =
could be added to any text field and could lead to potential exploits.
The same vulnerability was found in the Syncope Enduser, when editing =E2=
=80=9CPersonal Information=E2=80=9D or =E2=80=9CUser Requests=E2=80=9D.

Users are recommended to upgrade to version 3.0.8, which fixes this issue.

Credit:

Basalt IT-Security Team (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-38503

