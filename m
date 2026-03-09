Received: (qmail 18024 invoked by uid 550); 9 Mar 2026 02:50:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13978 invoked from network); 9 Mar 2026 02:48:24 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Haonan Hou <haonan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1579eaae-ad42-5d63-d349-56cd29d29e3f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 09 Mar 2026 02:47:27 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-55017: Apache IoTDB: Path Traversal Vulnerability 

Severity: low=20

Affected versions:

- Apache IoTDB 2.0.0 before 2.0.6
- Apache IoTDB 1.0.0 before 1.3.6

Description:

Improper Limitation of a Pathname to a Restricted Directory ('Path Traversa=
l') vulnerability in Apache IoTDB.

This issue affects Apache IoTDB: from 2.0.0 before 2.0.6, from 1.0.0 before=
 1.3.6.

Users are recommended to upgrade to version 1.3.6 and 2.0.6, which fixes th=
e issue.

Credit:

qx (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-55017

