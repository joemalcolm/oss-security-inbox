Received: (qmail 5527 invoked by uid 550); 6 Jul 2022 09:36:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5506 invoked from network); 6 Jul 2022 09:36:08 -0000
Content-Type: text/plain; charset=utf-8
From: "Mark J. Cox" <mjc@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a7a38ea0-98f0-f98b-8608-ec6d84807238@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Jul 2022 09:35:31 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-32533: Apache Portals Jetspeed XSS, CSRF, SSRF, and XXE
 issues 

Severity: moderate

Description:

** UNSUPPORTED WHEN ASSIGNED ** Apache Jetspeed-2 does not sufficiently fil=
ter untrusted user input by default leading to a number of issues including=
 XSS, CSRF, XXE, and SSRF.  Setting the configuration option "xss.filter.po=
st =3D true" may mitigate these issues.

NOTE: Apache Jetspeed is a dormant project of Apache Portals and no updates=
 will be provided for this issue.=20=20

Credit:

Thanks to RunningSnail for reporting.

References:

https://lists.apache.org/thread/d3g248pr03x8rvmh8p2t3xdlw0wn5dz2

