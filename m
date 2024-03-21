Received: (qmail 15439 invoked by uid 550); 21 Mar 2024 14:17:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23966 invoked from network); 21 Mar 2024 08:40:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Mingyu Chen <morningman@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3ae2a789-d0ff-ad5d-12cd-2815754aac4f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 Mar 2024 08:45:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-27438: Apache Doris: Downloading arbitrary remote jar
 files resulting in remote command execution 

Severity: important

Affected versions:

- Apache Doris 1.2.0 through 2.0.4

Description:

Download of Code Without Integrity Check vulnerability in Apache Doris.
The jdbc driver files used for JDBC catalog is not checked and may=C2=A0res=
ulting in remote command execution.
Once the attacker is authorized to create a JDBC catalog, he/she can use ar=
bitrary driver jar file with unchecked code snippet. This=C2=A0code snippet=
 will be run when catalog is initializing without any check.
This issue affects Apache Doris: from 1.2.0 through 2.0.4.

Users are recommended to upgrade to version 2.0.5 or 2.1.x, which fixes the=
 issue.

References:

https://doris.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-27438

