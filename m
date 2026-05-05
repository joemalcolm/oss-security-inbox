Received: (qmail 5257 invoked by uid 550); 6 May 2026 00:45:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3958 invoked from network); 5 May 2026 23:19:26 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Pedro Henrique Oliveira dos Santos <pedro@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bc1ad47a-4ca6-2e38-42bd-beeb3b16a99d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 05 May 2026 23:18:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-43975: Apache Wicket: Possible malicious path traversal
 in FolderUploadsFileManager 

Severity: critical=20

Affected versions:

- Apache Wicket 10.0.0 through 10.8.0
- Apache Wicket 9.0.0 through 9.22.0
- Apache Wicket 8.0.0 through 8.17

Description:

FolderUploadsFileManager in Apache Wicket does not validate or sanitize the=
 uploadFieldId parameter or the clientFileName
 before constructing file paths, allowing an unauthenticated attacker to
 write arbitrary files outside the intended upload directory or read=20
files from arbitrary locations on the server.

This issue affects Apache Wicket: from 8.0.0 through 8.17.0, from 9.0.0 thr=
ough 9.22.0, from 10.0.0 through 10.8.0.

Users are recommended to upgrade to version 10.9.0, which fixes the issue.

References:

https://github.com/apache/wicket/pull/1432
https://wicket.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-43975

