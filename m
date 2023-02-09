Received: (qmail 1321 invoked by uid 550); 9 Feb 2023 23:44:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15693 invoked from network); 9 Feb 2023 23:12:59 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: David Handermann <exceptionfactory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4796f6ee-fab4-b33f-e179-774ea70477aa@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Feb 2023 23:12:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-22832: Apache NiFi: Improper Restriction of XML External
 Entity References in ExtractCCDAAttributes 

Severity: moderate

Description:

The ExtractCCDAAttributes Processor in Apache NiFi 1.2.0 through 1.19.1 doe=
s not restrict XML External Entity references.

Flow configurations that include the ExtractCCDAAttributes Processor are vu=
lnerable to malicious XML documents that contain Document Type Declarations=
 with XML External Entity references.

The resolution disables Document Type Declarations and disallows XML Extern=
al Entity resolution in the ExtractCCDAAttributes Processor.

This issue is being tracked as NIFI-11029=20

Credit:

Yi Cai of Chaitin Tech (finder)

References:

https://nifi.apache.org/security.html#CVE-2023-22832
https://nifi.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-22832
https://issues.apache.org/jira/browse/NIFI-11029

Timeline:

2023-01-03: reported

