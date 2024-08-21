Received: (qmail 5172 invoked by uid 550); 21 Aug 2024 11:36:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17423 invoked from network); 21 Aug 2024 02:42:31 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jun Gao <gaojun2048@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4fa73da8-a1b9-70c0-c7cb-019994df39a3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 21 Aug 2024 02:42:21 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49198: Apache SeaTunnel Web: Arbitrary file read
 vulnerability 

Severity: important

Affected versions:

- Apache SeaTunnel Web 1.0.0

Description:

Mysql security vulnerability in Apache SeaTunnel.

Attackers can read files on the MySQL server by modifying the information i=
n the MySQL URL

 allowLoadLocalInfile=3Dtrue&allowUrlInLocalInfile=3Dtrue&allowLoadLocalInf=
ileInPath=3D/&maxAllowedPacket=3D655360
This issue affects Apache SeaTunnel: 1.0.0.

Users are recommended to upgrade to version [1.0.1], which fixes the issue.

Credit:

jiahua huang (reporter)

References:

https://lists.apache.org/thread/nprwwhh2t9r91lg6kxcgqz2xzq34ojbs
https://seatunnel.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-49198

