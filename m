Received: (qmail 22343 invoked by uid 550); 16 Oct 2023 01:55:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5228 invoked from network); 16 Oct 2023 01:52:15 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <77cb8757-3c90-b60c-0eab-99870e4c7da4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Oct 2023 01:51:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-43667: Apache InLong: Log Injection in Global functions 

Severity: moderate

Affected versions:

- Apache InLong 1.4.0 through 1.8.0

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL In=
jection') vulnerability in Apache InLong.This issue affects Apache InLong: =
from 1.4.0 through 1.8.0, the attacker can create misleading or false recor=
ds, making it harder to audit
and trace malicious activities.=C2=A0Users are advised to upgrade to Apache=
 InLong's 1.8.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/pull/8628

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-43667

