Received: (qmail 15837 invoked by uid 550); 27 Nov 2023 23:13:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2047 invoked from network); 27 Nov 2023 22:00:33 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: David Handermann <exceptionfactory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e9bc0330-6574-e4e4-711e-c47450c53e53@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Nov 2023 21:58:37 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49145: Apache NiFi: Improper Neutralization of Input in
 Advanced User Interface for Jolt 

Affected versions:

- Apache NiFi 0.7.0 through 1.23.2

Description:

Apache NiFi 0.7.0 through 1.23.2 include the JoltTransformJSON Processor, w=
hich provides an advanced configuration user interface that is vulnerable t=
o DOM-based cross-site scripting. If an authenticated user, who is authoriz=
ed to configure a JoltTransformJSON Processor, visits a crafted URL, then a=
rbitrary
JavaScript code can be executed within the session context of the authentic=
ated user. Upgrading to Apache NiFi 1.24.0 or 2.0.0-M1 is the recommended m=
itigation.

This issue is being tracked as NIFI-12403=20

Credit:

Dr. Oliver Matula, DB Systel GmbH (finder)

References:

https://nifi.apache.org/security.html#CVE-2023-49145
https://nifi.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-49145
https://issues.apache.org/jira/browse/NIFI-12403

Timeline:

2023-11-22: reported
2023-11-22: confirmed
2023-11-22: resolved

