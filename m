Received: (qmail 11452 invoked by uid 550); 6 Mar 2024 14:03:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24513 invoked from network); 6 Mar 2024 13:24:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Heping Wang <peacewong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c2b27dd3-7cec-388f-aab9-e48b2b084b14@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Mar 2024 13:27:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-50740: Apache Linkis DataSource: DataSource module Oracle
 SQL Database Password Logged 

Severity: moderate

Affected versions:

- Apache Linkis DataSource * before 1.5.0

Description:

In Apache Linkis <=3D1.4.0, The password is printed to the log when using t=
he Oracle data source of the Linkis data source module.=C2=A0
We recommend users upgrade the version of Linkis to version 1.5.0

Credit:

Jonathan Leitschuh (reporter)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-50740

