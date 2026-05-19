Received: (qmail 30359 invoked by uid 550); 19 May 2026 16:20:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19614 invoked from network); 19 May 2026 08:51:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacopo Cappellato <jacopoc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e8cede46-d165-b748-2c51-a192dbdedad5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 08:36:13 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-45434: Apache OFBiz: Authentication Bypass via
 Password-Change Logic Flaw Leading to RCE 

Severity: important=20

Affected versions:

- Apache OFBiz before 24.09.06

Description:

Improper Authentication vulnerability in Apache OFBiz via Password-Change L=
ogic Flaw Leading to Remote Code Execution

This issue affects Apache OFBiz: before 24.09.06.

Users are recommended to upgrade to version 24.09.06, which fixes the issue.

Credit:

Mike Cole (reporter)

References:

https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-45434

