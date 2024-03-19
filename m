Received: (qmail 32243 invoked by uid 550); 19 Mar 2024 14:00:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3662 invoked from network); 19 Mar 2024 10:44:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Emond Papegaaij <papegaaij@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6a508792-1abe-83b2-c675-f60d2efab9dc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 Mar 2024 10:47:38 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-27439: Apache Wicket: Possible bypass of CSRF protection 

Severity: moderate

Affected versions:

- Apache Wicket 9.1.0 through 9.16.0
- Apache Wicket 10.0.0-M1 before 10.0.0

Description:

An error in the evaluation of the fetch metadata headers could allow a bypa=
ss of the CSRF protection in Apache Wicket.
This issue affects Apache Wicket: from 9.1.0 through 9.16.0, and the milest=
one releases for the 10.0 series.
Apache Wicket 8.x does not support CSRF protection via the fetch metadata h=
eaders and as such is not affected.

Users are recommended to upgrade to version 9.17.0 or 10.0.0, which fixes t=
he issue.

Credit:

Jo Theunis (finder)

References:

https://wicket.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-27439

