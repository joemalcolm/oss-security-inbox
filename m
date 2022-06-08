Received: (qmail 22340 invoked by uid 550); 8 Jun 2022 09:48:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23815 invoked from network); 8 Jun 2022 09:43:48 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <180ab6ad-f7a6-4e9b-98fb-2868f60b9eaf@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jun 2022 09:43:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-29404: Apache HTTP Server: Denial of service in mod_lua
 r:parsebody 

Severity: low

Description:

In Apache HTTP Server 2.4.53 and earlier, a malicious request to a lua scri=
pt that calls r:parsebody(0) may cause a denial of service due to no defaul=
t limit on possible input size.

Credit:

The Apache HTTP Server project would like to thank Ronald Crane (Zippenhop =
LLC) for reporting this issue

References:

https://httpd.apache.org/security/vulnerabilities_24.html

