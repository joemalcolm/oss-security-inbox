Received: (qmail 22522 invoked by uid 550); 1 Nov 2022 21:09:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12144 invoked from network); 1 Nov 2022 20:59:20 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jedidiah Cunningham <jedcunningham@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <70b4e691-2031-ca2c-1cb1-2d0d204b4e12@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 01 Nov 2022 20:59:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-43982: Apache Airflow: Reflected XSS via Origin Query
 Argument in URL 

Description:

In Apache Airflow versions prior to 2.4.2, the "Trigger DAG with config" sc=
reen was susceptible to XSS attacks via the `origin` query argument.

Credit:

The Apache Airflow PMC would like to thank id_No2015429 of 3H Security Team=
 for reporting this issue.

References:

https://github.com/apache/airflow/pull/27143


