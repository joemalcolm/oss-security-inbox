Received: (qmail 21507 invoked by uid 550); 18 Jul 2024 12:33:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24230 invoked from network); 18 Jul 2024 10:12:48 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Huajie Wang <benjobs@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fc99feb6-aad8-ccd8-9001-42024fc36940@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jul 2024 10:11:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-29178: Apache StreamPark: FreeMarker SSTI RCE
 Vulnerability 

Severity: moderate

Affected versions:

- Apache StreamPark 1.0.0 before 2.1.4

Description:

On versions before 2.1.4, a user could log in and perform a template inject=
ion attack resulting in Remote Code Execution on the server,=C2=A0The attac=
ker must successfully log into the system to launch an attack, so this is a=
 moderate-impact vulnerability.

Mitigation:

all users should upgrade to 2.1.4

Credit:

L0ne1y (reporter)

References:

https://streampark.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-29178

