Received: (qmail 22171 invoked by uid 550); 8 Jul 2024 03:51:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23690 invoked from network); 8 Jul 2024 03:25:12 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: David Handermann <exceptionfactory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <84ec392f-a9b7-ae51-9c71-5a7497f5eb20@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jul 2024 03:25:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-37389: Apache NiFi: Improper Neutralization of Input in
 Parameter Context Description 

Affected versions:

- Apache NiFi 1.10.0 through 1.26.0
- Apache NiFi 2.0.0-M1 through 2.0.0-M3

Description:

Apache NiFi 1.10.0 through 1.26.0 and 2.0.0-M1 through 2.0.0-M3 support a d=
escription field in the Parameter Context configuration that is vulnerable =
to cross-site scripting. An authenticated user, authorized to configure a P=
arameter Context, can enter arbitrary JavaScript code, which the client bro=
wser will execute within the session context of the authenticated user. Upg=
rading to Apache NiFi 1.27.0 or 2.0.0-M4 is the recommended mitigation.

This issue is being tracked as NIFI-13374=20

Credit:

Akbar Kustirama (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-37389
https://issues.apache.org/jira/browse/NIFI-13374

Timeline:

2024-06-07: reported
2024-06-07: confirmed
2024-06-07: resolved

