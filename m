Received: (qmail 19656 invoked by uid 550); 13 Jul 2024 15:05:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1489 invoked from network); 13 Jul 2024 14:59:29 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Heping Wang <peacewong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <185996cb-e9f3-9fe2-31e5-5356cfe53d6a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Jul 2024 14:58:25 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-46801: Apache Linkis DataSource: Remote code execution
 vulnerability in apache Linkis 1.4.0 

Severity: moderate

Affected versions:

- Apache Linkis DataSource 1.4.0 before 1.6.0

Description:

In Apache Linkis <=3D 1.5.0, data source management module, when adding Mys=
ql data source, exists remote code execution vulnerability for java version=
 < 1.8.0_241. The deserialization vulnerability exploited through jrmp can =
inject malicious files into the server and execute them.=20

This attack requires the attacker to obtain an authorized account from Link=
is before it can be carried out.=C2=A0 We recommend that users upgrade the =
java version to >=3D 1.8.0_241. Or users upgrade Linkis to version 1.6.0.

Credit:

Pho3n1x  (reporter)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-46801

