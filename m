Received: (qmail 12052 invoked by uid 550); 7 Mar 2023 14:07:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19478 invoked from network); 7 Mar 2023 12:57:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <089093c8-9749-efd1-71ad-aa96757010c0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Mar 2023 12:55:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-27522: Apache HTTP Server: mod_proxy_uwsgi HTTP response
 splitting 

Severity: moderate

Description:

HTTP Response Smuggling vulnerability in Apache HTTP Server via mod_proxy_u=
wsgi. This issue affects Apache HTTP Server: from 2.4.30 through 2.4.55.

Special characters in the origin response header can truncate/split the res=
ponse forwarded to the client.

Credit:

Dimas Fariski Setyawan Putra (nyxsorcerer) (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-27522

Timeline:

2023-01-29: Reported to security team

