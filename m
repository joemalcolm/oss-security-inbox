Received: (qmail 30543 invoked by uid 550); 13 Jul 2025 11:18:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15839 invoked from network); 12 Jul 2025 16:08:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: PJ Fanning <fanningpj@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <76ad9a70-bafd-df46-eafc-6507b264e606@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 12 Jul 2025 16:06:43 +0000
MIME-Version: 1.0
Subject: [oss-security] https://issues.apache.org/jira/browse/ZEPPELIN-6101:
 CVE-2024-41169: Apache Zeppelin: raft directory listing and file read 

Severity: moderate=20

Affected versions:

- Apache Zeppelin (org.apache.zeppelin:zeppelin-server) 0.10.1 before 0.12.0

Description:

The attacker can use the raft server protocol in an unauthenticated way. Th=
e attacker can see the server's resources, including directories and files.

This issue affects Apache Zeppelin: from 0.10.1 up to 0.12.0.

Users are recommended to upgrade to version 0.12.0,=C2=A0which fixes the is=
sue by removing the Cluster Interpreter.

Credit:

SuperX <superxyyang@gmail.com> (finder)

References:

https://github.com/apache/zeppelin/pull/4841
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-41169

