Received: (qmail 11493 invoked by uid 550); 9 Apr 2024 14:51:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1763 invoked from network); 9 Apr 2024 14:47:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jongyoul Lee <jongyoul@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <084e4d71-5aa3-af5b-f73f-d0aaf705947c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Apr 2024 14:46:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-31868: Apache Zeppelin: XSS vulnerability in the helium
 module 

Severity: moderate

Affected versions:

- Apache Zeppelin 0.8.2 before 0.11.1

Description:

Improper Encoding or Escaping of Output vulnerability in Apache Zeppelin.

The attackers can modify helium.json and exposure XSS attacks to normal use=
rs.
This issue affects Apache Zeppelin: from 0.8.2 before 0.11.1.

Users are recommended to upgrade to version 0.11.1, which fixes the issue.

Credit:

H Ming (finder)

References:

https://github.com/apache/zeppelin/pull/4728
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-31868

