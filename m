Received: (qmail 11335 invoked by uid 550); 7 Jul 2023 12:40:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7614 invoked from network); 7 Jul 2023 12:34:59 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Guillaume Nodet <gnodet@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8a1b0d74-3dc0-1228-1bf1-d086ad7d84e1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 07 Jul 2023 12:34:46 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-35887: Apache MINA SSHD: Information disclosure bugs with
 RootedFilesystem 

Affected versions:

- Apache MINA SSHD 1.0 before 2.10

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in=
 Apache Software Foundation Apache MINA.

In SFTP servers implemented using Apache MINA SSHD that use a RootedFileSys=
tem, logged users may be able to discover "exists/does not exist" informati=
on about items outside the rooted tree via paths including parent navigatio=
n ("..") beyond the root, or involving symlinks.

This issue affects Apache MINA: from 1.0 before 2.10.

Thanks to Andrew Pikler for discovering the issue and helping to fix it.

This issue is being tracked as SSHD-1324=20

References:

https://mina.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-35887
https://issues.apache.org/jira/browse/SSHD-1324

