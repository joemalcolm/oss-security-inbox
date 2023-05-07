Received: (qmail 20100 invoked by uid 550); 7 May 2023 21:16:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23638 invoked from network); 7 May 2023 17:03:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Pierre Jeambrun <pierrejeambrun@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9cb8f8f7-e532-c9df-3e6b-511067d921a9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 07 May 2023 17:02:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-29247: Stored XSS on Apache Airflow 

Severity: important

Affected versions:

- Apache Airflow before 2.6.0

Description:

Task instance details page in the UI is vulnerable to a stored XSS.This iss=
ue affects Apache Airflow: before 2.6.0.

Credit:

taidh from VNPT - VCI (finder)
kuteminh11 (finder)

References:

https://github.com/apache/airflow/pull/30447
https://github.com/apache/airflow/pull/30779
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-29247

