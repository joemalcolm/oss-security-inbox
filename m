Received: (qmail 5603 invoked by uid 550); 10 Jul 2023 15:05:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32016 invoked from network); 10 Jul 2023 14:03:20 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Brahma Reddy Battula <brahma@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ddecd987-beac-94f8-ad9d-bac236faa4dc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 10 Jul 2023 14:02:27 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45855: Apache Ambari: Allows authenticated metrics
 consumers to perform RCE 

Affected versions:

- Apache Ambari 2.7.0 through 2.7.6

Description:

SpringEL injection in the metrics source in Apache Ambari version 2.7.0 to =
2.7.6 allows a malicious authenticated user to execute arbitrary code remot=
ely.=C2=A0Users are recommended to upgrade to 2.7.7.

Credit:

rg <18993610179@163.com> (finder)

References:

https://ambari.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-45855

