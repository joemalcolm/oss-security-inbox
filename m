Received: (qmail 7496 invoked by uid 550); 15 Oct 2024 23:06:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32653 invoked from network); 15 Oct 2024 23:02:00 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Houston Putman <houston@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0e8319ae-47ce-cdab-2315-a61f42f7e39d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 15 Oct 2024 23:01:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45216: Apache Solr: Authentication bypass possible using
 a fake URL Path ending 

Severity: critical

Affected versions:

- Apache Solr 5.3.0 before 8.11.4
- Apache Solr 9.0.0 before 9.7.0

Description:

Improper Authentication vulnerability in Apache Solr.

Solr instances using the PKIAuthenticationPlugin, which is enabled by defau=
lt when Solr Authentication is used, are vulnerable to Authentication bypas=
s.
A fake ending at the end of any Solr API URL path, will allow requests to s=
kip Authentication while maintaining the API contract with the original URL=
 Path.
This fake ending looks like an unprotected API path, however it is stripped=
 off internally after authentication but before API routing.


This issue affects Apache Solr: from 5.3.0 before 8.11.4, from 9.0.0 before=
 9.7.0.

Users are recommended to upgrade to version 9.7.0, or 8.11.4, which fix the=
 issue.

This issue is being tracked as SOLR-17417=20

Credit:

Liu Huajin (reporter)

References:

https://solr.apache.org/security.html#cve-2024-45216-apache-solr-authentica=
tion-bypass-possible-using-a-fake-url-path-ending
https://solr.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-45216
https://issues.apache.org/jira/browse/SOLR-17417

