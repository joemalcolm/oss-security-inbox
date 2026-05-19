Received: (qmail 26228 invoked by uid 550); 19 May 2026 16:20:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3193 invoked from network); 19 May 2026 08:47:55 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacopo Cappellato <jacopoc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4d783612-34af-7015-ee0d-6cce6810f09b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 08:35:23 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-41919: Apache OFBiz: Authentication Bypass due to
 Improper Neutralization of LDAP Special Elements in DN Construction 

Severity: moderate=20

Affected versions:

- Apache OFBiz before 24.09.06

Description:

Improper Neutralization of Special Elements used in an LDAP Query ('LDAP In=
jection') vulnerability in Apache OFBiz.

This issue affects Apache OFBiz: before 24.09.06.

Users are recommended to upgrade to version 24.09.06, which fixes the issue.

Credit:

zhaokaifei (China Telecom) (reporter)

References:

https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-41919

