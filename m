Received: (qmail 22484 invoked by uid 550); 31 May 2026 11:53:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32498 invoked from network); 31 May 2026 11:48:00 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <48aa56d2-1441-5953-9505-4f40661be6fa@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 11:45:13 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-41017: Apache Airflow: JWT cookie missing Secure flag in
 JWTRefreshMiddleware behind HTTPS-terminating proxy 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.2.2

Description:

Apache Airflow's `JWTRefreshMiddleware` set the JWT auth cookie without the=
 `Secure` flag, so deployments running the Airflow API server behind an HTT=
PS-terminating reverse proxy (e.g. nginx / Envoy / a managed load balancer =
that terminates TLS and forwards plaintext to the API server, the default c=
loud-native topology) would have the user's session JWT replayed over any c=
leartext HTTP request to the same host. A network-positioned attacker (Wi-F=
i MITM, hostile LAN, captive-portal proxy) could induce a logged-in user's =
browser to issue an HTTP request to the deployment's hostname and capture t=
he JWT cookie out of that request, then replay it against the authenticated=
 API. Affects deployments where the Airflow API server is reached through a=
 TLS-terminating proxy and the cookie's secure-by-default protection is loa=
d-bearing for session integrity. Users are advised to upgrade to `apache-ai=
rflow` 3.2.2 or later.

Credit:

Ran (@eddieran) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/65348
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-41017

