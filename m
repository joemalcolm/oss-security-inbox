Received: (qmail 26067 invoked by uid 550); 24 Apr 2023 15:09:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12010 invoked from network); 24 Apr 2023 14:38:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f91aa07f-0bb2-1e5f-8ba7-952fec3a1758@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 24 Apr 2023 14:37:44 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-27524: Apache Superset: Session validation vulnerability
 when using provided default SECRET_KEY 

Description:

Session Validation attacks in Apache Superset versions up to and including =
2.0.1. Installations that have not altered the default configured SECRET_KE=
Y according to installation instructions allow for an attacker to authentic=
ate and access unauthorized resources. This does not affect Superset admini=
strators who have changed the default value for SECRET_KEY config.

Credit:

Naveen Sunkavally (Horizon3.ai) (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-27524

