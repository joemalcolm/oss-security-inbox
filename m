Received: (qmail 32491 invoked by uid 550); 27 Apr 2026 15:06:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20261 invoked from network); 27 Apr 2026 08:24:44 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Emmanuel_L=C3=A9charny?= <elecharny@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f83ac5f0-75d8-3735-4a67-bbaac32d4d6f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Apr 2026 08:23:45 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?ZDRES-059=3A_CVE-2026-41635=3A_Apache_MI?=
 =?UTF-8?Q?NA=3A_AbstractIoBuffer=2EresolveClass=28?=
 =?UTF-8?Q?=29_null-clazz_Branch_Skips_acceptMatche?=
 =?UTF-8?Q?rs_Filter_=E2=80=94_Full_Object_Deserial?=
 =?UTF-8?Q?ization_RCE=20?=

Severity:=20

Affected versions:

- Apache MINA (org.apache.mina:mina-core) 2.2.0 through 2.2.5
- Apache MINA (org.apache.mina:mina-core) 2.1.0 through 2.1.10
- Apache MINA (org.apache.mina:mina-core) 2.0.0 through 2.0.27

Description:

Apache MINA's AbstractIoBuffer.resolveClass() contains two branches, one of=
 them (for static classes or primitive types) does not check the class at a=
ll, bypassing the classname allowlist and allowing arbitrary code to be exe=
cuted.




The fix checks if the class is present in the accepted class filter=C2=A0be=
fore calling=C2=A0Class.forName().=C2=A0






Affected versions are Apache MINA 2.0.0 <=3D 2.0.27, 2.1.0 <=3D 2.1.10, and


2.2.0 <=3D 2.2.5.





The problem is resolved in Apache MINA 2.0.28, 2.1.11, and 2.2.6 by=20
applying the classname allowlist earlier.





Affected are applications using Apache MINA that call=C2=A0 IoBuffer.getObj=
ect().





Applications using Apache MINA are advised to upgrade.

Credit:

Venkatraman Kumar, Securin (reporter)

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-41635

Timeline:

2026-04-17: Initial reporting

