Received: (qmail 10073 invoked by uid 550); 3 Aug 2025 17:48:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1742 invoked from network); 3 Aug 2025 10:12:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: PJ Fanning <fanningpj@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7da9ac4a-9d4f-d2f9-1869-0a0ea994f0b5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 03 Aug 2025 10:11:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-51775: Apache Zeppelin: Command Injection via CSWSH 

Severity: moderate=20

Affected versions:

- Apache Zeppelin (org.apache.zeppelin:zeppelin-shell) 0.11.1 before 0.12.0

Description:

Missing Origin Validation in WebSockets vulnerability in Apache Zeppelin.

The attacker could access the Zeppelin server from another origin without a=
ny restriction, and get internal information about paragraphs.=C2=A0
This issue affects Apache Zeppelin: from 0.11.1 before 0.12.0.

Users are recommended to upgrade to version 0.12.0, which fixes the issue.

Credit:

Calum Hutton (finder)

References:

https://github.com/apache/zeppelin/pull/4823
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-51775

