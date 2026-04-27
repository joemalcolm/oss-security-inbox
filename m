Received: (qmail 32042 invoked by uid 550); 27 Apr 2026 15:06:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19816 invoked from network); 27 Apr 2026 08:24:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Emmanuel_L=C3=A9charny?= <elecharny@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <912321c8-ae03-afca-b30f-b2079228b46c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Apr 2026 08:23:36 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-41409: Apache MINA: CWE-502 Deserialization of Untrusted
 Data 

Severity:=20

Affected versions:

- Apache MINA (org.apache.mina:mina.core) 2.2.0 through 2.2.5
- Apache MINA (org.apache.mina:mina.core) 2.1.0 through 2.1.10
- Apache MINA (org.apache.mina:mina.core) 2.0.0 through 2.0.27

Description:

The fix for CVE-2024-52046 in Apache MINA AbstractIoBuffer.getObject() was =
incomplete. The classname allowlist of classes allowed to be deserialized w=
as applied too late after a static initializer in a class to be read might =
already have been executed.
<br>

<br>
Affected versions are Apache MINA 2.0.0 &lt;=3D 2.0.27, 2.1.0 &lt;=3D 2.1.1=
0, and 2.2.0 &lt;=3D 2.2.5.
<br>

<br>
The problem is resolved in Apache MINA 2.0.28, 2.1.11, and 2.2.6 by=20
applying the classname allowlist earlier.
<br>

<br>
Affected are applications using Apache MINA that call IoBuffer.getObject().
<br>

<br>
Applications using Apache MINA are advised to upgrade.<br>

Credit:

Venkatraman Kumar, Securin (reporter)

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-41409

