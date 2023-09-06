Received: (qmail 7700 invoked by uid 550); 6 Sep 2023 09:58:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16340 invoked from network); 6 Sep 2023 09:34:56 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <23a4e7b4-1db4-9ab1-0a79-48484874b5b3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Sep 2023 09:34:41 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-39265: Apache Superset: Possible Unauthorized
 Registration of SQLite Database Connections 

Affected versions:

- Apache Superset through 2.1.0

Description:

Apache Superset would allow for SQLite database connections to be incorrect=
ly registered when an attacker uses alternative driver names like=C2=A0sqli=
te+pysqlite or by using database imports. This could allow for unexpected f=
ile creation on Superset webservers. Additionally, if Apache Superset is us=
ing a SQLite database for its metadata (not advised for production use) it =
could result in more severe vulnerabilities related to confidentiality and =
integrity.=C2=A0This vulnerability exists in Apache Superset versions up to=
 and including 2.1.0.

Credit:

Naveen Sunkavally (Horizon3.ai) (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-39265

