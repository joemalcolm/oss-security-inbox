Received: (qmail 24545 invoked by uid 550); 10 Jun 2024 16:19:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5737 invoked from network); 10 Jun 2024 16:13:50 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: David Philip Brondsema <brondsem@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1f25ea72-be53-48d8-6e00-3ace55a2638a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 10 Jun 2024 16:12:31 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-36471: Apache Allura: sensitive information exposure via
 DNS rebinding 

Severity: important

Affected versions:

- Apache Allura 1.0.1 through 1.16.0

Description:

Import functionality is vulnerable to DNS rebinding attacks between verific=
ation and processing of the URL.=C2=A0 Project administrators can run these=
 imports, which could cause Allura to read from internal services and expos=
e them.

This issue affects Apache Allura from 1.0.1 through 1.16.0.

Users are recommended to upgrade to version 1.17.0, which fixes the issue. =
 If you are unable to upgrade, set "disable_entry_points.allura.importers =
=3D forge-tracker, forge-discussion" in your .ini config file.

Credit:

truff https://x.com/truffzor (finder)

References:

https://allura.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-36471

