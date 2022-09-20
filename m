Received: (qmail 1174 invoked by uid 550); 20 Sep 2022 19:28:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20397 invoked from network); 20 Sep 2022 18:55:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jedidiah Cunningham <jedcunningham@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d3f78cdd-6521-812e-2914-1a289f602f3c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Sep 2022 18:55:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-40754: Apache Airflow: Open Redirect 

Description:

In Apache Airflow 2.3.0 through 2.3.4, there was an open redirect in the we=
bserver's `/confirm` endpoint.

Credit:

The Apache Airflow PMC would like to thank Konstantin Weddige (Lutra Securi=
ty) for reporting this issue.

References:

https://github.com/apache/airflow/pull/26409


