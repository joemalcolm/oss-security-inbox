Received: (qmail 22000 invoked by uid 550); 10 May 2026 19:29:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19958 invoked from network); 10 May 2026 19:28:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Shahar Epstein <shahar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b8a7d907-763d-9543-6dae-881175a71929@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 10 May 2026 19:28:36 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-43826: Apache Airflow Providers OpenSearch: OpenSearch
 task-log handler leaks credentials embedded in the host URL 

Severity: low=20

Affected versions:

- Apache Airflow Providers OpenSearch (apache-airflow-providers-opensearch)=
 before 1.9.1

Description:

The OpenSearch logging provider, when configured with a `host` URL that emb=
eds credentials (for example `https://user:password@server.example.com:9200=
`), wrote the full host URL =E2=80=94 including the embedded credentials =
=E2=80=94 into task logs. Any user with task-log read permission could harv=
est the backend credentials. Users are advised to upgrade to `apache-airflo=
w-providers-opensearch` 1.9.1 or later and, as a defense-in-depth measure, =
configure the backend credentials via a secret backend rather than embeddin=
g them in the `[opensearch] host` URL.

Credit:

Aleksandr Sozinov (finder)
Owen-CH-Leung (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/65509
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-43826

