Received: (qmail 16149 invoked by uid 550); 9 Apr 2024 13:06:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29756 invoked from network); 9 Apr 2024 02:09:18 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jongyoul Lee <jongyoul@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9a68ff69-1112-b320-9104-71b4b239e04e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Apr 2024 02:09:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-31860: Apache Zeppelin: Path traversal vulnerability 

Severity: low

Affected versions:

- Apache Zeppelin 0.9.0 before 0.11.0

Description:

Improper Input Validation vulnerability in Apache Zeppelin.

By adding relative path indicators(E.g ..), attackers can see the contents =
for any files in the filesystem that the server account can access.=C2=A0
This issue affects Apache Zeppelin: from 0.9.0 before 0.11.0.

Users are recommended to upgrade to version 0.11.0, which fixes the issue.

Credit:

Kai Zhao (finder)

References:

https://github.com/apache/zeppelin/pull/4632
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-31860

