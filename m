Received: (qmail 16068 invoked by uid 550); 10 Apr 2023 08:27:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17416 invoked from network); 10 Apr 2023 06:14:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Heping Wang <peacewong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <da13c5d2-f965-cace-46d7-1dc92a7cf8c0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 10 Apr 2023 06:14:41 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-27603: Apache Linkis Mangaer module engineConn material
 upload exists Zip Slip issue 

Severity: important

Description:

In Apache Linkis <=3D1.3.1, due to the Manager module engineConn material u=
pload does not check the zip path,=C2=A0This is a Zip Slip issue, which wil=
l lead to a=C2=A0potential RCE vulnerability.


We recommend users upgrade the version of Linkis to version 1.3.2.

Credit:

4ra1n (reporter)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-27603

