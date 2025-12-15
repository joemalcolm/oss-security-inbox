Received: (qmail 11485 invoked by uid 550); 16 Dec 2025 16:11:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28565 invoked from network); 15 Dec 2025 11:29:00 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <01cbd713-0cd7-cf74-bcfa-a8db8b54ed0b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Dec 2025 11:28:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-67895: Apache Airflow Providers Edge3: Edge3 Worker RPC
 RCE on Airflow 2 

Severity: low=20

Affected versions:

- Apache Airflow Providers Edge3 (apache-airflow-providers-edge3) before 2.=
0.0

Description:

Edge3 Worker RPC RCE on Airflow 2.

This issue affects Apache Airflow Providers Edge3: before 2.0.0 - and only =
if you installed and configured it on Airflow 2.



The Edge3 provider support in Airflow 2 has been always development-only an=
d not officially released, however if you installed and configured Edge3 pr=
ovider in Airflow 2, it implicitly enabled non-public (normally) API which =
was used to test Edge Provider in Airflow 2 during the development. This AP=
I allowed Dag author to perform Remote Code Execution in the webserver cont=
ext, which Dag Author was not supposed to be able to do.

If you installed and configured Edge3 provider for Airflow 2, you should un=
install it and migrate to Airflow 3. The new Edge3 provider versions (>=3D2=
.0.0) has minimum version of Airflow set to 3 and the RCE-prone Airflow 2 c=
ode is removed, so it should no longer be possible to use the Edge3 provide=
r 2.0.0+ on Airflow 2.

If you used Edge Provider in Airflow 3, you are not affected.

Credit:

Lee (finder)

References:

https://github.com/apache/airflow/pull/59143
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-67895

