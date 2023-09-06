Received: (qmail 8151 invoked by uid 550); 6 Sep 2023 09:58:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22112 invoked from network); 6 Sep 2023 09:41:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <284ffee8-6813-45ee-1a86-1183a02755c1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Sep 2023 09:40:57 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-37941: Apache Superset: Metadata db write access can lead
 to remote code execution 

Affected versions:

- Apache Superset 1.5.0 through 2.1.0

Description:

If an attacker gains write access to the Apache Superset metadata database,=
 they could persist a specifically crafted Python object that may lead to r=
emote code execution on Superset's web backend. This vulnerability impacts =
Apache Superset versions 1.5.0 up to and including 2.1.0.

Credit:

Dinis Cruz, cruzdinis@ua.pt (finder)
Naveen Sunkavally (Horizon3.ai) (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-37941

