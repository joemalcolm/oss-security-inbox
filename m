Received: (qmail 1661 invoked by uid 550); 6 May 2026 00:44:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32206 invoked from network); 5 May 2026 23:19:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Pedro Henrique Oliveira dos Santos <pedro@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a4761738-afe1-638b-3320-fc83b1963bcd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 05 May 2026 23:17:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-43646: Apache Wicket: crafted URLs can bypass
 PackageResourceGuard 

Severity: critical=20

Affected versions:

- Apache Wicket 8.0.0 through 8.17.0
- Apache Wicket 9.0.0 through 9.22.0
- Apache Wicket 10.0.0 through 10.8.0

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in=
 Apache Wicket.

This issue affects Apache Wicket: from 8.0.0 through 8.17.0, from 9.0.0 thr=
ough 9.22.0, from 10.0.0 through 10.8.0.

Users are recommended to upgrade to version 10.9.0, which fixes the issue.

References:

https://wicket.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-43646

