Received: (qmail 20274 invoked by uid 550); 20 Nov 2024 17:23:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14146 invoked from network); 20 Nov 2024 17:21:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: David Handermann <exceptionfactory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9bad0c80-8ba9-b369-8656-a38683a35c58@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 Nov 2024 17:20:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-52067: Apache NiFi: Potential Insertion of Sensitive
 Parameter Values in Debug Log 

Affected versions:

- Apache NiFi 1.16.0 through 1.28.0
- Apache NiFi 2.0.0-M1 through 2.0.0-M4

Description:

Apache NiFi 1.16.0 through 1.28.0 and 2.0.0-M1 through 2.0.0-M4 include opt=
ional debug logging of Parameter Context values during the flow synchroniza=
tion process. An authorized administrator with access to change logging lev=
els could enable debug logging for framework flow synchronization, causing =
the application to write Parameter names and values to the application log.=
 Parameter Context values may contain sensitive information depending on ap=
plication flow configuration. Deployments of Apache NiFi with the default L=
ogback configuration do not log Parameter Context values. Upgrading to Apac=
he NiFi 2.0.0 or 1.28.1 is the recommendation mitigation, eliminating Param=
eter value logging from the flow synchronization process regardless of the =
Logback configuration.

This issue is being tracked as NIFI-13971=20

Credit:

David Handermann (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-52067
https://issues.apache.org/jira/browse/NIFI-13971

