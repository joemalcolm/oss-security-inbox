Received: (qmail 13998 invoked by uid 550); 27 Nov 2023 09:53:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26072 invoked from network); 27 Nov 2023 09:31:18 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ec83c66b-4748-f48b-7396-e9fd654ffdff@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Nov 2023 09:31:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-40610: Apache Superset: Privilege escalation with default
 examples database 

Affected versions:

- Apache Superset before 2.1.2

Description:

Improper authorization check and possible privilege escalation on Apache Su=
perset=C2=A0up to but excluding 2.1.2. Using the default examples database =
connection that allows access to both the examples schema and Apache Supers=
et's metadata database, an attacker using a specially crafted CTE SQL state=
ment could change data on the metadata database. This weakness could result=
 on tampering with the authentication/authorization data.

Credit:

LEXFO for Orange Innovation and Orange CERT-CC  at Orange group (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-40610

