Received: (qmail 9909 invoked by uid 550); 12 Jun 2023 19:15:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16368 invoked from network); 12 Jun 2023 14:28:50 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: David Handermann <exceptionfactory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a15c3bbf-8edf-e498-93cb-0bbdcab75708@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 12 Jun 2023 14:28:25 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-34468: Apache NiFi: Potential Code Injection with
 Database Services using H2 

Severity: important

Affected versions:

- Apache NiFi 0.0.2 through 1.21.0

Description:

The DBCPConnectionPool and HikariCPConnectionPool Controller Services in Ap=
ache NiFi 0.0.2 through 1.21.0 allow an authenticated and authorized user t=
o configure a Database URL with the H2 driver that enables custom code exec=
ution.

The resolution validates the Database URL and rejects H2 JDBC locations.

This issue is being tracked as NIFI-11653=20

Credit:

Matei "Mal" Badanoiu (finder)

References:

https://nifi.apache.org/security.html#CVE-2023-34468
https://nifi.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-34468
https://issues.apache.org/jira/browse/NIFI-11653

Timeline:

2023-06-06: reported
2023-06-06: confirmed
2023-06-06: resolved

