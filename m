Received: (qmail 29873 invoked by uid 550); 8 Jun 2022 09:49:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5353 invoked from network); 8 Jun 2022 09:45:25 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <81e6fbc2-681c-de5c-5f1e-8513fb2fac10@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jun 2022 09:45:13 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-28615: Apache HTTP Server: Read beyond bounds in
 ap_strcmp_match() 

Severity: low

Description:

Apache HTTP Server 2.4.53 and earlier may crash or disclose information due=
 to a read beyond bounds in ap_strcmp_match() when provided with an extreme=
ly large input buffer.  While no code distributed with the server can be co=
erced into such a call, third-party modules or lua scripts that use ap_strc=
mp_match() may hypothetically be affected.

Credit:

The Apache HTTP Server project would like to thank Ronald Crane (Zippenhop =
LLC) for reporting this issue

References:

https://httpd.apache.org/security/vulnerabilities_24.html

