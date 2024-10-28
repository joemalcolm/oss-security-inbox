Received: (qmail 13536 invoked by uid 550); 28 Oct 2024 20:14:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31841 invoked from network); 28 Oct 2024 19:35:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: David Handermann <exceptionfactory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5554dc12-26ae-13a7-6693-7dbff66cf62b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 28 Oct 2024 19:34:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45477: Apache NiFi: Improper Neutralization of Input in
 Parameter Description 

Affected versions:

- Apache NiFi 1.10.0 through 1.27.0
- Apache NiFi 2.0.0-M1 through 2.0.0-M3

Description:

Apache NiFi 1.10.0 through 1.27.0 and 2.0.0-M1 through 2.0.0-M3 support a d=
escription field for Parameters in a Parameter Context configuration that i=
s vulnerable to cross-site scripting. An authenticated user, authorized to =
configure a Parameter Context, can enter arbitrary JavaScript code, which t=
he client browser will execute within the session context of the authentica=
ted user. Upgrading to Apache NiFi 1.28.0 or 2.0.0-M4 is the recommended mi=
tigation.

This issue is being tracked as NIFI-13675=20

Credit:

Muhammad Hazim Bin Nor Aizi (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-45477
https://issues.apache.org/jira/browse/NIFI-13675

Timeline:

2024-08-23: reported
2024-08-23: confirmed
2024-08-25: resolved

