Received: (qmail 5770 invoked by uid 550); 1 Jul 2024 13:56:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7477 invoked from network); 1 Jul 2024 12:47:38 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c59b9c19-6b04-b13f-c267-47c41b28724f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jul 2024 12:42:30 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-38476: Apache HTTP Server may use exploitable/malicious
 backend application output to run local handlers via internal redirect 

Severity: important

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.59

Description:

Vulnerability in core of Apache HTTP Server 2.4.59 and earlier are vulnerab=
ly to information disclosure, SSRF or local script execution via=C2=A0backe=
nd applications whose response headers are malicious or exploitable.

Users are recommended to upgrade to version 2.4.60, which fixes this issue.

Credit:

Orange Tsai (@orange_8361) from DEVCORE (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-38476

Timeline:

2024-04-01: reported

