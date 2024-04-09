Received: (qmail 9988 invoked by uid 550); 9 Apr 2024 14:51:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21655 invoked from network); 9 Apr 2024 14:46:04 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jongyoul Lee <jongyoul@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d9873fb8-d43b-0233-5272-3afbcf385476@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Apr 2024 14:45:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-31866: Apache Zeppelin: Interpreter download command does
 not escape malicious code injection 

Severity: moderate

Affected versions:

- Apache Zeppelin 0.8.2 before 0.11.1

Description:

Improper Encoding or Escaping of Output vulnerability in Apache Zeppelin.

The attackers can execute shell scripts or malicious code by overriding con=
figuration like=C2=A0ZEPPELIN_INTP_CLASSPATH_OVERRIDES.
This issue affects Apache Zeppelin: from 0.8.2 before 0.11.1.

Users are recommended to upgrade to version 0.11.1, which fixes the issue.

Credit:

Esa Hiltunen (finder)
https://teragrep.com (finder)

References:

https://github.com/apache/zeppelin/pull/4715
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-31866

