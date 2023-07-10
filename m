Received: (qmail 3744 invoked by uid 550); 10 Jul 2023 15:04:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20182 invoked from network); 10 Jul 2023 13:45:35 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Brahma Reddy Battula <brahma@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f61029a1-f4dc-8fb3-a9c8-444901495532@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 10 Jul 2023 13:45:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-42009: Apache Ambari: A malicious authenticated user can
 remotely execute arbitrary code in the context of the application. 

Affected versions:

- Apache Ambari 2.7.0 through 2.7.6

Description:

SpringEL injection in the server agent in Apache Ambari version 2.7.0 to 2.=
7.6 allows a malicious authenticated user to execute arbitrary code remotel=
y. Users are recommended to upgrade to 2.7.7.

Credit:

Jecki Go (jecgo@visa.com) (finder)

References:

https://ambari.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-42009

