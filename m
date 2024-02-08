Received: (qmail 9499 invoked by uid 550); 8 Feb 2024 12:58:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25792 invoked from network); 8 Feb 2024 03:26:07 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Wang Weibing <wwbmmm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5f4d95b0-26e2-be3d-398e-929596b3e8f7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 08 Feb 2024 03:28:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-23452: Apache bRPC: HTTP request smuggling vulnerability 

Severity: moderate

Affected versions:

- Apache bRPC 0.9.5 before 1.8.0

Description:

Request smuggling vulnerability in HTTP server in Apache bRPC 0.9.5~1.7.0 o=
n all platforms allows attacker to smuggle request.

Vulnerability Cause Description=EF=BC=9A

The http_parser does not comply with the RFC-7320 HTTP 1.1 specification.

Attack=C2=A0scenario:
If a message is received with both a Transfer-Encoding and a Content-Length=
 header field, such a message might indicate an attempt to perform request =
smuggling or response splitting.
One particular attack scenario is that a bRPC made http server on the backe=
nd receiving requests in one persistent connection from frontend server tha=
t uses TE to parse request with the logic that 'chunk' is contained in the =
TE field. in that case an attacker can smuggle a request into the connectio=
n to the backend server.=C2=A0

Solution:
You can choose one solution from below:
1. Upgrade bRPC to version 1.8.0, which fixes this issue. Download link:  h=
ttps://github.com/apache/brpc/releases/tag/1.8.0
 2. Apply this patch:=C2=A0 https://github.com/apache/brpc/pull/2518

Credit:

Pingtao Wei of 2012 Laboratories (finder)
Ziyang Chen of 2012 Laboratories (finder)
Haoran Zhi of 2012 Laboratories (finder)
Hongpei Li of 2012 Laboratories (finder)

References:

https://github.com/apache/brpc/releases/tag/1.8.0
https://github.com/apache/brpc/pull/2518
https://brpc.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-23452

