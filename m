Received: (qmail 5196 invoked by uid 550); 23 Mar 2025 16:23:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16315 invoked from network); 23 Mar 2025 13:32:12 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Gary D. Gregory" <ggregory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <feeee9a5-f774-6b87-ca7d-df57abc0ea02@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 23 Mar 2025 13:29:52 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27553: Apache Commons VFS: Possible path traversal issue
 when using NameScope.DESCENDENT 

Severity: low

Affected versions:

- Apache Commons VFS before 2.10.0

Description:

Relative Path Traversal vulnerability in Apache Commons VFS before 2.10.0.

The FileObject API in Commons VFS has a 'resolveFile' method that
takes a 'scope' parameter. Specifying 'NameScope.DESCENDENT' promises that =
"an exception is thrown if the resolved file is not a descendent of
the base file". However, when the path contains encoded ".."
characters (for example, "%2E%2E/bar.txt"), it might return file objects th=
at are not
a descendent of the base file, without throwing an exception.
This issue affects Apache Commons VFS: before 2.10.0.

Users are recommended to upgrade to version 2.10.0, which fixes the issue.

Credit:

Arnout Engelen (finder)

References:

https://commons.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-27553

