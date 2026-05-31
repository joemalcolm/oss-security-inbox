Received: (qmail 30650 invoked by uid 550); 31 May 2026 12:35:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9710 invoked from network); 31 May 2026 11:59:00 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7ab76f82-430d-88e2-5c0c-7d7bce41e967@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 11:58:44 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-42358: Apache Airflow: Variable masker depth-limit bypass
 returns cleartext nested secrets 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) before 3.2.2

Description:

A bug in Apache Airflow's Variable response masker caused nested-key redact=
ion (triggered by secret-suffixed key names like `password`, `token`, `secr=
et`, `api_key`) to be bypassed when the JSON value's nesting depth exceeded=
 the shared secrets masker's recursion limit: the masker returned the origi=
nal nested item before checking the sensitive key name. An authenticated UI=
/API user with Variable read permission could harvest plaintext secret valu=
es stored under sensitive keys nested deep enough to exceed the masker's de=
pth cap. Affects deployments that store sensitive values inside deeply-nest=
ed JSON Variables. This is a residual gap in the fix for CVE-2026-32690 (wh=
ich covered shallower nesting via `max_depth=3D1`); the depth-limit boundar=
y itself was not raised, so the same key-name bypass pattern reappears beyo=
nd the recursion cap. Users who already upgraded for CVE-2026-32690 should =
additionally upgrade to `apache-airflow` 3.2.2 or later to cover the deep-n=
esting path.

Credit:

Vincent55 (confirmed in original report sign-off) (finder)
Aymane MAZGUITI =E2=80=93 unclej4ck (finder)
Ilyase Dehy =E2=80=93 Albert (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/65912
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-42358

