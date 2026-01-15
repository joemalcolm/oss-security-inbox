Received: (qmail 13748 invoked by uid 550); 15 Jan 2026 21:37:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24464 invoked from network); 15 Jan 2026 20:23:10 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <dd452638-757c-8c37-8727-b4f9b427ac2d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 15 Jan 2026 20:22:59 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-68438: Apache Airflow: Secrets in rendered templates
 could contain parts of sensitive values when truncated 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.1.0 before 3.1.6

Description:

In Apache Airflow versions before 3.1.6, when rendered template fields in a=
 Dag exceed [core]=C2=A0max_templated_field_length, sensitive values could =
be exposed in cleartext in the Rendered Templates UI. This occurred because=
 serialization of those fields used a secrets masker instance that did not =
include user-registered mask_secret() patterns, so secrets were not reliabl=
y masked before truncation and display.

Users are recommended to upgrade to 3.1.6 or later, which fixes this issue

Credit:

William Ashe (finder)
Amogh Desai (remediation developer)

References:

https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-68438

