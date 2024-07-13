Received: (qmail 7174 invoked by uid 550); 13 Jul 2024 14:56:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32175 invoked from network); 13 Jul 2024 14:53:10 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Heping Wang <peacewong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ca9eba19-adde-2992-f545-ae019b584a41@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Jul 2024 14:52:59 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-41916: Apache Linkis DataSource: DatasourceManager module
 has a  JDBC parameter judgment logic vulnerability that allows for
 arbitrary file reading 

Severity: important

Affected versions:

- Apache Linkis DataSource 1.4.0 before 1.6.0

Description:

In Apache Linkis =3D1.4.0, due to the lack of effective filtering
of parameters, an attacker configuring malicious Mysql JDBC parameters in t=
he DataSource Manager Module will trigger=C2=A0arbitrary file reading. Ther=
efore, the parameters in the Mysql JDBC URL should be blacklisted. This att=
ack requires the attacker to obtain an authorized account from Linkis befor=
e it can be carried out. Versions of Apache Linkis <=3D 1.4.0 will be affec=
ted.=C2=A0
We recommend users upgrade the version of Linkis to version 1.6.0.

Credit:

Pho3n1x  (reporter)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-41916

