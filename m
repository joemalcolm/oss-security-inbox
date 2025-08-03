Received: (qmail 9657 invoked by uid 550); 3 Aug 2025 17:48:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7978 invoked from network); 3 Aug 2025 10:08:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: PJ Fanning <fanningpj@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2ed2aad9-eadd-6c13-68c0-8de6ab1dc4da@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 03 Aug 2025 10:07:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-41177: Apache Zeppelin: XSS in the Helium module 

Severity: moderate=20

Affected versions:

- Apache Zeppelin (org.apache.zeppelin:zeppelin-web) before 0.12.0

Description:

Incomplete Blacklist to Cross-Site Scripting vulnerability in Apache Zeppel=
in.

This issue affects Apache Zeppelin: before 0.12.0.

Users are recommended to upgrade to version 0.12.0, which fixes the issue.

Credit:

H Ming (finder)

References:

https://github.com/apache/zeppelin/pull/4755
https://github.com/apache/zeppelin/pull/4795
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-41177

