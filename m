Received: (qmail 16021 invoked by uid 550); 12 Jan 2024 19:36:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13794 invoked from network); 12 Jan 2024 19:34:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Houston Putman <houston@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7ca1880e-a43b-8be9-de91-fcd737e1e016@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jan 2024 19:34:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-50290: Apache Solr: Host environment variables are
 published via the Metrics API 

Severity: important

Affected versions:

- Apache Solr 9.0.0 before 9.3.0

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in=
 Apache Solr.
The Solr Metrics API publishes all unprotected environment variables availa=
ble to each Apache Solr instance. Users are able to specify which environme=
nt variables to hide, however, the default list is designed to work for kno=
wn secret Java system properties. Environment variables cannot be strictly =
defined in Solr, like Java system properties can be, and may be set for the=
 entire host,=C2=A0unlike Java system properties which are set per-Java-pro=
ccess.

The Solr Metrics API is protected by the "metrics-read" permission.
Therefore, Solr Clouds with Authorization setup will only be vulnerable via=
 users with the "metrics-read" permission.
This issue affects Apache Solr: from 9.0.0 before 9.3.0.

Users are recommended to upgrade to version 9.3.0 or later, in which enviro=
nment variables are not published via the Metrics API.

This issue is being tracked as SOLR-16808=20

References:

https://solr.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-50290
https://issues.apache.org/jira/browse/SOLR-16808

