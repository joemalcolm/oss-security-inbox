Received: (qmail 22208 invoked by uid 550); 22 Sep 2022 18:46:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30412 invoked from network); 22 Sep 2022 15:15:22 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <10e2759e-66fb-9c9d-5d20-3e6f3fa672f2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 22 Sep 2022 15:15:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-40955: Deserialization attack in Apache InLong prior to
 version 1.3.0 allows RCE via JDBC 

Severity: important

Description:

In versions of Apache InLong prior to 1.3.0, an attacker with sufficient pr=
ivileges to specify MySQL JDBC connection URL parameters and to write arbit=
rary data to the MySQL database, could cause this data to be deserialized b=
y Apache InLong, potentially leading to Remote Code Execution on the Apache=
 InLong server.

Users are advised to upgrade to Apache InLong 1.3.0 or newer.

Credit:

This issue was discovered by 4ra1n of Chaitin Tech.

References:

https://lists.apache.org/thread/r1r34y7bchrpmp9jhfdoohzdmk7pj1q1

