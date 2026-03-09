Received: (qmail 3578 invoked by uid 550); 9 Mar 2026 02:58:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26087 invoked from network); 9 Mar 2026 02:55:41 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Haonan Hou <haonan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7d35c48d-16af-9bbb-9972-aa34e444c3b6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 09 Mar 2026 02:55:31 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-64152: Apache IoTDB: Path Traversal Vulnerability 

Severity: low=20

Affected versions:

- Apache IoTDB 1.0.0 before 1.3.6
- Apache IoTDB 2.0.0 before 2.0.7

Description:

Improper Limitation of a Pathname to a Restricted Directory ('Path Traversa=
l') vulnerability in Apache IoTDB.

This issue affects Apache IoTDB: from 1.0.0 before 1.3.6, from 2.0.0 before=
 2.0.7.

Users are recommended to upgrade to version 1.3.6 and 2.0.7, which fixes th=
e issue.

Credit:

Yan Nan (Detecon Security Lab) (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-64152

