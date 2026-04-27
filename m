Received: (qmail 23973 invoked by uid 550); 28 Apr 2026 00:39:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 4004 invoked from network); 27 Apr 2026 23:59:54 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jens Geyer <jensg@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8379da89-bbfd-1ac3-aa33-f65f7ebc13bc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Apr 2026 23:59:36 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-41636: Apache Thrift: Node.js skip() recursion 

Severity:=20

Affected versions:

- Apache Thrift before 0.23.0

Description:

Uncontrolled Recursion vulnerability in Apache Thrift Node.js bindings

This issue affects Apache Thrift: before 0.23.0.

Users are recommended to upgrade to version 0.23.0, which fixes the issue.

Credit:

=EB=B0=95=EC=8B=9C=EC=98=A8 (L3G4CY Security Research) (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-41636

