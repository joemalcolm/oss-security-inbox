Received: (qmail 9877 invoked by uid 550); 31 May 2026 12:36:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9581 invoked from network); 31 May 2026 12:17:42 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <420b5d11-1567-9039-beed-24ba87e9f6d7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 12:17:29 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-48726: Apache Airflow: revoke_token() unreachable in
 FabAuthManager / KeycloakAuthManager logout path 

Severity: Moderate=20

Affected versions:

- Apache Airflow (apache-airflow) before 3.2.2

Description:

A bug in Apache Airflow's auth manager logout handling left previously-issu=
ed JWT tokens valid after the user clicked logout in the UI: the logout flo=
w for `FabAuthManager` and `KeycloakAuthManager` did not actually reach the=
 underlying `revoke_token()` call, so the JWT remained accepted by the API =
server until its natural expiry. An attacker holding a previously-issued JW=
T for a logged-out user could continue to make authenticated API calls as t=
hat user. Affects deployments configured with `FabAuthManager` or `Keycloak=
AuthManager` (the bug does not affect SimpleAuthManager). This is a residua=
l gap in the fix for CVE-2025-57735, which addressed cookie-side invalidati=
on in PR #57992 / PR #61339 but did not cover the provider-side `revoke_tok=
en()` reachability in the FAB / Keycloak code paths. Users who already upgr=
aded for CVE-2025-57735 should additionally upgrade to `apache-airflow` 3.2=
.2 or later to cover the FAB / Keycloak logout paths.

Credit:

Bernardo Curi (r3ngar_bugado) (finder)
pierrejeambrun (remediation developer)

References:

https://github.com/apache/airflow/pull/67289
https://www.cve.org/CVERecord?id=3DCVE-2025-57735
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-48726

