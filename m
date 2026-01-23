Received: (qmail 19714 invoked by uid 550); 23 Jan 2026 19:54:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1984 invoked from network); 23 Jan 2026 18:45:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Chris Nauroth <cnauroth@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b57ffd96-79ad-11db-cc49-b577e789e640@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 23 Jan 2026 18:45:29 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27821: HDFS native client: Out of bounds write in URI
 parser of native HDFS client 

Severity: moderate=20

Affected versions:

- HDFS native client (org.apache.hadoop:hadoop-hdfs-native-client) 3.2.0 be=
fore 3.4.2

Description:

Out-of-bounds Write vulnerability in Apache Hadoop HDFS native client.

This issue affects Apache Hadoop: from 3.2.0 before 3.4.2.

Users are recommended to upgrade to version 3.4.2, which fixes the issue.

This issue is being tracked as HDFS-17754=20

Credit:

BUI Ngoc Tan (reporter)

References:

https://hadoop.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-27821
https://issues.apache.org/jira/browse/HDFS-17754

