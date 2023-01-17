Received: (qmail 5383 invoked by uid 550); 17 Jan 2023 19:16:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31891 invoked from network); 17 Jan 2023 19:10:04 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <eff1e2ba-5f3c-beb7-9fb3-a94eb11309a6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Jan 2023 19:09:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-36760: Apache HTTP Server: mod_proxy_ajp Possible request
 smuggling 

Severity: moderate

Description:

Inconsistent Interpretation of HTTP Requests ('HTTP Request Smuggling') vul=
nerability in mod_proxy_ajp of Apache HTTP Server allows an attacker to smu=
ggle requests to the AJP server it forwards requests to.  This issue affect=
s Apache HTTP Server Apache HTTP Server 2.4 version 2.4.54 and prior versio=
ns.

Credit:

ZeddYu_Lu from Qi'anxin Research Institute of Legendsec at Qi'anxin Group (=
finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-36760

Timeline:

2022-07-12: Reported to security team

