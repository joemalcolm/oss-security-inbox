Received: (qmail 28494 invoked by uid 550); 21 Dec 2023 14:30:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32183 invoked from network); 21 Dec 2023 07:04:23 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f229a045-e964-c47f-8f69-9d6178032408@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 Dec 2023 07:04:46 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-47265: Apache Airflow: DAG Params alllow to embed
 unchecked Javascript 

Severity: low

Affected versions:

- Apache Airflow 2.6.0 before 2.8.0

Description:

Apache Airflow, versions 2.6.0 through 2.7.3 has a stored XSS vulnerability=
 that allows a DAG author to add an unbounded and not-sanitized javascript =
in the parameter description field of the DAG.=C2=A0This Javascript can be =
executed on the client side of any of the user who looks at the tasks in th=
e browser sandbox. While this issue does not allow to exit the browser sand=
box or manipulation of the server-side data - more than the DAG author alre=
ady has, it allows to modify what the user looking at the DAG details sees =
in the browser - which opens up all kinds of possibilities of misleading ot=
her users.

Users of Apache Airflow are recommended to upgrade to version 2.8.0 or newe=
r to mitigate the risk associated with this vulnerability

Credit:

Jens Scheffler (finder)
Andrey Anshin (finder)
Jens Scheffler (remediation developer)

References:

https://github.com/apache/airflow/pull/35460
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-47265

