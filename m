Received: (qmail 16103 invoked by uid 550); 31 May 2026 11:44:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1809 invoked from network); 31 May 2026 11:42:54 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b4b3b6b6-88fe-4ab8-b70b-ac9c3702892f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 11:42:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-49267: Apache Airflow: No certificate validation on SMTP
 STARTTLS connections 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 2.0.0 before 3.2.2

Description:

Apache Airflow's EmailOperator and the underlying `airflow.utils.email` hel=
pers established SMTP STARTTLS connections without verifying the remote cer=
tificate when the deployment used `[email] smtp_starttls=3DTrue` without `[=
email] smtp_ssl`. An attacker positioned between the worker and the configu=
red SMTP server (network MITM =E2=80=94 typical hostile-network attack-surf=
ace for environments where the SMTP relay sits outside the worker's trust b=
oundary) could present a self-signed certificate, have the worker complete =
the STARTTLS handshake silently, and capture the SMTP AUTH credentials and =
message contents the worker forwarded.

This CVE covers the **core apache-airflow side** of the same root cause alr=
eady covered for the SMTP provider by `CVE-2026-41016` (published 2026-04-2=
7, covering `apache-airflow-providers-smtp`). Users who already applied the=
 SMTP-provider fix from CVE-2026-41016 should additionally upgrade `apache-=
airflow` to 3.2.2 or later to cover the core-side path through `airflow.uti=
ls.email`. Affects deployments configured with `smtp_starttls=3DTrue` and `=
smtp_ssl=3DFalse` where the SMTP relay is reachable across a less-trusted n=
etwork segment than the worker.

Users are advised to upgrade to `apache-airflow` 3.2.2 or later.

Credit:

Francis Bergin (@francisbergin) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/65346
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-49267

