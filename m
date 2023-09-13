Received: (qmail 1207 invoked by uid 550); 13 Sep 2023 20:32:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9544 invoked from network); 13 Sep 2023 20:07:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Gary D. Gregory" <ggregory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c41da935-496d-6d34-8514-ef001a6941d1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 Sep 2023 20:06:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-42503: Apache Commons Compress: Denial of service via CPU
 consumption for malformed TAR file 

Severity: moderate

Affected versions:

- Apache Commons Compress 1.22 before 1.24.0

Description:

Improper Input Validation, Uncontrolled Resource Consumption vulnerability =
in Apache Commons Compress in TAR parsing.This issue affects Apache Commons=
 Compress:=C2=A0from 1.22 before 1.24.0.

Users are recommended to upgrade to version 1.24.0, which fixes the issue.

A third party can create a malformed TAR file by manipulating file modifica=
tion times headers, which when parsed with Apache Commons Compress, will ca=
use a denial of service issue via CPU consumption.

In version 1.22 of Apache Commons Compress, support was added for file modi=
fication times with higher precision (issue # COMPRESS-612 [1]). The format=
 for the PAX extended headers carrying this data consists of two numbers se=
parated by a period [2], indicating seconds and subsecond precision (for ex=
ample =E2=80=9C1647221103.5998539=E2=80=9D). The impacted fields are =E2=80=
=9Catime=E2=80=9D, =E2=80=9Cctime=E2=80=9D, =E2=80=9Cmtime=E2=80=9D and =E2=
=80=9CLIBARCHIVE.creationtime=E2=80=9D. No input validation is performed pr=
ior to the parsing of header values.

Parsing of these numbers uses the BigDecimal [3] class from the JDK which h=
as a publicly known algorithmic complexity issue when doing operations on l=
arge numbers, causing denial of service (see issue # JDK-6560193 [4]). A th=
ird party can manipulate file time headers in a TAR file by placing a numbe=
r with a very long fraction (300,000 digits) or a number with exponent nota=
tion (such as =E2=80=9C9e9999999=E2=80=9D) within a file modification time =
header, and the parsing of files with these headers will take hours instead=
 of seconds, leading to a denial of service via exhaustion of CPU resources=
. This issue is similar to CVE-2012-2098 [5].

[1]:  https://issues.apache.org/jira/browse/COMPRESS-612=20
[2]:  https://pubs.opengroup.org/onlinepubs/9699919799/utilities/pax.html#t=
ag_20_92_13_05=20
[3]:  https://docs.oracle.com/javase/8/docs/api/java/math/BigDecimal.html=20
[4]:  https://bugs.openjdk.org/browse/JDK-6560193=20
[5]:  https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2012-2098=20

Only applications using CompressorStreamFactory class (with auto-detection =
of file types), TarArchiveInputStream and TarFile classes to parse TAR file=
s are impacted. Since this code was introduced in v1.22, only that version =
and later versions are impacted.

Credit:

Yakov Shafranovich, Amazon Web Services (reporter)

References:

https://commons.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-42503

