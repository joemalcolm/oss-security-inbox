Received: (qmail 23672 invoked by uid 550); 24 Apr 2023 19:14:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18328 invoked from network); 24 Apr 2023 19:04:05 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andy Seaborne <andy@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <01e07723-a942-3faf-824a-17585ab7a6d1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 24 Apr 2023 19:03:51 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-22665: Apache Jena: Exposure of arbitrary execution in
 script engine expressions. 

Severity: important

Description:

There is insufficient checking of user queries in Apache Jena versions 4.7.=
0 and earlier, when invoking custom scripts. It allows a remote user to exe=
cute arbitrary javascript via a SPARQL query.

Credit:

L3yx of Syclover Security Team (reporter)

References:

https://jena.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-22665

