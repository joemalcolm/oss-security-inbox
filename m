Received: (qmail 7765 invoked by uid 550); 20 Oct 2025 13:18:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11345 invoked from network); 20 Oct 2025 13:15:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Francesco_Chicchiricc=C3=B2?= <ilgrosso@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b8cb0485-6dda-9bf6-9872-14e3c6cc0d7e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 20 Oct 2025 13:14:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-57738: Apache Syncope: Remote Code Execution by delegated
 administrators 

Severity: moderate=20

Affected versions:

- Apache Syncope 2.1 through 2.1.14
- Apache Syncope 3.0 through 3.0.13
- Apache Syncope 4.0 through 4.0.1

Description:

Apache Syncope offers the ability to extend / customize the base behavior o=
n every deployment by allowing to provide custom implementations of a few J=
ava interfaces; such implementations can be provided either as Java or Groo=
vy classes, with the latter being particularly attractive as the machinery =
is set for runtime reload.
Such a feature has been available for a while, but recently it was discover=
ed that a malicious administrator can inject Groovy code that can be execut=
ed remotely by a running Apache Syncope Core instance.
Users are recommended to upgrade to version 3.0.14 / 4.0.2, which fix this =
issue by forcing the Groovy code to run in a sandbox.

Credit:

Mike Cole (Mantel Group) (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-57738

