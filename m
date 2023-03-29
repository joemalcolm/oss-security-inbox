Received: (qmail 15626 invoked by uid 550); 29 Mar 2023 13:23:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27916 invoked from network); 29 Mar 2023 11:29:54 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Olivier Lamy <olamy@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9cf178b1-ac5a-111c-0784-622d3743845d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 29 Mar 2023 11:29:40 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-28158: Apache Archiva privilege escalation 

Description:

Privilege escalation via stored XSS using the file upload service to upload=
 malicious content.
The issue can be exploited only by authenticated users which can create dir=
ectory name to inject some XSS content and gain some privileges such admin =
user.

This issue is being tracked as n/a=20

Credit:

sandr0 (sandr0.xyz)  (finder)

References:

https://archiva.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-28158
https://issues.apache.org/jira/browse/n/a

