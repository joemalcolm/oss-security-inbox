Received: (qmail 1463 invoked by uid 550); 31 May 2026 12:35:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5865 invoked from network); 31 May 2026 12:04:15 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1c31af07-53b4-0003-f6e1-4a3960cbf2ba@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 12:03:06 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2026-42359=3A_Apache_Airflow=3A_Auth?=
 =?UTF-8?Q?enticated_RCE_via_XCom_PATCH_endpoint_?=
 =?UTF-8?Q?=E2=80=94_XComUpdateBody_missing_FORBIDD?=
 =?UTF-8?Q?EN=5FXCOM=5FKEYS_validator=20?=

Severity: medium=20

Affected versions:

- Apache Airflow (apache-airflow) 3.2.0 before 3.2.2

Description:

A bug in Apache Airflow's XCom PATCH endpoint `PATCH /api/v2/xcomEntries/{k=
ey}` allowed an authenticated UI/API user with XCom write permission on a D=
ag to set XCom entries under reserved key names (e.g. `return_value`) that =
the matching POST endpoint already validated against `FORBIDDEN_XCOM_KEYS`.=
 The endpoint also accepted serialized payload shapes the triggerer's deser=
ializer treats as code; combined, this allowed RCE on the triggerer when th=
e affected task next deferred. Affects deployments where untrusted users ha=
ve XCom write permission on Dags that defer to the triggerer. This is a fix=
-bypass of CVE-2026-33858: PR #64148 added the `FORBIDDEN_XCOM_KEYS` valida=
tor only on the POST/set path; the PATCH path was not covered. Users who al=
ready upgraded for CVE-2026-33858 should additionally upgrade to `apache-ai=
rflow` 3.2.2 or later to cover the PATCH-path bypass.

Credit:

Jeff Vier (`@boinger`); Izat (Anisto Mejin) =E2=80=94 placeholders; receipt=
-of-confirmation replies ask each reporter to confirm preferred credit form=
 (finder)
Venkatraman Kumar (r3dw0lfsec), Securin (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/65915
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-42359

