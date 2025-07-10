Received: (qmail 17686 invoked by uid 550); 10 Jul 2025 17:35:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24136 invoked from network); 10 Jul 2025 17:15:15 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ffdab13f-5e81-388d-0679-cb5b08525608@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 10 Jul 2025 17:13:47 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-43394: Apache HTTP Server: SSRF on Windows due to UNC
 paths 

Severity: moderate=20

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.63

Description:

Server-Side Request Forgery (SSRF)=C2=A0in Apache HTTP Server on Windows al=
lows to potentially leak NTLM hashes to a malicious server via=C2=A0
mod_rewrite or apache expressions that pass unvalidated request input.

This issue affects Apache HTTP Server: from 2.4.0 through 2.4.63.

Note: =C2=A0The Apache HTTP Server Project will be setting a higher bar for=
 accepting vulnerability reports regarding SSRF via UNC paths.=20

The server offers limited protection against administrators directing the s=
erver to open UNC paths.
Windows servers should limit the hosts they will connect over via SMB based=
 on the nature of NTLM authentication.

Credit:

Kainan Zhang (@4xpl0r3r) from Fortinet (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-43394

Timeline:

2024-08-10: reported
2025-07-07: 2.4.x revision 1927041

