Received: (qmail 7863 invoked by uid 550); 15 Oct 2024 23:06:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30555 invoked from network); 15 Oct 2024 23:00:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Houston Putman <houston@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b52aedc0-36b4-60f6-5ffc-8ca929979aec@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 15 Oct 2024 22:59:55 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45217: Apache Solr: ConfigSets created during a backup
 restore command are trusted implicitly 

Severity: moderate

Affected versions:

- Apache Solr 6.6.0 before 8.11.4
- Apache Solr 9.0.0 before 9.7.0

Description:

Insecure Default Initialization of Resource vulnerability in Apache Solr.

New ConfigSets that are created via a Restore command, which copy a configS=
et from the backup and give it a new name, are created without setting the =
"trusted" metadata.
ConfigSets that do not contain the flag are trusted implicitly if the metad=
ata is missing, therefore this leads to "trusted" ConfigSets that may not h=
ave been created with an Authenticated request.
"trusted" ConfigSets are able to load custom code into classloaders, theref=
ore the flag is supposed to only be set when the request that uploads the C=
onfigSet is Authenticated & Authorized.

This issue affects Apache Solr: from 6.6.0 before 8.11.4, from 9.0.0 before=
 9.7.0. This issue does not affect Solr instances that are secured via Auth=
entication/Authorization.

Users are primarily recommended to use Authentication and Authorization whe=
n running Solr. However, upgrading to version 9.7.0, or 8.11.4 will mitigat=
e this issue otherwise.

This issue is being tracked as SOLR-17418=20

Credit:

Liu Huajin (reporter)

References:

https://solr.apache.org/security.html#cve-2024-45217-apache-solr-configsets=
-created-during-a-backup-restore-command-are-trusted-implicitly
https://solr.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-45217
https://issues.apache.org/jira/browse/SOLR-17418

