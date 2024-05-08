Received: (qmail 9938 invoked by uid 550); 9 May 2024 10:52:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28122 invoked from network); 8 May 2024 14:39:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <18ab72f5-766b-22d7-3591-5748606e62a9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 May 2024 14:39:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-32113: Apache OFBiz: Path traversal leading to RCE 

Severity: important

Affected versions:

- Apache OFBiz before 18.12.13

Description:

Improper Limitation of a Pathname to a Restricted Directory ('Path Traversa=
l') vulnerability in Apache OFBiz.This issue affects Apache OFBiz: before 1=
8.12.13.

Users are recommended to upgrade to version 18.12.13, which fixes the issue.

Credit:

Qiyi Zhang (RacerZ) @secsys from Fudan (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://issues.apache.org/jira/browse/OFBIZ-13006
https://lists.apache.org/thread/np8vgzr06z6cwm3tz7cs3609bdrj8526
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-32113

