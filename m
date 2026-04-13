Received: (qmail 9443 invoked by uid 550); 13 Apr 2026 14:24:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25897 invoked from network); 13 Apr 2026 14:18:35 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f2033bf2-8e9a-ace3-7a9b-2c3139e2feb8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Apr 2026 14:18:01 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-66236: Apache Airflow: Secrets from Airflow config file
 logged in plain text in DAG run logs UI 

Severity: moderate=20

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.2.0

Description:

Before Airflow 3.2.0, it was unclear that secure Airflow deployments requir=
e the Deployment Manager to take appropriate actions and pay attention to s=
ecurity details and security model of Airflow. Some assumptions the Deploym=
ent Manager could make were not clear or explicit enough, even though Airfl=
ow's intentions and security model of Airflow did not suggest different ass=
umptions. The overall security model [1], workload isolation [2], and JWT a=
uthentication details [3] are now described in more detail. Users concerned=
 with role isolation and following the Airflow security model of Airflow ar=
e advised to upgrade to Airflow 3.2, where several security improvements ha=
ve been implemented. They should also read and follow the relevant document=
s to make sure that their deployment is secure enough. It also clarifies th=
at the Deployment Manager is ultimately responsible for securing your Airfl=
ow deployment. This had also been communicated via Airflow 3.2.0 Blog annou=
ncement [4].

[1] Security Model:  https://airflow.apache.org/docs/apache-airflow/stable/=
security/jwt_token_authentication.html=20
[2] Workload isolation:  https://airflow.apache.org/docs/apache-airflow/sta=
ble/security/workload.html=20
[3] JWT Token authentication:  https://airflow.apache.org/docs/apache-airfl=
ow/stable/security/jwt_token_authentication.html=20
[4] Airflow 3.2.0 Blog announcement:  https://airflow.apache.org/blog/airfl=
ow-3.2.0/=20



Users are recommended to upgrade to version 3.2.0, which fixes this issue.

Credit:

Saurabh Banawar (finder)
Amogh Desai (remediation developer)

References:

https://github.com/apache/airflow/pull/58662
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-66236

