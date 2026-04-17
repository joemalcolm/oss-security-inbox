Received: (qmail 28487 invoked by uid 550); 17 Apr 2026 22:52:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29841 invoked from network); 17 Apr 2026 17:03:13 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <78c45490-4e00-17a4-4849-496f1410991d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 17 Apr 2026 17:00:40 +0000
MIME-Version: 1.0
Subject: [oss-security] =?UTF-8?Q?CVE-2026-40948=3A_Apache_Airflow_Keycloa?=
 =?UTF-8?Q?k_Provider=3A_OAuth_Login_CSRF_=E2=80=94?=
 =?UTF-8?Q?_Missing_State_Parameter_in_Keycloak_Aut?=
 =?UTF-8?Q?h_Manager=20?=

Severity: low=20

Affected versions:

- Apache Airflow Keycloak Provider (apache-airflow-providers-keycloak) 0.0.=
1 before 0.7.0

Description:

The Keycloak authentication manager in `apache-airflow-providers-keycloak` =
did not generate or validate the OAuth 2.0 `state` parameter on the login /=
 login-callback flow, and did not use PKCE. An attacker with a Keycloak acc=
ount in the same realm could deliver a crafted callback URL to a victim's b=
rowser and cause the victim to be logged into the attacker's Airflow sessio=
n (login-CSRF / session fixation), where any credentials the victim subsequ=
ently stored in Airflow Connections would be harvestable by the attacker. U=
sers are advised to upgrade `apache-airflow-providers-keycloak` to 0.7.0 or=
 later.

Credit:

Haruki Oyama (Waseda University) (finder)
Aritra Basu (remediation developer)

References:

https://github.com/apache/airflow/pull/64114
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-40948

