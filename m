Received: (qmail 24557 invoked by uid 550); 25 Aug 2023 13:23:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31969 invoked from network); 25 Aug 2023 12:18:04 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <55a24bf6-82c1-4f5a-712d-04d187a5be30@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 25 Aug 2023 12:17:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-27604: Apache Airflow Sqoop Provider: Airflow Sqoop
 Provider RCE Vulnerability 

Severity: moderate

Affected versions:

- Apache Airflow Sqoop Provider before 4.0.0

Description:

Apache Airflow Sqoop Provider, versions before 4.0.0, is affected by a vuln=
erability that allows an attacker pass parameters with the connections, whi=
ch makes it possible to implement RCE attacks via =E2=80=98sqoop import --c=
onnect=E2=80=99, obtain airflow server permissions, etc. The attacker needs=
 to be logged in and have authorization (permissions) to create/edit connec=
tions.

 It is recommended to upgrade to a version that is not affected.
This issue was reported independently by happyhacking-k, And Xie Jianming a=
nd LiuHui of Caiji Sec Team also reported it.

Credit:

happyhacking-k (finder)
Xie Jianming of Caiji Sec Team (finder)
Liu Hui of Caiji Sec Team (finder)

References:

https://github.com/apache/airflow/pull/33039
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-27604

