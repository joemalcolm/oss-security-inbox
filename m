Received: (qmail 9730 invoked by uid 550); 26 May 2023 19:57:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8012 invoked from network); 26 May 2023 19:55:16 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bf62b2f3-3a37-779f-93b0-d716a2012150@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 May 2023 19:54:52 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-33234: Apache Airflow CNCF Kubernetes Provider:
 KubernetesPodOperator RCE via connection configuration 

Severity: low

Affected versions:

- Apache Airflow CNCF Kubernetes Provider 5.0.0 through 6.1.0

Description:

Arbitrary code execution in Apache Airflow CNCF Kubernetes provider version=
 5.0.0 allows user to change xcom sidecar image and resources via Airflow c=
onnection.

In order to exploit this weakness, a user would already need elevated permi=
ssions (Op or Admin) to change the connection object in this manner.=C2=A0 =
Operators should upgrade to provider version 7.0.0 which has removed the vu=
lnerability.

References:

https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-33234

