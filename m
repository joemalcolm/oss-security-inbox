Received: (qmail 28060 invoked by uid 550); 16 Oct 2023 12:13:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30147 invoked from network); 16 Oct 2023 02:00:23 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Wang Weibing <wwbmmm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <25b8101c-0813-a0e1-91a3-a3bfe9281e35@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Oct 2023 02:00:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-45757: Apache bRPC: The builtin service rpcz page has an
 XSS attack vulnerability 

Severity: important

Affected versions:

- Apache bRPC 0.9.0 through 1.6.0

Description:

Security vulnerability in Apache bRPC <=3D1.6.0 on all platforms allows att=
ackers to inject XSS code to the builtin rpcz page.
An attacker that can send http request to bRPC server with rpcz enabled can=
=C2=A0inject arbitrary XSS code to the builtin rpcz page.

Solution=C2=A0(choose one of three):
1. upgrade to bRPC > 1.6.0, download link:  https://dist.apache.org/repos/d=
ist/release/brpc/1.6.1/=20
2. If you are using an old version of bRPC and hard to upgrade, you can app=
ly this patch:=C2=A0 https://github.com/apache/brpc/pull/2411=20
3. disable rpcz feature

References:

https://brpc.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-45757

