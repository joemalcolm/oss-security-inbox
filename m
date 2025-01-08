Received: (qmail 28306 invoked by uid 550); 8 Jan 2025 06:21:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28285 invoked from network); 8 Jan 2025 06:21:44 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Maxim Solodovnik <solomax@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <38de90c3-8be6-12db-0ec6-d43223170983@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jan 2025 06:20:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-54676: Apache OpenMeetings: Deserialisation of untrusted
 data in cluster mode 

Severity: important

Affected versions:

- Apache OpenMeetings 2.1 before 8.0.0

Description:

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings from 2.1.0 before 8.0.0

Description: Default clustering instructions at  https://openmeetings.apach=
e.org/Clustering.html =C2=A0doesn't specify white/black lists for OpenJPA t=
his leads to possible deserialisation of untrusted data.
Users are recommended to upgrade to version 8.0.0 and update their startup =
scripts to include the relevant 'openjpa.serialization.class.blacklist' and=
 'openjpa.serialization.class.whitelist' configurations as shown in the doc=
umentation.

This issue is being tracked as OPENMEETINGS-2787=20

Credit:

m0d9 from Tencent Yunding Lab (reporter)

References:

https://openmeetings.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-54676
https://issues.apache.org/jira/browse/OPENMEETINGS-2787

