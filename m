Received: (qmail 3156 invoked by uid 550); 10 Mar 2026 11:36:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30497 invoked from network); 10 Mar 2026 09:22:39 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Tilman Hausherr <tilman@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8642eca7-9ea4-e688-6a2f-afff338fcbfa@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 10 Mar 2026 09:20:37 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-23907: Apache PDFBox Examples: Path Traversal in PDFBox
 ExtractEmbeddedFiles Example Code 

Severity: moderate=20

Affected versions:

- Apache PDFBox Examples (org.apache.pdfbox:pdfbox-examples) 2.0.24 through=
 2.0.36
- Apache PDFBox Examples (org.apache.pdfbox:pdfbox-examples) 3.0.0 through =
3.0.7

Description:

This issue affects the=20
ExtractEmbeddedFiles example in=C2=A0Apache PDFBox: from 2.0.24 through 2.0=
.36, from 3.0.0 through 3.0.7.


The ExtractEmbeddedFiles example contains a path traversal vulnerability (C=
WE-22) because=20
the filename that is obtained from=20
PDComplexFileSpecification.getFilename() is appended to the extraction path.

Users who have copied this example into their production code should=20
review it to ensure that the extraction path is acceptable. The example=20
has been changed accordingly, now the initial path and the extraction=20
paths are converted into canonical paths and it is verified that=20
extraction path contains the initial path. The documentation has also=20
been adjusted.

Credit:

Joakim B=C3=BClow (Neo4j Security Team) (finder)

References:

https://github.com/JoakimBulow/
https://pdfbox.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-23907

