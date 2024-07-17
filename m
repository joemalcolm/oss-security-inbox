Received: (qmail 3784 invoked by uid 550); 17 Jul 2024 12:57:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15375 invoked from network); 17 Jul 2024 06:57:59 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Huajie Wang <benjobs@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4a919e3d-9a13-84c7-c605-b382b434411a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jul 2024 06:57:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-29737: Apache StreamPark (incubating): maven build params
 could trigger remote command execution 

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

Mitigation:

all users should upgrade to 2.1.4

Background info:

Log in to Streampark using the default username (e.g. test1, test2, test3) =
and the default password (streampark). Navigate to the Project module, then=
 add a new project. Enter the git repository address of the project and inp=
ut `touch /tmp/success_2.1.2` as the "Build Argument". Note that there is n=
o verification and interception of the special character "`". As a result, =
you will find that this injection command will be successfully executed aft=
er executing the build.

In the latest version, the special symbol ` is intercepted.

Credit:

L0ne1y (reporter)

References:

https://streampark.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-29737

