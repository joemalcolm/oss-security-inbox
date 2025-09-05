Received: (qmail 24084 invoked by uid 550); 6 Sep 2025 16:10:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14327 invoked from network); 5 Sep 2025 14:19:17 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Marcel Reutegger <mreutegg@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1a0df97b-6e78-86f6-0c86-46c9f03d66ff@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Sep 2025 14:17:55 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-58782: Apache Jackrabbit Core, Apache Jackrabbit JCR
 Commons: JNDI injection risk with JndiRepositoryFactory 

Severity: important=20

Affected versions:

- Apache Jackrabbit Core (org.apache.jackrabbit:jackrabbit-core) 1.0.0 thro=
ugh 2.22.1
- Apache Jackrabbit JCR Commons (org.apache.jackrabbit:jackrabbit-jcr-commo=
ns) 1.0.0 through 2.22.1

Description:

Deserialization of Untrusted Data vulnerability in Apache Jackrabbit Core a=
nd Apache Jackrabbit JCR Commons.

This issue affects Apache Jackrabbit Core: from 1.0.0 through 2.22.1; Apach=
e Jackrabbit JCR Commons: from 1.0.0 through 2.22.1.

Deployments that accept JNDI URIs for JCR lookup from untrusted users allow=
s them to inject malicious JNDI references, potentially leading to arbitrar=
y code execution through deserialization of untrusted data.
Users are recommended to upgrade to version 2.22.2. JCR lookup through JNDI=
 has been disabled by default in 2.22.2. Users of this feature need to enab=
le it explicitly and are adviced to review their use of JNDI URI for JCR lo=
okup.

This issue is being tracked as JCR-5135=20

Credit:

James John (reporter)

References:

https://jackrabbit.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-58782
https://issues.apache.org/jira/browse/JCR-5135

