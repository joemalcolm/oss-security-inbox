Received: (qmail 19643 invoked by uid 550); 13 Jul 2024 15:05:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5862 invoked from network); 13 Jul 2024 15:01:12 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Heping Wang <peacewong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7ef85b5a-7333-fee8-7cb3-2ed29b637d56@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Jul 2024 15:01:02 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49566: Apache Linkis DataSource: JDBC Datasource Module
 with DB2 has JNDI Injection vulnerability 

Severity: important

Affected versions:

- Apache Linkis DataSource * before 1.6.0

Description:

In Apache Linkis <=3D1.5.0, due to the lack of effective filtering
of parameters, an attacker configuring malicious=20

db2

 parameters in the DataSource Manager Module will result=C2=A0in jndi injec=
tion. Therefore, the parameters in the DB2 URL should be blacklisted.=C2=A0

This attack requires the attacker to obtain an authorized account from Link=
is before it can be carried out.

 Versions of Apache Linkis=20

<=3D1.5.0

 will be affected.
We recommend users upgrade the version of Linkis to version 1.6.0.

Credit:

Joyh (reporter)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-49566

