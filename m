Received: (qmail 5567 invoked by uid 550); 16 Feb 2026 17:05:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18299 invoked from network); 16 Feb 2026 17:00:12 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: David Handermann <exceptionfactory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e13bc4ef-f38e-bb7f-ad14-83052412ab34@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Feb 2026 17:00:02 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-25903: Apache NiFi: Missing Authorization of Restricted
 Permissions for Component Updates 

Severity:=20

Affected versions:

- Apache NiFi (org.apache.nifi:nifi-web-api) 1.1.0 before 2.8.0

Description:

Apache NiFi 1.1.0 through 2.7.2 are missing authorization when updating con=
figuration properties on extension components that have specific Required P=
ermissions based on the Restricted annotation. The Restricted annotation in=
dicates additional privileges required to add the annotated component to th=
e flow configuration, but framework authorization did not check restricted =
status when updating a component previously added. The missing authorizatio=
n requires a more privileged user to add a restricted component to the flow=
 configuration, but permits a less privileged user to make property configu=
ration changes. Apache NiFi installations that do not implement different l=
evels of authorization for Restricted components are not subject to this vu=
lnerability because the framework enforces write permissions as the securit=
y boundary. Upgrading to Apache NiFi 2.8.0 is the recommended mitigation.

This issue is being tracked as NIFI-15567=20

Credit:

David Handermann (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-25903
https://issues.apache.org/jira/browse/NIFI-15567

Timeline:

2026-02-06: reported

