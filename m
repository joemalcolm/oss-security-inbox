Received: (qmail 3849 invoked by uid 550); 5 Feb 2025 17:20:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3718 invoked from network); 5 Feb 2025 17:07:42 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Benoit Tellier <btellier@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0919e075-c31d-2613-26f3-d31146cc4861@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 05 Feb 2025 17:05:41 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45626: Apache James: denial of service through JMAP HTML
 to text conversion 

Affected versions:

- Apache James server 3.8.0 through 3.8.1
- Apache James server through 3.7.5

Description:

Apache James server JMAP HTML to text plain implementation in versions belo=
w 3.8.2 and 3.7.6 is subject to unbounded memory consumption that can resul=
t in a denial of service.

Users are recommended to upgrade to version 3.7.6 and 3.8.2, which fix this=
 issue.

Credit:

Benoit TELLIER (finder)
Wojciech Kapcia (finder)

References:

https://james.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-45626

