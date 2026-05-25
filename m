Received: (qmail 9351 invoked by uid 550); 25 May 2026 18:40:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17787 invoked from network); 25 May 2026 12:32:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Francesco_Chicchiricc=C3=B2?= <ilgrosso@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d55ce1db-6317-6d3d-2f43-990944c38003@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 12:32:42 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-42782: Apache Syncope: Post-auth RCE via Groovy static 

Severity: moderate=20

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 3.0 through =
3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 4.0 through =
4.0.5
- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 4.1 through =
4.1.0

Description:

Improper Isolation or Compartmentalization vulnerability in Apache Syncope.

An administrator with adequate entitlements for Implementations can create =
a malicious Groovy class containing=C2=A0untrusted code reaching a non-sand=
boxed execution path via the class static initializer.

This issue affects Apache Syncope: 3.0 through 3.0.16, 4.0 through 4.0.5, 4=
.1.0.



Users are recommended to upgrade to version 4.0.6 / 4.1.1, which fix this i=
ssue by forcing even the static initializer in Groovy code to run in a sand=
box.

Credit:

Trung Nguyen, CyStack (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-42782

