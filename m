Received: (qmail 18117 invoked by uid 550); 9 Apr 2024 13:06:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11330 invoked from network); 9 Apr 2024 02:38:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jongyoul Lee <jongyoul@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5790cb04-9f4f-19c2-2586-1b6d6dc87bd7@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Apr 2024 02:37:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-31862: Apache Zeppelin: Denial of service with invalid
 notebook name 

Severity: moderate

Affected versions:

- Apache Zeppelin 0.10.1 before 0.11.0

Description:

Improper Input Validation vulnerability in Apache Zeppelin when creating a =
new note from Zeppelin's UI.This issue affects Apache Zeppelin: from 0.10.1=
 before 0.11.0.

Users are recommended to upgrade to version 0.11.0, which fixes the issue.

Credit:

Esa Hiltunen (finder)
https://teragrep.com (finder)

References:

https://github.com/apache/zeppelin/pull/4632
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-31862

