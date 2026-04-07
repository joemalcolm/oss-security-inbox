Received: (qmail 21612 invoked by uid 550); 7 Apr 2026 14:40:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13923 invoked from network); 7 Apr 2026 13:58:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Michael Semb Wever <mck@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7768d3d7-10e2-c605-706a-a639c55b193f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Apr 2026 13:57:47 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-27315: Apache Cassandra: cqlsh history sensitive
 information leak 

Severity: low=20

Affected versions:

- Apache Cassandra (apache-cassandra) 4.0 through 4.0.19

Description:

Sensitive Information Leak in cqlsh in Apache Cassandra 4.0 allows access t=
o sensitive information, like passwords, from previously executed cqlsh com=
mand via =C2=A0~/.cassandra/cqlsh_history=C2=A0local file access.

Users are recommended to upgrade to version 4.0.20, which fixes this issue.

--
Description: Cassandra's command-line tool, cqlsh, provides a command histo=
ry feature that allows users to recall previously executed commands using t=
he up/down arrow keys. These history records are saved in the ~/.cassandra/=
cqlsh_history file in the user's home directory.

However, cqlsh does not redact sensitive information when saving command hi=
story. This means that if a user executes operations involving passwords (s=
uch as logging in or creating users) within cqlsh, these passwords are perm=
anently stored in cleartext in the history file on the disk.

This issue is being tracked as CASSANDRA-21180=20

Credit:

Youlong Chen, Institute of Computing Technology, Chinese Academy of Science=
s (reporter)

References:

https://issues.apache.org/jira/browse/CASSANDRA-21180
https://cassandra.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-27315
https://issues.apache.org/jira/browse/CASSANDRA-21180

