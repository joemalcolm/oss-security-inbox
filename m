Received: (qmail 3925 invoked by uid 550); 31 May 2026 12:35:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9573 invoked from network); 31 May 2026 12:09:17 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ebe8e7f5-cc8f-7959-4e07-21cb9ff37d3a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 12:08:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-45360: Apache Airflow: Arbitrary import in custom
 deadline-reference deserialization 

Severity: high=20

Affected versions:

- Apache Airflow (apache-airflow) before 3.2.2

Description:

Apache Airflow's scheduler-side deadline-reference decoder (`SerializedCust=
omReference.deserialize_reference`) imported and dispatched arbitrary class=
 paths drawn from DAG-author-controlled serialized state without an allowli=
st or plugin-registry gate. A DAG author whose code reaches the scheduler =
=E2=80=94 the default on single-host deployments where the DAG bundle is im=
portable from the scheduler process =E2=80=94 could embed a custom `Deadlin=
eReference` whose serialized form named an attacker-controlled module path,=
 causing the scheduler to `import_string(...)` and instantiate that class w=
ith a live SQLAlchemy session attached. Affects deployments where DAG-autho=
r code is less trusted than the scheduler process. Users are advised to upg=
rade to `apache-airflow` 3.2.2 or later.

Credit:

Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/66737
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-45360

