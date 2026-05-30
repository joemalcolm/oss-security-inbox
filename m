Received: (qmail 12252 invoked by uid 550); 30 May 2026 12:13:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25791 invoked from network); 30 May 2026 08:32:12 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Thomas Wolf <twolf@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e16ac0e5-7504-4d3e-65dc-2d57a62cae86@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 08:31:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-48827: Apache MINA SSHD: Path traversal in
 org.apache.sshd:sshd-git 

Severity: moderate=20

Affected versions:

- Apache MINA SSHD (org.apache.sshd:sshd-git) 2.0.0 through 2.17.1
- Apache MINA SSHD (org.apache.sshd:sshd-git) 3.0.0-M1 through 3.0.0-M3

Description:

Path traversal vulnerability in Apache MINA SSHD bundle sshd-git. Lack of p=
ath validation in git-upload-pack, git-receive-pack, and other git operatio=
ns allows users authenticated over SSH access to git repositories outside t=
he configured git server root directory.




Applications are affected if they use org.apache.sshd:sshd-git. Application=
s not using sshd-git are not affected.




Users are advised to upgrade affected applications to Apche MINA SSHD 2.18.=
0, which fixes the issue.




The issue also is present in the pre-release milestones 3.0.0-M1 to 3.0.0-M=
3 for a new upcoming new major version 3.0.0. Again, applications are affec=
ted only if they use sshd-git. Upgrade affected applications to 3.0.0-M4.




We would like to point out that a professional git server should not rely s=
olely on file system layout and permissions, but should implement additiona=
l security controls to govern access to git repositories and operations all=
owed on particular git repositories.

Credit:

j0hndo (dohyun4466@gmail.com) (finder)

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-48827

