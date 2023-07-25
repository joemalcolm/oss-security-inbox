Received: (qmail 7491 invoked by uid 550); 25 Jul 2023 08:59:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22097 invoked from network); 25 Jul 2023 02:27:54 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8bc38f4f-69db-9105-85fc-e34b7b6ec5ae@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 25 Jul 2023 02:27:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-34189: Apache InLong: General user can delete and update
 process 

Severity: important

Affected versions:

- Apache InLong 1.4.0 through 1.7.0

Description:

Exposure of Resource to Wrong Sphere Vulnerability in Apache Software Found=
ation Apache InLong.This issue affects Apache InLong: from 1.4.0 through 1.=
7.0. The attacker could use general users to delete and update the process,=
 which only the admin can operate occurrences.=C2=A0

Users are advised to upgrade to Apache InLong's 1.8.0 or cherry-pick  https=
://github.com/apache/inlong/pull/8109 =C2=A0to solve it.

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-34189

