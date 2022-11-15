Received: (qmail 15937 invoked by uid 550); 15 Nov 2022 12:00:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24369 invoked from network); 15 Nov 2022 00:16:26 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jedidiah Cunningham <jedcunningham@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8f6f67ee-1601-7bf2-06de-5b105329ea7a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 15 Nov 2022 00:16:10 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45402: Apache Airflow: Open redirect during login 

Description:

In Apache Airflow versions prior to 2.4.3, there was an open redirect in th=
e webserver's `/login` endpoint.

Credit:

The Apache Airflow PMC would like to thank Bugra Eskici for reporting this =
issue.

References:

https://github.com/apache/airflow/pull/27576


