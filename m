Received: (qmail 18025 invoked by uid 550); 4 Apr 2024 14:01:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1817 invoked from network); 4 Apr 2024 13:57:50 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a3626dc2-f4a7-28a1-8a6f-49061c802d1a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Apr 2024 13:57:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-38709: Apache HTTP Server: HTTP response splitting 

Affected versions:

- Apache HTTP Server through 2.4.58

Description:

Faulty input validation in the core of Apache allows malicious or exploitab=
le backend/content generators to split HTTP responses.

This issue affects Apache HTTP Server: through 2.4.58.

Credit:

Orange Tsai (@orange_8361) from DEVCORE (finder)

References:

https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-38709

