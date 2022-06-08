Received: (qmail 10216 invoked by uid 550); 8 Jun 2022 09:47:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17545 invoked from network); 8 Jun 2022 09:42:36 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e9dfb469-1e96-4f36-bc87-990a8db23b0c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jun 2022 09:42:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-26377: Apache HTTP Server: mod_proxy_ajp: Possible
 request smuggling 

Severity: moderate

Description:

Inconsistent Interpretation of HTTP Requests ('HTTP Request Smuggling') vul=
nerability in mod_proxy_ajp of Apache HTTP Server allows an attacker to smu=
ggle requests to the AJP server it forwards requests to.  This issue affect=
s Apache HTTP Server Apache HTTP Server 2.4 version 2.4.53 and prior versio=
ns.

Credit:

Ricter Z @ 360 Noah Lab

References:

https://httpd.apache.org/security/vulnerabilities_24.html

