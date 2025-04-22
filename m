Received: (qmail 28439 invoked by uid 550); 22 Apr 2025 07:01:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30441 invoked from network); 22 Apr 2025 05:37:04 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Hulk Lin <hulk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f0d8327d-b133-e389-a57d-b98f7185e83d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 22 Apr 2025 05:36:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-26413: Apache Kvrocks: The server was crashed by the
 negative offset 

Severity: moderate

Affected versions:

- Apache Kvrocks through 2.11.1

Description:

Improper Input Validation vulnerability in Apache Kvrocks.

The SETRANGE command didn't check if the `offset` input is a positive integ=
er and use it as an index
of a string. So it will cause the server to crash due to its index is=C2=A0=
 out of range.
This issue affects Apache Kvrocks: through 2.11.1.

Users are recommended to upgrade to version 2.12.0, which fixes the issue.

Credit:

=E6=9C=B1=E5=B0=91=E6=89=AC (reporter)

References:

https://kvrocks.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-26413

