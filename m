Received: (qmail 12027 invoked by uid 550); 8 Jun 2022 09:47:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22127 invoked from network); 8 Jun 2022 09:43:37 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8827a2d7-3499-efe9-4346-cb507e5be974@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jun 2022 09:43:25 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-28614: Apache HTTP Server: read beyond bounds via
 ap_rwrite()  

Severity: low

Description:

The ap_rwrite() function in Apache HTTP Server 2.4.53 and earlier may read =
unintended memory if an attacker can cause the server to reflect very large=
 input using ap_rwrite() or ap_rputs(), such as with mod_luas r:puts() func=
tion.

Credit:

The Apache HTTP Server project would like to thank Ronald Crane (Zippenhop =
LLC) for reporting this issue

References:

https://httpd.apache.org/security/vulnerabilities_24.html

