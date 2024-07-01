Received: (qmail 6023 invoked by uid 550); 1 Jul 2024 13:57:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7244 invoked from network); 1 Jul 2024 12:47:27 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cc019206-01e6-3197-78f4-593df90960ec@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jul 2024 12:42:46 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-38477: Apache HTTP Server: Crash resulting in Denial of
 Service in mod_proxy via a malicious request 

Severity: important

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.59

Description:

null pointer dereference in mod_proxy in Apache HTTP Server 2.4.59 and earl=
ier allows an attacker to crash the server via a malicious request.
Users are recommended to upgrade to version 2.4.60, which fixes this issue.

Credit:

Orange Tsai (@orange_8361) from DEVCORE (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-38477

Timeline:

2024-04-01: Reported

