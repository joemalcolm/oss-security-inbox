Received: (qmail 11838 invoked by uid 550); 7 Mar 2023 14:07:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18329 invoked from network); 7 Mar 2023 12:57:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <035a67dc-3b6a-3db1-1ad5-7fafac835c1f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Mar 2023 12:55:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-25690: Apache HTTP Server: HTTP request splitting with
 mod_rewrite and mod_proxy 

Severity: important

Description:

Some mod_proxy configurations on Apache HTTP Server versions 2.4.0 through =
2.4.55 allow a HTTP Request Smuggling attack.




Configurations are affected when mod_proxy is enabled along with some form =
of RewriteRule
 or ProxyPassMatch in which a non-specific pattern matches
 some portion of the user-supplied request-target (URL) data and is then
 re-inserted into the proxied request-target using variable=20
substitution. For example, something like:




RewriteEngine on
RewriteRule "^/here/(.*)" " http://example.com:8080/elsewhere?$1" http://ex=
ample.com:8080/elsewhere ; [P]
ProxyPassReverse /here/  http://example.com:8080/ http://example.com:8080/=
=20


Request splitting/smuggling could result in bypass of access controls in th=
e proxy server, proxying unintended URLs to existing origin servers, and ca=
che poisoning.

Credit:

Lars Krapf of Adobe (finder)

References:

https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-25690

Timeline:

2023-02-02: reported

