Received: (qmail 7983 invoked by uid 550); 22 Nov 2023 00:16:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6116 invoked from network); 22 Nov 2023 00:15:38 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Xiang Chen <cdmikechen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <85222bd6-c08d-1e2f-69da-102f42610736@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 22 Nov 2023 00:15:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-37924: Apache Submarine: SQL injection from unauthorized
 login 

Severity: critical

Affected versions:

- Apache Submarine 0.7.0 before 0.8.0

Description:

Apache Software Foundation Apache Submarine has an SQL injection vulnerabil=
ity when a user logs in. This issue can result in unauthorized login.
Now we have fixed this issue and now user must have the correct login to ac=
cess workbench.
This issue affects Apache Submarine: from 0.7.0 before 0.8.0.=C2=A0We recom=
mend that all submarine users with 0.7.0 upgrade to 0.8.0, which not only f=
ixes the issue, supports the oidc authentication mode, but also removes the=
 case of unauthenticated logins.
If using the version lower than 0.8.0 and not want to upgrade, you can try =
cherry-pick PR  https://github.com/apache/submarine/pull/1037 https://githu=
b.com/apache/submarine/pull/1054  and rebuild the submarine-server image to=
 fix this.

This issue is being tracked as SUBMARINE-1361=20

Credit:

lengjingqicai(=E6=A3=B1=E9=95=9C=E4=B8=83=E5=BD=A9=E5=BC=80=E6=BA=90=E5=AE=
=89=E5=85=A8=E7=A0=94=E7=A9=B6=E9=99=A2) (reporter)

References:

https://issues.apache.org/jira/browse/SUBMARINE-1361
https://github.com/apache/submarine/pull/1037
https://submarine.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-37924
https://issues.apache.org/jira/browse/SUBMARINE-1361

