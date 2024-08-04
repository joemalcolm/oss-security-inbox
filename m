Received: (qmail 10167 invoked by uid 550); 4 Aug 2024 20:23:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32554 invoked from network); 4 Aug 2024 20:02:38 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fa1e4ee6-2090-3a2e-6d75-cc1f7ae4b688@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 04 Aug 2024 20:02:20 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-42447: Apache Airflow Providers FAB: FAB provider 1.2.1
 and 1.2.0 did not let user to logout for Airflow 

Severity: low

Affected versions:

- Apache Airflow Providers FAB 1.2.0 through 1.2.1

Description:

Insufficient Session Expiration vulnerability in Apache Airflow Providers F=
AB.

This issue affects Apache Airflow Providers FAB: 1.2.1 (when used with Apac=
he Airflow 2.9.3) and FAB 1.2.0 for all Airflow versions. The FAB provider =
prevented the user from logging out.=C2=A0=C2=A0

* FAB provider 1.2.1 only affected Airflow 2.9.3 (earlier and later version=
s of Airflow are not affected)

* FAB provider 1.2.0 affected all versions of Airflow.

Users who run Apache Airflow 2.9.3 are recommended to upgrade to Apache Air=
flow Providers FAB version 1.2.2 which fixes the issue.

Users who run Any Apache Airflow version and have FAB provider 1.2.0 are re=
commended to upgrade to Apache Airflow Providers FAB version 1.2.2 which fi=
xes the issue.

Also upgrading Apache Airflow to latest version available is recommended.

Note: Early version of Airflow reference container images of Airflow 2.9.3 =
and constraint files contained FAB provider 1.2.1 version, but this is fixe=
d in updated versions of the images.=C2=A0

Users are advised to pull the latest Airflow images or reinstall FAB provid=
er according to the current constraints.

References:

https://github.com/apache/airflow/pull/40784
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-42447

