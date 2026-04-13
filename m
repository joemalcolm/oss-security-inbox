Received: (qmail 13394 invoked by uid 550); 13 Apr 2026 14:04:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17688 invoked from network); 13 Apr 2026 12:55:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Qiuxia Fan <qiuxiafan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <dab3680d-c10e-dfcb-af01-bfb2559f26ec@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Apr 2026 12:55:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-34884: Apache SkyWalking MCP: SSRF via set_skywalking_url
 Tool and GraphQL Expression Injection in MCP Server 

Severity: important=20

Affected versions:

- Apache SkyWalking MCP 0.1.0

Description:

SSRF via set_skywalking_url Tool and GraphQL expression injection vulnerabi=
lity in Apache SkyWalking MCP.





This issue affects Apache SkyWalking MCP: 0.1.0.

Users are recommended to upgrade to version 0.2.0, which fixes this issue.

Credit:

Andrea Cosentino <ancosen@gmail.com> (reporter)

References:

https://skywalking.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-34884

