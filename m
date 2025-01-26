Received: (qmail 7227 invoked by uid 550); 26 Jan 2025 12:34:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1047 invoked from network); 26 Jan 2025 11:58:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jason Gerlowski <gerlowskija@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <818be5cf-b661-f1a1-2e33-98e8a330fa4f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 26 Jan 2025 11:58:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-52012: Apache Solr: Configset upload on Windows allows
 arbitrary path write-access 

Severity: moderate

Affected versions:

- Apache Solr 6.6 through 9.7.0

Description:

Relative Path Traversal vulnerability in Apache Solr.

Solr instances running on Windows are vulnerable to arbitrary filepath writ=
e-access, due to a lack of input-sanitation in the "configset upload" API.=
=C2=A0 Commonly known as a "zipslip", maliciously constructed ZIP files can=
 use relative filepaths to write data to unanticipated parts of the filesys=
tem.=C2=A0=C2=A0
This issue affects Apache Solr: from 6.6 through 9.7.0.

Users are recommended to upgrade to version 9.8.0, which fixes the issue.=
=C2=A0 Users unable to upgrade may also safely prevent the issue by using S=
olr's "Rule-Based Authentication Plugin" to restrict access to the configse=
t upload API, so that it can only be accessed by a trusted set of administr=
ators/users.

This issue is being tracked as SOLR-17543=20

Credit:

rry (finder)

References:

https://solr.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-52012
https://issues.apache.org/jira/browse/SOLR-17543

