Received: (qmail 1054 invoked by uid 550); 23 Feb 2026 16:36:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14238 invoked from network); 23 Feb 2026 15:47:27 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4c429059-3e80-fb97-b222-da9e03478507@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 23 Feb 2026 15:47:04 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27555: Apache Airflow: Connection Secrets not masked in
 UI when Connection are added via Airflow cli 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) before 2.11.1

Description:

Airflow versions before 2.11.1 have a vulnerability that allows authenticat=
ed users with audit log access to see sensitive values in audit logs which =
they should not see. When sensitive connection parameters were set via airf=
low CLI, values of those variables appeared in the audit log and were store=
d unencrypted in the Airflow database. While this risk is limited to users =
with audit log access, it is recommended to upgrade to Airflow 2.11.1 or a =
later version, which addresses this issue. Users who previously used the CL=
I to set connections should manually delete entries with those connection s=
ensitive values from the log table. This is similar but not the same issue =
as CVE-2024-50378

Credit:

sw0rd1ight (finder)

References:

https://github.com/apache/airflow/pull/61882
https://www.apache.org/security/
https://www.cve.org/CVERecord?id=3DCVE-2025-27555

