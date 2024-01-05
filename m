Received: (qmail 13643 invoked by uid 550); 5 Jan 2024 15:20:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13353 invoked from network); 5 Jan 2024 15:19:44 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0eae5314-95a5-fb4d-5e5a-4b1ddc8c384e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jan 2024 15:20:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-51441: Apache Axis 1.x (EOL) may allow SSRF when
 untrusted input is passed to the service admin HTTP API 

Severity: low

Affected versions:

- Apache Axis through 1.3

Description:

** UNSUPPORTED WHEN ASSIGNED ** Improper Input Validation vulnerability in =
Apache Axis allowed users with access to the admin service to perform possi=
ble SSRF
This issue affects Apache Axis: through 1.3.

As Axis 1 has been EOL we recommend you migrate to a different SOAP engine,=
 such as Apache Axis 2/Java. Alternatively you could use a build of Axis wi=
th the patch from  https://github.com/apache/axis-axis1-java/commit/685c309=
febc64aa393b2d64a05f90e7eb9f73e06  applied. The Apache Axis project does no=
t expect to create an Axis 1.x release=20
fixing this problem, though contributors that would like to work towards
 this are welcome.

Credit:

thiscodecc of MoyunSec Vlab and Bing (finder)

References:

https://github.com/apache/axis-axis1-java/commit/685c309febc64aa393b2d64a05=
f90e7eb9f73e06
https://axis.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-51441

