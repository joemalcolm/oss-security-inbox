Received: (qmail 19682 invoked by uid 550); 10 Jul 2025 17:35:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3407 invoked from network); 10 Jul 2025 17:17:13 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4b5a13c9-7e55-f0cd-cf17-289b92faeab0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 10 Jul 2025 17:13:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-47252: Apache HTTP Server: mod_ssl error log variable
 escaping 

Severity: low=20

Affected versions:

- Apache HTTP Server 2.4 through 2.4.63

Description:

Insufficient escaping of user-supplied data in mod_ssl in Apache HTTP Serve=
r 2.4.63 and earlier allows an untrusted SSL/TLS client to insert escape ch=
aracters into log files in some configurations.

In a logging configuration where CustomLog is used with "%{varname}x" or "%=
{varname}c" to log variables provided by mod_ssl such as SSL_TLS_SNI, no es=
caping is performed by either mod_log_config or mod_ssl and unsanitized dat=
a provided by the client may appear in log files.

Credit:

John Runyon (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-47252

Timeline:

2024-09-18: reported
2025-07-07: 2.4.x revision 1927042

