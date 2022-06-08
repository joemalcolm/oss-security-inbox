Received: (qmail 23900 invoked by uid 550); 8 Jun 2022 09:49:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24446 invoked from network); 8 Jun 2022 09:43:56 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6dd88d7b-4d7d-d1f0-238a-53556932ff4d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jun 2022 09:43:44 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-30522: Apache HTTP Server: mod_sed denial of service 

Severity: low

Description:

If Apache HTTP Server 2.4.53 is configured to do transformations with mod_s=
ed in contexts where the input to mod_sed may be very large, mod_sed may ma=
ke excessively large memory allocations and trigger an abort.

Credit:

This issue was found by Brian Moussalli from the JFrog Security Research te=
am

References:

https://httpd.apache.org/security/vulnerabilities_24.html

