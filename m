Received: (qmail 6054 invoked by uid 550); 9 Oct 2025 15:47:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5920 invoked from network); 9 Oct 2025 13:06:05 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Leonard Xu <leonard@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3a89912b-4716-3c74-fe29-288f650eaac9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Oct 2025 13:05:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-62228: Apache Flink CDC, Apache Flink CDC, Apache Flink
 CDC, Apache Flink CDC, Apache Flink CDC: SQL injection via maliciously
 crafted identifiers 

Severity:=20

Affected versions:

- Apache Flink CDC (org.apache.flink:flink-connector-mysql-cdc) 3.0.0 throu=
gh 3.4.0
- Apache Flink CDC (org.apache.flink:flink-connector-sqlserver-cdc) 3.0.0 t=
hrough 3.4.0
- Apache Flink CDC (org.apache.flink:flink-connector-db2-cdc) 3.0.0 through=
 3.4.0
- Apache Flink CDC (org.apache.flink:flink-connector-oracle-cdc) 3.0.0 thro=
ugh 3.4.0
- Apache Flink CDC (org.apache.flink:flink-cdc-pipeline-connector-oceanbase=
) 3.3.0 through 3.4.0

Description:

Apache Flink CDC version 3.4.0 was vulnerable to a SQL injection via malici=
ously crafted identifiers eg. crafted database name or crafted table name. =
Even through only the logged-in database user can trigger the attack, we re=
commend users update Flink CDC version to 3.5.0 which address this issue.

Credit:

intSheep (reporter)
Mapta/BugBunny_ai (reporter)

References:

https://flink.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-62228

