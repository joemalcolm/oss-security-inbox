Received: (qmail 11522 invoked by uid 550); 14 Mar 2024 20:48:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17464 invoked from network); 14 Mar 2024 15:48:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andor Molnar <andor@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4b40fc91-a70e-5422-1099-49e992eafdde@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 Mar 2024 15:52:52 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-23944: Apache ZooKeeper: Information disclosure in
 persistent watcher handling 

Severity: critical

Affected versions:

- Apache ZooKeeper 3.9.0 through 3.9.1
- Apache ZooKeeper 3.8.0 through 3.8.3
- Apache ZooKeeper 3.6.0 through 3.7.2

Description:

Information disclosure in persistent watchers handling in Apache ZooKeeper =
due to missing ACL check. It allows an attacker to monitor child znodes by =
attaching a persistent watcher (addWatch command) to a parent which the att=
acker has already access to. ZooKeeper server doesn't do ACL check when the=
 persistent watcher is triggered and as a consequence, the full path of zno=
des that a watch event gets triggered upon is exposed to the owner of the w=
atcher. It's important to note that only the path is exposed by this vulner=
ability, not the data of znode, but since znode path can contain sensitive =
information like user name or login ID, this issue is potentially critical.

Users are recommended to upgrade to version 3.9.2, 3.8.4 which fixes the is=
sue.

Credit:

=E5=91=A8=E5=90=89=E5=AE=89(=E5=AF=92=E6=B3=89) <zhoujian.zja@alibaba-inc.c=
om> (reporter)

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-23944

