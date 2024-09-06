Received: (qmail 9245 invoked by uid 550); 6 Sep 2024 16:49:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28634 invoked from network); 6 Sep 2024 16:44:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1e8bf9c9-d50f-d419-2a0a-777bd939b277@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 06 Sep 2024 16:43:56 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45498: Apache Airflow: Command Injection in an example
 DAG 

Severity: low

Affected versions:

- Apache Airflow 2.10.0

Description:

Example DAG: example_inlet_event_extra.py shipped with Apache Airflow versi=
on 2.10.0 has a vulnerability that allows an authenticated attacker with on=
ly DAG trigger permission to execute arbitrary commands. If you used that e=
xample as the base of your DAGs - please review if you have not copied the =
dangerous example; see  https://github.com/apache/airflow/pull/41873 =C2=A0=
for more information. We recommend against exposing the example DAGs in you=
r deployment. If you must expose the example DAGs, upgrade Airflow to versi=
on 2.10.1 or later.

Credit:

Nhien Pham (aka nhienit) at Galaxy One (finder)
Amogh Desai (remediation developer)

References:

https://github.com/apache/airflow/pull/41873
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-45498

