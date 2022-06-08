Received: (qmail 11657 invoked by uid 550); 8 Jun 2022 09:47:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21732 invoked from network); 8 Jun 2022 09:43:28 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5ee00238-2486-0a35-a227-265eaa6f7f47@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jun 2022 09:43:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-28330: Apache HTTP Server: read beyond bounds in
 mod_isapi 

Severity: low

Description:

Apache HTTP Server 2.4.53 and earlier on Windows may read beyond bounds whe=
n configured to process requests with the mod_isapi module.=20

Credit:

The Apache HTTP Server project would like to thank Ronald Crane (Zippenhop =
LLC) for reporting this issue

References:

https://httpd.apache.org/security/vulnerabilities_24.html

