Received: (qmail 17693 invoked by uid 550); 9 Apr 2026 14:24:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17665 invoked from network); 9 Apr 2026 14:24:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Maxim Solodovnik <solomax@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <82fa59d7-e690-da3f-a4ee-1b735ecc928c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Apr 2026 14:23:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-34020: Apache OpenMeetings: Login Credentials Passed via
 GET Query Parameters 

Severity: moderate=20

Affected versions:

- Apache OpenMeetings 3.1.3 before 9.0.0

Description:

Use of GET Request Method With Sensitive Query Strings vulnerability in Apa=
che OpenMeetings.

The REST login endpoint uses HTTP GET method with username and password pas=
sed as query parameters.=C2=A0Please check references regarding possible im=
pact


This issue affects Apache OpenMeetings: from 3.1.3 before 9.0.0.

Users are recommended to upgrade to version 9.0.0, which fixes the issue.

This issue is being tracked as OPENMEETINGS-2816=20

Credit:

4ra2n (A code security AI agent) (finder)

References:

https://owasp.org/www-community/vulnerabilities/Information_exposure_throug=
h_query_strings_in_url
https://openmeetings.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-34020
https://issues.apache.org/jira/browse/OPENMEETINGS-2816

