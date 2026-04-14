Received: (qmail 15754 invoked by uid 550); 14 Apr 2026 02:49:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32251 invoked from network); 14 Apr 2026 02:45:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Abhishek Choudhary <shreemaanabhishek@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d2a84374-fb20-8f99-d634-c3dda9f4c247@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Apr 2026 02:40:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-31908: Apache APISIX: forward auth plugin allows header
 injection 

Severity: moderate=20

Affected versions:

- Apache APISIX 2.12.0 through 3.15.0

Description:

Header injection vulnerability in Apache APISIX.

The attacker can take advantage of certain configuration in forward-auth pl=
ugin to inject malicious headers.
This issue affects Apache APISIX: from 2.12.0 through 3.15.0.

Users are recommended to upgrade to version 3.16.0, which fixes the issue.

Credit:

SeungMyung Lee (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-31908

