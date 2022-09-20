Received: (qmail 32752 invoked by uid 550); 20 Sep 2022 19:28:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20300 invoked from network); 20 Sep 2022 18:55:06 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jedidiah Cunningham <jedcunningham@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <276b2fdb-440f-5ed0-d9a5-6acc21202659@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Sep 2022 18:53:42 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-40604: Apache Airflow: Format String Vulnerability 

Description:

In Apache Airflow 2.3.0 through 2.3.4, part of a url was unnecessarily form=
atted, allowing for possible information extraction.

Credit:

The Apache Airflow PMC would like to thank L3yx of Syclover Security Team f=
or reporting this issue.

References:

https://github.com/apache/airflow/pull/26337


