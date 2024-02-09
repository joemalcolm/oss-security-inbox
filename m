Received: (qmail 19711 invoked by uid 550); 9 Feb 2024 17:34:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28486 invoked from network); 9 Feb 2024 17:21:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Houston Putman <houston@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3d12c623-01c5-79be-9809-64a818d67a53@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 09 Feb 2024 17:23:52 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-50291: Apache Solr: System Property redaction logic
 inconsistency can lead to leaked passwords 

Severity: moderate

Affected versions:

- Apache Solr 6.0.0 through 8.11.2
- Apache Solr 9.0.0 before 9.3.0

Description:

Insufficiently Protected Credentials vulnerability in Apache Solr.

This issue affects Apache Solr: from 6.0.0 through 8.11.2, from 9.0.0 befor=
e 9.3.0.
One of the two endpoints that publishes the Solr process' Java system prope=
rties, /admin/info/properties, was only setup to hide system properties tha=
t had "password" contained in the name.
There are a number of sensitive system properties, such as "basicauth" and =
"aws.secretKey" do not contain "password", thus their values were published=
 via the "/admin/info/properties" endpoint.
This endpoint populates the list of System Properties on the home screen of=
 the Solr Admin page, making the exposed credentials visible in the UI.

This /admin/info/properties endpoint is protected under the "config-read" p=
ermission.
Therefore, Solr Clouds with Authorization enabled will only be vulnerable t=
hrough logged-in users that have the "config-read" permission.
Users are recommended to upgrade to version 9.3.0 or 8.11.3, which fixes th=
e issue.
A single option now controls hiding Java system property for all endpoints,=
 "-Dsolr.hiddenSysProps".
By default all known sensitive properties are hidden (including "-Dbasicaut=
h"), as well as any property with a name containing "secret" or "password".

Users who cannot upgrade can also use the following Java system property to=
 fix the issue:
=C2=A0 '-Dsolr.redaction.system.pattern=3D.*(password|secret|basicauth).*'

This issue is being tracked as SOLR-16809=20

Credit:

Michael Taggart (reporter)

References:

https://solr.apache.org/security.html#cve-2023-50291-apache-solr-can-leak-c=
ertain-passwords-due-to-system-property-redaction-logic-inconsistencies
https://solr.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-50291
https://issues.apache.org/jira/browse/SOLR-16809

