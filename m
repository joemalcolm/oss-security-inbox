Received: (qmail 17996 invoked by uid 550); 14 Apr 2026 02:49:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9673 invoked from network); 14 Apr 2026 02:38:59 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Tilman Hausherr <tilman@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9d8a94bd-d740-f9ce-4e6d-2c1c54bf9dfe@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Apr 2026 02:36:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-33929: Apache PDFBox Examples: Path Traversal in PDFBox
 ExtractEmbeddedFiles Example Code 

Severity: low=20

Affected versions:

- Apache PDFBox Examples (org.apache.pdfbox:pdfbox-examples) 2.0.24 through=
 2.0.36
- Apache PDFBox Examples (org.apache.pdfbox:pdfbox-examples) 3.0.0 through =
3.0.7

Description:

Improper Limitation of a Pathname to a Restricted Directory ('Path Traversa=
l') vulnerability in Apache PDFBox Examples.

This issue affects the=20
ExtractEmbeddedFiles example in Apache PDFBox: from 2.0.24 through 2.0.36, =
from 3.0.0 through 3.0.7.


Users are recommended to update to version 2.0.37 or 3.0.8 once=20
available. Until then, they should apply the fix provided in GitHub PR=20
427.

The ExtractEmbeddedFiles example contained a path traversal vulnerability (=
CWE-22) mentioned in CVE-2026-23907. However the change in the releases 2.0=
.36 and 3.0.7 is flawed because it doesn't consider the file path separator=
. Because of that, a user having writing rights on /home/ABC could be victi=
m to a malicious PDF resulting in a write attempt to any path starting with=
=C2=A0/home/ABC, e.g.=C2=A0"/home/ABCDEF".

Users who have copied this example into their production code should apply =
the mentioned change. The example=20
has been changed accordingly and is available in the project repository.

This issue is being tracked as PDFBOX-6180=20

Credit:

Kaixuan Li (finder)

References:

https://github.com/apache/pdfbox/pull/427/changes
https://lists.apache.org/thread/op3lyx1ngzy4qycn06l6hljyf28ff0zs
https://pdfbox.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-33929
https://issues.apache.org/jira/browse/PDFBOX-6180

