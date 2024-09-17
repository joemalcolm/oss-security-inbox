Received: (qmail 3653 invoked by uid 550); 17 Sep 2024 18:45:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20406 invoked from network); 17 Sep 2024 17:58:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Karan Kumar <karan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <031fa888-da22-52e2-003f-68b327b69e8e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Sep 2024 17:58:30 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45537: Apache Druid: Users can provide MySQL JDBC
 properties not on allow list 

Severity: low

Affected versions:

- Apache Druid through 30.0.0

Description:

Apache Druid allows users with certain permissions to read data from other =
database systems using JDBC. This functionality allows trusted users to set=
 up Druid lookups or run ingestion tasks. Druid also allows administrators =
to configure a list of allowed properties that users are able to provide fo=
r their JDBC connections. By default, this allowed properties list restrict=
s users to TLS-related properties only. However, when configuration a MySQL=
 JDBC connection, users can use a particularly-crafted JDBC connection stri=
ng to provide properties that are not on this allow list.

Users without the permission to configure JDBC connections are not able to =
exploit this vulnerability.
CVE-2021-26919 describes a similar vulnerability which was partially addres=
sed in Apache Druid 0.20.2.

This issue is fixed in Apache Druid 30.0.1.

References:

https://druid.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-45537

