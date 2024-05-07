Received: (qmail 27696 invoked by uid 550); 7 May 2024 10:49:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30276 invoked from network); 7 May 2024 08:54:38 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e9fa641b-ad57-2d74-0e33-871fd5861611@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 May 2024 08:54:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-28148: Apache Superset: Incorrect datasource
 authorization on explore REST API  

Affected versions:

- Apache Superset before 4.0.0

Description:

An authenticated user could potentially access metadata for a datasource th=
ey are not authorized to view by submitting a targeted REST API request.Thi=
s issue affects Apache Superset: before 4.0.0.

Users are recommended to upgrade to version 4.0.0, which fixes the issue.

Credit:

Daniel Pedro Vaz Gaspar (remediation developer)
Krishna Nadh (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-28148

