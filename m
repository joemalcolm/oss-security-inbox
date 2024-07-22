Received: (qmail 28285 invoked by uid 550); 22 Jul 2024 16:02:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12199 invoked from network); 22 Jul 2024 15:25:41 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Huajie Wang <benjobs@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <58d3be2b-5391-5961-0a6f-4d43db79d03b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jul 2024 15:25:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-29070: Apache StreamPark: session not invalidated after
 logout 

Severity: moderate

Affected versions:

- Apache StreamPark 1.0.0 before 2.1.4

Description:

On versions before 2.1.4,=C2=A0session is not invalidated after logout. Whe=
n the user logged in successfully, the Backend service returns "Authorizati=
on" as the front-end authentication credential. "Authorization" can still i=
nitiate requests and access data even after logout.

Mitigation:

all users should upgrade to 2.1.4

Credit:

L0ne1y (reporter)

References:

https://streampark.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-29070

