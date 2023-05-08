Received: (qmail 16295 invoked by uid 550); 8 May 2023 11:14:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17413 invoked from network); 8 May 2023 03:57:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Wang Weibing <wwbmmm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <157c85dc-9fc6-bd11-cc0b-c22a46c2d091@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 May 2023 03:57:31 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-31039: Apache bRPC: ServerOptions.pid_file may cause
 arbitrary code execution 

Severity: important

Affected versions:

- Apache bRPC 0.9.0 before 1.5.0

Description:

Security vulnerability=C2=A0in Apache bRPC <1.5.0 on all platforms allows a=
ttackers to execute arbitrary code via ServerOptions::pid_file.
An attacker that can influence the ServerOptions pid_file parameter with wh=
ich the bRPC server is started can execute arbitrary code with the permissi=
ons of the bRPC process.

Solution:
1. upgrade to bRPC >=3D 1.5.0, download link:=C2=A0 https://dist.apache.org=
/repos/dist/release/brpc/1.5.0/ https://dist.apache.org/repos/dist/release/=
brpc/1.5.0/=20
2. If you are using an old version of bRPC and hard to upgrade, you can app=
ly this patch:=C2=A0 https://github.com/apache/brpc/pull/2218 https://githu=
b.com/apache/brpc/pull/2218

Required Configurations:

set brpc::ServerOptions::pid_file from user input

Work Arounds:

Apply this patch:=C2=A0 https://github.com/apache/brpc/pull/2218 https://gi=
thub.com/apache/brpc/pull/2218

References:

https://brpc.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-31039

