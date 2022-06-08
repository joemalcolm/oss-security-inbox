Received: (qmail 25791 invoked by uid 550); 8 Jun 2022 09:49:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26336 invoked from network); 8 Jun 2022 09:44:07 -0000
Content-Type: text/plain; charset=utf-8
From: Stefan Eissing <icing@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <72cac31d-cd71-86d3-c567-a01d66d8e66d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jun 2022 09:43:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-30556: Apache HTTP Server: Information Disclosure in
 mod_lua with websockets 

Severity: low

Description:

Apache HTTP Server 2.4.53 and earlier may return lengths to applications ca=
lling r:wsread() that point past the end of the storage allocated for the b=
uffer.

Credit:

The Apache HTTP Server project would like to thank Ronald Crane (Zippenhop =
LLC) for reporting this issue

References:

https://httpd.apache.org/security/vulnerabilities_24.html

