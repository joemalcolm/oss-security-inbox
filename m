Received: (qmail 7386 invoked by uid 550); 14 Nov 2022 09:25:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5198 invoked from network); 13 Nov 2022 23:50:57 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1b84d432-4696-5e87-8b43-fa704b5d57d4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 13 Nov 2022 23:50:40 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-27949: Apache Airflow: sensitive values in rendered
 template 

Severity: low

Description:

A vulnerability in UI of Apache Airflow allows an attacker to view unmasked=
 secrets in rendered template values for tasks which were not executed (for=
 example when they were depending on past and previous instances of the tas=
k failed). This issue affects Apache Airflow prior to 2.3.1.

References:

https://github.com/apache/airflow/pull/22754

