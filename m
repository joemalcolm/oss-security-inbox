Received: (qmail 5322 invoked by uid 550); 20 Jun 2024 09:49:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13421 invoked from network); 20 Jun 2024 08:15:16 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e4e003e5-a89a-e56a-461b-743c67bb53ff@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 20 Jun 2024 08:14:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-34693: Apache Superset: Server arbitrary file read 

Affected versions:

- Apache Superset before 3.1.3
- Apache Superset 4.0.0 before 4.0.1

Description:

Improper Input Validation vulnerability in Apache Superset, allows for an a=
uthenticated attacker to create a MariaDB connection with local_infile enab=
led. If both the MariaDB server (off by default) and the local mysql client=
 on the web server are set to allow for local infile, it's possible for the=
 attacker to execute a specific MySQL/MariaDB SQL command that is able to r=
ead files from the server and insert their content on a MariaDB database ta=
ble.This issue affects Apache Superset: before 3.1.3 and version 4.0.0

Users are recommended to upgrade to version 4.0.1 or 3.1.3, which fixes the=
 issue.

Credit:

Matei "Mal" Badanoiu (finder)
Daniel Vaz Gaspar (remediation developer)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-34693

