Received: (qmail 1166 invoked by uid 550); 28 Apr 2026 00:39:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5805 invoked from network); 28 Apr 2026 00:06:38 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jens Geyer <jensg@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <36634a4e-bee1-3bb2-2f63-852727299f0d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 28 Apr 2026 00:01:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-41602: Apache Thrift: Go TFramedTransport uint32 overflow
 

Severity: important=20

Affected versions:

- Apache Thrift before 0.23.0

Description:

Integer Overflow or Wraparound vulnerability in Apache Thrift TFramedTransp=
ort Go language implementation

This issue affects Apache Thrift: before 0.23.0.

Users are recommended to upgrade to version 0.23.0, which fixes the issue.

Credit:

=EA=B9=80=EB=B2=94=EC=88=98 (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-41602

