Received: (qmail 22075 invoked by uid 550); 10 Jul 2025 17:35:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28548 invoked from network); 10 Jul 2025 17:21:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d22efe03-5f68-b462-6b00-99935b222139@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 10 Jul 2025 17:14:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-49630: Apache HTTP Server: mod_proxy_http2 denial of
 service 

Severity: low=20

Affected versions:

- Apache HTTP Server 2.4.26 through 2.4.63

Description:

In certain proxy configurations, a denial of service attack against=C2=A0Ap=
ache HTTP Server versions 2.4.26 through to 2.4.63 can be triggered by untr=
usted clients causing an assertion in mod_proxy_http2.

Configurations affected are a reverse proxy is configured for an HTTP/2 bac=
kend, with ProxyPreserveHost set to "on".

Credit:

Anthony CORSIEZ (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-49630

Timeline:

2025-06-04: Report received
2025-07-07: 2.4.x revision 1927044

