Received: (qmail 5185 invoked by uid 550); 19 Sep 2025 15:54:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3850 invoked from network); 19 Sep 2025 05:46:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Chen Xia <casion@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ce7fbc40-401a-cb12-bad4-aa107e340bc4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Sep 2025 05:46:31 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-29847: Apache Linkis: Arbitrary File Read via Double URL
 Encoding Bypass 

Severity: moderate=20

Affected versions:

- Apache Linkis 1.3.0 through 1.7.0

Description:

A vulnerability in Apache Linkis.

Problem Description
When using the JDBC engine and da
When using the JDBC engine and data source functionality, if the URL parame=
ter configured on the frontend has undergone multiple rounds of URL encodin=
g, it may bypass the system's checks. This bypass can trigger a vulnerabili=
ty that allows unauthorized access to system files via JDBC parameters.

Scope of Impact


This issue affects Apache Linkis: from 1.3.0 through 1.7.0.

Severity level


moderate
Solution
Continuously check if the connection information contains the "%" character=
; if it does, perform URL decoding.

Users are recommended to upgrade to version 1.8.0, which fixes the issue.

Credit:

Le1a and A1kaid from Threatbook (finder)
kinghao (analyst)
Le1a from Threatbook (remediation developer)
kinghao (remediation reviewer)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-29847

