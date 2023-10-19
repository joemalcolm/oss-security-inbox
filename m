Received: (qmail 22013 invoked by uid 550); 19 Oct 2023 13:16:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24067 invoked from network); 19 Oct 2023 09:43:05 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0c264da3-b6db-d2a0-5a59-ffdffc19dd7b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 19 Oct 2023 09:40:10 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-31122: Apache HTTP Server: mod_macro buffer over-read 

Severity: low

Affected versions:

- Apache HTTP Server through 2.4.57

Description:

Out-of-bounds Read vulnerability in mod_macro of Apache HTTP Server.This is=
sue affects Apache HTTP Server: through 2.4.57.

Credit:

David Shoon (github/davidshoon) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-31122

Timeline:

2023-04-04: Reported to security team

