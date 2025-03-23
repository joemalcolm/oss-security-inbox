Received: (qmail 5570 invoked by uid 550); 23 Mar 2025 16:23:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19584 invoked from network); 23 Mar 2025 13:33:27 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Gary D. Gregory" <ggregory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6167946a-2516-e021-45a8-f903b72d4508@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 23 Mar 2025 13:30:23 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-30474: Apache Commons VFS: Failing to find an FTP file
 can reveal the URI's password in an error message 

Severity: moderate

Affected versions:

- Apache Commons VFS before 2.10.0

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in=
 Apache Commons VFS.

The FtpFileObject class can throw an exception when a file is not found, re=
vealing the original URI in its message, which may include a password. The =
fix is to mask the password in the exception message
This issue affects Apache Commons VFS: before 2.10.0.

Users are recommended to upgrade to version 2.10.0, which fixes the issue.

This issue is being tracked as VFS-169=20

Credit:

Marek =C5=A0unda (finder)

References:

https://issues.apache.org/jira/browse/VFS-169
https://commons.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-30474
https://issues.apache.org/jira/browse/VFS-169

