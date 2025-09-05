Received: (qmail 26242 invoked by uid 550); 6 Sep 2025 16:10:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3610 invoked from network); 5 Sep 2025 15:24:48 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Chao Gong <gongchao@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9a48a4b7-0766-eac5-343d-8e5bfba2d069@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Sep 2025 15:21:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-24404: Apache HertzBeat (incubating): RCE by parse http
 sitemap xml response 

Severity: moderate=20

Affected versions:

- Apache HertzBeat (incubating) before 1.7.0

Description:

XML Injection RCE by parse http sitemap xml response vulnerability in Apach=
e HertzBeat.

This issue affects Apache HertzBeat (incubating): before 1.7.0.

Users are recommended to upgrade to version 1.7.0, which fixes the issue.

Credit:

unam4 (finder)
springkill (finder)
Zoiltin (finder)

References:

https://hertzbeat.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-24404

