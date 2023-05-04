Received: (qmail 13625 invoked by uid 550); 4 May 2023 22:09:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20038 invoked from network); 4 May 2023 21:37:24 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ramesh Mani <rmani@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a720f68e-5a14-2264-f8c2-70e9acba4374@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 May 2023 21:37:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-40331: Apache Ranger Hive Plugin: Any user with SELECT
 privilege on a database can alter the ownership of the table in Hive when
 Apache Ranger Hive Plugin is enabled 

Severity: critical

Affected versions:

- Apache Ranger Hive Plugin 2.0.0 through 2.3.0

Description:

Incorrect Permission Assignment for Critical Resource vulnerability in Apac=
he Software Foundation Apache Ranger Hive Plugin.This issue affects Apache =
Ranger Hive Plugin: from 2.0.0 through 2.3.0.

This issue is being tracked as RANGER-3474 RANGER-3357=20

References:

https://ranger.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2021-40331
https://issues.apache.org/jira/browse/RANGER-3474
https://issues.apache.org/jira/browse/RANGER-3357

