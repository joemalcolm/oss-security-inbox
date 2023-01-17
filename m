Received: (qmail 3820 invoked by uid 550); 17 Jan 2023 19:15:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28601 invoked from network); 17 Jan 2023 19:06:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <704eda51-7f85-fb5b-d6ab-0051f24b094d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Jan 2023 19:06:20 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2006-20001: Apache HTTP Server: mod_dav out of  bounds read,
 or write of zero byte 

Severity: moderate

Description:

A carefully crafted If: request header can cause a memory read, or write of=
 a single zero byte, in a pool (heap) memory location beyond the header val=
ue sent. This could cause the process to crash.

This issue affects Apache HTTP Server 2.4.54 and earlier.

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2006-20001

Timeline:

2006-10-31: Described in first edition of "The Art of Software Security Ass=
essment"
2022-08-10: Reported to security team

