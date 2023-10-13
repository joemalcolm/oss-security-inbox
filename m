Received: (qmail 1211 invoked by uid 550); 13 Oct 2023 15:21:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26313 invoked from network); 13 Oct 2023 15:14:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7e000a79-32ea-51e3-2d6a-5d00d30e57d4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 13 Oct 2023 15:14:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-42663: Apache Airflow: Bypass permission verification to
 view task instances of other dags 

Severity: low

Affected versions:

- Apache Airflow before 2.7.2

Description:

Apache Airflow, versions before 2.7.2, has a vulnerability that allows an a=
uthorized user who has access to read specific DAGs only, to read informati=
on about task instances in other DAGs.
Users of Apache Airflow are advised to upgrade to version 2.7.2 or newer to=
 mitigate the risk associated with this vulnerability.

Credit:

balis0ng (finder)
Ephraim Anierobi (remediation developer)

References:

https://github.com/apache/airflow/pull/34315
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-42663

