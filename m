Received: (qmail 16165 invoked by uid 550); 13 Jan 2023 17:30:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6023 invoked from network); 13 Jan 2023 17:18:38 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Brian Demers <bdemers@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <73d1e766-20ed-6907-d8c1-781c015a2359@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 13 Jan 2023 17:18:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-22602: Apache Shiro before 1.11.0, when used with Spring
 Boot 2.6+, may allow authentication bypass through a specially crafted
 HTTP request 

Description:

When using Apache Shiro before 1.11.0 together with Spring Boot 2.6+, a spe=
cially crafted HTTP request may cause an authentication bypass.

The authentication bypass occurs when Shiro and Spring Boot are using diffe=
rent pattern-matching techniques. Both Shiro and Spring Boot < 2.6 default =
to Ant style pattern matching.
Mitigation: Update to Apache Shiro 1.11.0, or set the following Spring Boot=
 configuration value:  `spring.mvc.pathmatch.matching-strategy =3D ant_path=
_matcher`

Credit:

v3ged0ge and Adamytd (finder)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-22602

