Received: (qmail 3764 invoked by uid 550); 3 Jun 2024 12:59:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16140 invoked from network); 3 Jun 2024 06:55:36 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7b0c3814-6145-9317-63eb-28d86ed6fdc9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 03 Jun 2024 06:55:25 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-36104: Apache OFBiz: Path traversal leading to a RCE 

Severity: important

Affected versions:

- Apache OFBiz before 18.12.14

Description:

Improper Limitation of a Pathname to a Restricted Directory ('Path Traversa=
l') vulnerability in Apache OFBiz.=C2=A0This issue affects Apache OFBiz: be=
fore 18.12.14.

Users are recommended to upgrade to version 18.12.14, which fixes the issue.

Credit:

godspeed (AAA@ZJU) (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://issues.apache.org/jira/browse/OFBIZ-13092
https://lists.apache.org/thread/sv0xr8b1j7mmh5p37yldy9vmnzbodz2o
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-36104

