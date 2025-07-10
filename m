Received: (qmail 15739 invoked by uid 550); 10 Jul 2025 17:35:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9361 invoked from network); 10 Jul 2025 17:12:39 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d46d26a6-addb-572b-7bfb-98db72fcdff8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 10 Jul 2025 17:12:28 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-42516: Apache HTTP Server: HTTP response splitting 

Severity: moderate=20

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.63

Description:

HTTP response splitting in the core of Apache HTTP Server allows an attacke=
r who can manipulate the Content-Type response headers of applications host=
ed or proxied by the server can split the HTTP response.

This vulnerability was described as CVE-2023-38709 but the patch included i=
n Apache HTTP Server 2.4.59 did not address the issue.

Users are recommended to upgrade to version 2.4.64, which fixes this issue.

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-42516

Timeline:

2024-07-18: reported
2025-07-07: 2.4.x 1927039

