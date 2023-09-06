Received: (qmail 9656 invoked by uid 550); 6 Sep 2023 09:58:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9517 invoked from network); 6 Sep 2023 09:46:24 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <563ebe58-26b5-e04e-9fe3-5a7156682610@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Sep 2023 09:46:10 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-32672: Apache Superset: SQL parser edge case bypasses
 data access authorization 

Affected versions:

- Apache Superset through 2.1.0

Description:

An Incorrect authorisation check in SQLLab in Apache Superset versions up t=
o and including 2.1.0. This vulnerability allows an authenticated user to q=
uery tables that they do not have proper access to within Superset. The vul=
nerability can be exploited by leveraging a SQL parsing vulnerability.

Credit:

Arnaud Pascal @ Vaadata (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-32672

