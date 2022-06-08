Received: (qmail 26159 invoked by uid 550); 8 Jun 2022 09:49:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28285 invoked from network); 8 Jun 2022 09:44:19 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3e56ef2c-fd07-fbd7-bc4f-edb81527efde@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jun 2022 09:44:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-31813: Apache HTTP Server: mod_proxy X-Forwarded-For
 dropped by hop-by-hop mechanism 

Severity: low

Description:

Apache HTTP Server 2.4.53 and earlier may not send the X-Forwarded-* header=
s to the origin server based on client side Connection header hop-by-hop me=
chanism.
This may be used to bypass IP based authentication on the origin server/app=
lication.

Credit:

The Apache HTTP Server project would like to thank Gaetan Ferry (Synacktiv)=
 for reporting this issue

References:

https://httpd.apache.org/security/vulnerabilities_24.html

