Received: (qmail 19879 invoked by uid 550); 19 Apr 2024 10:17:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15852 invoked from network); 19 Apr 2024 10:16:22 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8d4a4f8a-373d-fff2-c82e-5805f44e3ae3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Apr 2024 10:08:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-29733: Apache Airflow FTP Provider: FTP_TLS instance with
 unverified SSL context 

Severity: low

Affected versions:

- Apache Airflow FTP Provider before 3.7.0

Description:

Improper Certificate Validation vulnerability in Apache Airflow FTP Provide=
r.

The FTP hook lacks complete certificate validation in FTP_TLS connections, =
which can potentially be leveraged. Implementing proper certificate validat=
ion by passing context=3Dssl.create_default_context() during FTP_TLS instan=
tiation is used as mitigation to validate the certificates properly.

This issue affects Apache Airflow FTP Provider: before 3.7.0.

Users are recommended to upgrade to version 3.7.0, which fixes the issue.

Credit:

Eric Brown of Secure Sauce LLC (finder)

References:

https://github.com/apache/airflow/pull/38266
https://github.com/apache/airflow/blob/95e26118b828c364755f3a8c96870f3591b0=
1c31/airflow/providers/ftp/hooks/ftp.py#L280
https://docs.python.org/3/library/ssl.html#best-defaults
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-29733

