Received: (qmail 17458 invoked by uid 550); 23 Jul 2024 20:15:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12097 invoked from network); 23 Jul 2024 20:13:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Yupeng Fu <yupeng@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f2501662-f8c3-34a0-b542-cf5e8c3e8438@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jul 2024 20:11:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-39676: Apache Pinot: Unauthorized endpoint exposed
 sensitive information 

Severity: important

Affected versions:

- Apache Pinot 0.1 before 1.0.0

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in=
 Apache Pinot.

This issue affects Apache Pinot: from 0.1 before 1.0.0.

Users are recommended to upgrade to version 1.0.0=C2=A0and configure RBAC, =
which fixes the issue.

Details:=C2=A0

When using a request to path =E2=80=9C/appconfigs=E2=80=9D to the controlle=
r, it can lead to the disclosure of sensitive information such as system in=
formation (e.g. arch, os version), environment information (e.g. maxHeapSiz=
e) and Pinot configurations (e.g. zookeeper path). This issue was addressed=
 by the  Role-based Access Control https://docs.pinot.apache.org/operators/=
tutorials/authentication/basic-auth-access-control , so that /appConfigs` a=
nd all other APIs can be access controlled. Only authorized users have acce=
ss to it. Note the user needs to add the admin role accordingly to the RBAC=
 guide to control access to this endpoint, and in the future version of Pin=
ot, a default admin role is planned to be added.

Credit:

Xun Bai <bbbbear68@gmail.com> (finder)

References:

https://pinot.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-39676

