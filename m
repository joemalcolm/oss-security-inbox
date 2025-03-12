Received: (qmail 28170 invoked by uid 550); 12 Mar 2025 15:51:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23876 invoked from network); 12 Mar 2025 15:35:12 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Carsten Ziegeler <cziegeler@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1aec3651-68bc-c3bb-0990-d7a4213c9d89@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 12 Mar 2025 15:34:06 +0000
MIME-Version: 1.0
Subject: [oss-security] FELIX-6753: CVE-2025-27867: Apache Felix HTTP Webconsole Plugin:
 XSS in HTTP Webconsole Plugin 

Severity: moderate

Affected versions:

- Apache Felix HTTP Webconsole Plugin Version 1.x through 1.2.0

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Sc=
ripting') vulnerability in Apache Felix HTTP Webconsole Plugin.

This issue affects Apache Felix HTTP Webconsole Plugin: from Version 1.X th=
rough 1.2.0.

Users are recommended to upgrade to version 1.2.2, which fixes the issue.

Credit:

Viktor Mares (me@viktormares.com) (finder)

References:

https://felix.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-27867

