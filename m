Received: (qmail 5854 invoked by uid 550); 15 May 2023 11:35:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15574 invoked from network); 15 May 2023 08:35:00 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Robert Munteanu <rombert@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0f893b63-0431-2fbb-37bc-9d63a174ef88@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 May 2023 08:34:46 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-47937: Multiple parsing problems in the Apache Sling
 Commons JSON module 

Severity: moderate

Affected versions:

- org.apache.sling.commons.json through 2.0.20

Description:

** UNSUPPORTED WHEN ASSIGNED **=20





Improper input validation in the Apache Sling Commons JSON bundle allows an=
 attacker to trigger unexpected errors by supplying specially-crafted input.




NOTE: This vulnerability=20
only affects products that are no longer supported by the maintainer




The org.apache.sling.commons.json bundle has been deprecated as of March
 2017 and should not be used anymore. Consumers are encouraged to=20
consider the Apache Sling Commons Johnzon OSGi bundle provided by the=20
Apache Sling project, but may of course use other JSON libraries.

Credit:

The vulnerability was discovered and reported by BIngDiAn. (finder)

References:

https://issues.apache.org/jira/browse/SLING-6536
https://github.com/apache/sling-org-apache-sling-commons-johnzon
https://sling.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-47937

