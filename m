Received: (qmail 1816 invoked by uid 550); 9 Apr 2026 14:18:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1795 invoked from network); 9 Apr 2026 14:18:32 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Maxim Solodovnik <solomax@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5fe9dbb2-d948-7040-fa65-cf9ebf8f9af2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Apr 2026 14:18:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-33005: Apache OpenMeetings: Insufficient checks in
 FileWebService 

Severity: moderate=20

Affected versions:

- Apache OpenMeetings 3.1.0 before 9.0.0

Description:

Improper Handling of Insufficient Privileges vulnerability in Apache OpenMe=
etings.

Any registered user can query web service with their credentials and get fi=
les/sub-folders of any folder by ID (metadata only NOT contents). Metadata =
includes id, type, name and some other field. Full list of fields get be ch=
ecked at=C2=A0FileItemDTO=C2=A0object.

This issue affects Apache OpenMeetings: from 3.10 before 9.0.0.

Users are recommended to upgrade to version 9.0.0, which fixes the issue.

This issue is being tracked as OPENMEETINGS-2812=20

Credit:

4ra2n (A code security AI agent) (finder)

References:

https://openmeetings.apache.org/openmeetings-db/apidocs/org.apache.openmeet=
ings.db/org/apache/openmeetings/db/dto/file/FileItemDTO.html
https://openmeetings.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-33005
https://issues.apache.org/jira/browse/OPENMEETINGS-2812

