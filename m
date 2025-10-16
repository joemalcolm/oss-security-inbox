Received: (qmail 5288 invoked by uid 550); 16 Oct 2025 16:20:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1277 invoked from network); 16 Oct 2025 08:39:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <eca856de-bfdc-85b0-715d-f34140fc6bd1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 16 Oct 2025 08:39:37 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-61581: Apache Traffic Control: ReDoS issue in Traffic
 Router configuration 

Severity: low=20

Affected versions:

- Apache Traffic Control: all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** Inefficient Regular Expression Complexity v=
ulnerability in Apache Traffic Control.

This issue affects Apache Traffic Control: all versions.

People with access to the management interface of the Traffic Router compon=
ent could specify malicious patterns and cause unavailability.

As this project is retired, we do not plan to release a version that fixes =
this issue. Users are recommended to find an alternative or restrict access=
 to the instance to trusted users.

NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

Credit:

Chris Lemmons (finder)

References:

https://trafficcontrol.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-61581

