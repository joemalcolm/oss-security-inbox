Received: (qmail 15414 invoked by uid 550); 9 Feb 2024 17:33:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16219 invoked from network); 9 Feb 2024 17:15:32 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Houston Putman <houston@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <eab45884-5bcc-fd09-58f6-0b0679d650eb@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 09 Feb 2024 17:17:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-50386: Apache Solr: Backup/Restore APIs allow for
 deployment of executables in malicious ConfigSets 

Severity: moderate

Affected versions:

- Apache Solr 6.0.0 through 8.11.2
- Apache Solr 9.0.0 before 9.4.1

Description:

Improper Control of Dynamically-Managed Code Resources, Unrestricted Upload=
 of File with Dangerous Type, Inclusion of Functionality from Untrusted Con=
trol Sphere vulnerability in Apache Solr.This issue affects Apache Solr: fr=
om 6.0.0 through 8.11.2, from 9.0.0 before 9.4.1.

In the affected versions, Solr ConfigSets accepted Java jar and class files=
 to be uploaded through the ConfigSets API.
When backing up Solr Collections, these configSet files would be saved to d=
isk when using the LocalFileSystemRepository (the default for backups).
If the backup was saved to a directory that Solr uses in its ClassPath/Clas=
sLoaders, then the jar and class files would be available to use with any C=
onfigSet, trusted or untrusted.

When Solr is run in a secure way (Authorization enabled), as is strongly su=
ggested, this vulnerability is limited to extending the Backup permissions =
with the ability to add libraries.
Users are recommended to upgrade to version 8.11.3 or 9.4.1, which fix the =
issue.
In these versions, the following protections have been added:

  *  Users are no longer able to upload files to a configSet that could be =
executed via a Java ClassLoader.
  *  The Backup API restricts saving backups to directories that are used i=
n the ClassLoader.

This issue is being tracked as SOLR-16949=20

Credit:

L3yx (reporter)

References:

https://solr.staged.apache.org/security.html#cve-2023-50386-apache-solr-bac=
kuprestore-apis-allow-for-deployment-of-executables-in-malicious-configsets
https://solr.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-50386
https://issues.apache.org/jira/browse/SOLR-16949

