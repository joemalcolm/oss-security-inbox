Received: (qmail 31865 invoked by uid 550); 11 Apr 2023 14:18:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30177 invoked from network); 11 Apr 2023 14:17:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cdb4f336-4403-b778-2ab9-5732bb049ff0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 11 Apr 2023 14:16:59 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-30465: Apache InLong: SQL injection in apache inLong
 1.5.0 

Severity: important

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL In=
jection') vulnerability in Apache Software Foundation Apache InLong.This is=
sue affects Apache InLong: from 1.4.0 through 1.5.0.=C2=A0By manipulating t=
he "orderType" parameter and the ordering of the returned content using an =
SQL injection attack, an attacker can extract the username of the=C2=A0=C2=
=A0 user with ID 1 from the "user" table, one character at a time.=C2=A0 Us=
ers are advised to upgrade to Apache InLong's 1.6.0 or cherry-pick [1] to s=
olve it.
=20
 https://programmer.help/blogs/jdbc-deserialization-vulnerability-learning.=
html=20

[1]  https://github.com/apache/inlong/issues/7529 https://github.com/apache=
/inlong/issues/7529

Credit:

escape Wang (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-30465

