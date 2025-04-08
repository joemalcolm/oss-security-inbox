Received: (qmail 19883 invoked by uid 550); 8 Apr 2025 12:16:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26425 invoked from network); 8 Apr 2025 10:45:48 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: PJ Fanning <fanningpj@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a66da195-debb-1ec5-24f0-317db499c450@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 08 Apr 2025 10:44:37 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-31672: Apache POI: parsing OOXML based files (xlsx, docx,
 etc.), poi-ooxml could read unexpected data if underlying zip has
 duplicate zip entry names 

Severity: moderate

Affected versions:

- Apache POI before 5.4.0

Description:

Improper Input Validation vulnerability in Apache POI. The issue affects th=
e parsing of OOXML format files like xlsx, docx and pptx. These file format=
s are basically zip files and it is possible for malicious users to add zip=
 entries with duplicate names (including the path) in the zip. In this case=
, products reading the affected file could read different data because 1 of=
 the zip entries with the duplicate name is selected over another but diffe=
rent products may choose a different zip entry.
This issue affects Apache POI poi-ooxml before 5.4.0. poi-ooxml 5.4.0 has a=
 check that throws an exception if zip entries with duplicate file names ar=
e found in the input file.
Users are recommended to upgrade to version poi-ooxml 5.4.0, which fixes th=
e issue. Please read  https://poi.apache.org/security.html  for recommendat=
ions about how to use the POI libraries securely.

This issue is being tracked as bug-69620=20

References:

https://bz.apache.org/bugzilla/show_bug.cgi?id=3D69620
https://poi.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-31672
https://issues.apache.org/jira/browse/bug-69620

