Received: (qmail 11641 invoked by uid 550); 20 Aug 2024 16:46:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32220 invoked from network); 20 Aug 2024 16:40:32 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Junkai Xue <jxue@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bebed778-75f1-b671-01e3-03055c6c9efb@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Aug 2024 16:40:21 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-22281: Apache Helix Front (UI): Helix front hard-coded
 secret in the express-session 

Severity: important

Affected versions:

- Apache Helix Front (UI): all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** The Apache Helix Front (UI) component conta=
ined a hard-coded secret, allowing an attacker to spoof sessions by generat=
ing their own fake cookies.

This issue affects Apache Helix Front (UI): all versions.

As this project is retired, we do not plan to release a version that fixes =
this issue. Users are recommended to find an alternative or restrict access=
 to the instance to trusted users.

NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

Credit:

Jonathan Leitschuh (finder)

References:

https://helix.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-22281

