X-Quarantine-ID: <56BJzPIJkl8i>
Received: (qmail 4053 invoked by uid 550); 24 Jul 2023 18:09:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31970 invoked from network); 24 Jul 2023 18:06:22 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Brian Demers <bdemers@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <29582adc-1944-9191-ec59-3d1ee26d3cad@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 24 Jul 2023 18:06:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-34478: Apache Shiro before 1.12.0, or 2.0.0-alpha-3, may
 be susceptible to a path traversal attack when used together with APIs or
 other web frameworks that route requests based on non-normalized requests.

Severity: important

Affected versions:

- Apache Shiro before 1.12.0
- Apache Shiro before 2.0.0-alpha-3

Description:

Apache Shiro, before 1.12.0 or 2.0.0-alpha-3, may be susceptible to a path =
traversal attack that results in an authentication bypass when used togethe=
r with APIs or other web frameworks that route requests based on non-normal=
ized requests.

Mitigation:=C2=A0Update to Apache Shiro 1.12.0+ or 2.0.0-alpha-3+

Credit:

tkswifty (finder)
Ha1c9on (finder)

References:

https://lists.apache.org/thread/mbv26onkgw9o35rldh7vmq11wpv2t2qk
https://shiro.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-34478

