Received: (qmail 3974 invoked by uid 550); 6 Dec 2022 17:51:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32320 invoked from network); 6 Dec 2022 17:42:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Markus Schuch <schuch@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <dd0e94aa-e439-9d45-dd8e-233b87287e02@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 06 Dec 2022 17:42:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45910: Apache ManifoldCF: LDAP Injection Vulnerability -
 ActiveDirectory Authorities 

Description:

Improper neutralization of special elements used in an LDAP query ('LDAP In=
jection') vulnerability in ActiveDirectory and Sharepoint ActiveDirectory a=
uthority connectors of Apache ManifoldCF allows an attacker to manipulate t=
he LDAP search queries (DoS, additional queries, filter manipulation) durin=
g user lookup, if the username or the domain string are passed to the UserA=
CLs servlet without validation.

This issue affects Apache ManifoldCF version 2.23 and prior versions.

Credit:

4ra1n of Chaitin Tech (finder)

References:

https://manifoldcf.apache.org/
https://cve.org/CVERecord?id=3DCVE-2022-45910

