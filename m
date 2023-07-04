Received: (qmail 20168 invoked by uid 550); 4 Jul 2023 12:25:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12055 invoked from network); 4 Jul 2023 12:16:47 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b449ea7c-4709-b624-3563-dbc3d2c9a9ab@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 04 Jul 2023 12:16:34 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-34150: Apache Any23: Possible excessive allocation of
 resources reading input. 

Affected versions:

- Apache Any23 through 2.7

Description:

** UNSUPPORTED WHEN ASSIGNED **=C2=A0Use of TikaEncodingDetector in Apache =
Any23 can cause excessive memory usage.

Credit:

Liran Mendelovich (finder)

References:

https://attic.apache.org/projects/any23.html
https://www.cve.org/CVERecord?id=3DCVE-2023-34150

