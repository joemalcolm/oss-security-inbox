Received: (qmail 26143 invoked by uid 550); 27 Mar 2023 09:10:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19738 invoked from network); 27 Mar 2023 08:57:30 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Charles Zhang <dockerzhang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2562f150-22b8-e28f-900f-8cf021353caa@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Mar 2023 08:57:01 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-27296: Apache InLong: JDBC Deserialization Vulnerability
 in InLong 

Severity: important

Description:

Deserialization of Untrusted Data vulnerability in Apache Software Foundati=
on Apache InLong.

It could be triggered by authenticated users of InLong,=C2=A0you could refe=
r=C2=A0to [1]=C2=A0to know more about this=C2=A0vulnerability.

This issue affects Apache InLong: from 1.1.0 through 1.5.0.  Users are advi=
sed to upgrade to Apache InLong's latest version or cherry-pick [2]=C2=A0to=
 solve it.



[1]=C2=A0 https://programmer.help/blogs/jdbc-deserialization-vulnerability-=
learning.html

 https://programmer.help/blogs/jdbc-deserialization-vulnerability-learning.=
html=20

[2]  https://github.com/apache/inlong/pull/7422 https://github.com/apache/i=
nlong/pull/7422

Credit:

escape Wang (finder)

References:

https://lists.apache.org/thread/xbvtjw9bwzgbo9fp1by8o3p49nf59xzt
https://inlong.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-27296

