Received: (qmail 11988 invoked by uid 550); 28 Nov 2023 16:19:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3238 invoked from network); 28 Nov 2023 16:09:10 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fc678fd3-504c-9a25-98d9-8a94203e7e39@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 28 Nov 2023 16:08:27 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-42502: Apache Superset: Open Redirect Vulnerability 

Affected versions:

- Apache Superset before 3.0.0

Description:

An authenticated attacker with update datasets permission could change a da=
taset link to an untrusted site by spoofing the HTTP Host header, users cou=
ld be redirected to this site when clicking on that specific dataset. This =
issue affects Apache Superset versions before 3.0.0.

Credit:

Amit Laish =E2=80=93 GE Vernova (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-42502

