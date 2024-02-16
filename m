Received: (qmail 23992 invoked by uid 550); 16 Feb 2024 15:48:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20374 invoked from network); 16 Feb 2024 14:59:33 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0231daba-e200-b058-6857-e931284544ad@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 16 Feb 2024 15:01:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-23807: Apache Xerces C++: Use-after-free on external DTD
 scan 

Severity: moderate

Affected versions:

- Apache Xerces C++ 3.0.0 before 3.2.5

Description:

The Apache Xerces C++ XML parser on versions 3.0.0 before 3.2.5 contains a =
use-after-free error triggered during the scanning of external DTDs.

Users are recommended to upgrade to version 3.2.5 which fixes the issue, or=
 mitigate the issue by disabling DTD processing. This can be accomplished v=
ia the DOM using a standard parser feature, or via SAX using the XERCES_DIS=
ABLE_DTD environment variable.

This issue has been disclosed before as CVE-2018-1311, but unfortunately th=
at advisory incorrectly stated the issue would be fixed in version 3.2.3 or=
 3.2.4.

This issue is being tracked as XERCESC-2188=20

References:

https://github.com/apache/xerces-c/pull/54
https://xerces.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-23807
https://issues.apache.org/jira/browse/XERCESC-2188

