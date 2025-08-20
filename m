Received: (qmail 32082 invoked by uid 550); 20 Aug 2025 19:46:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32031 invoked from network); 20 Aug 2025 19:46:25 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Tim Allison <tallison@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2ad0b7ba-3a74-a21f-da8a-65d063ca2797@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 Aug 2025 19:45:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-54988: Apache Tika PDF parser module: XXE vulnerability
 in PDFParser's handling of XFA 

Severity: critical=20

Affected versions:

- Apache Tika PDF parser module (org.apache.tika:tika-parser-pdf-module) 1.=
13 through 3.2.1

Description:

Critical XXE in Apache Tika (tika-parser-pdf-module) in Apache Tika 1.13 th=
rough and including 3.2.1 on all platforms allows an attacker to carry out =
XML External Entity injection via a crafted XFA file inside of a PDF. An at=
tacker may be able to read sensitive data or trigger malicious requests to =
internal resources or third-party servers. Note that the tika-parser-pdf-mo=
dule is used as a dependency in several Tika packages including at least: t=
ika-parsers-standard-modules, tika-parsers-standard-package, tika-app, tika=
-grpc and tika-server-standard.

Users are recommended to upgrade to version 3.2.2, which fixes this issue.

Credit:

Paras Jain and Yakov Shafranovich of Amazon. (reporter)

References:

https://tika.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-54988

