Received: (qmail 14153 invoked by uid 550); 14 Apr 2026 02:48:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25882 invoked from network); 14 Apr 2026 02:43:17 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Abhishek Choudhary <shreemaanabhishek@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e5f58634-0c77-fa8b-3af8-b54c6cb60682@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Apr 2026 02:40:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-31924: Apache APISIX: Plugin tencent-cloud-cls log export
 uses plaintext HTTP 

Severity: moderate=20

Affected versions:

- Apache APISIX 2.99.0 through 3.15.0

Description:

Cleartext Transmission of Sensitive Information vulnerability in Apache API=
SIX.

tencent-cloud-cls log export uses plaintext HTTP
This issue affects Apache APISIX: from 2.99.0 through 3.15.0.

Users are recommended to upgrade to version 3.16.0, which fixes the issue.

Credit:

Oleh Konko (finder)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-31924

