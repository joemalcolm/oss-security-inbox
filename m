Received: (qmail 11505 invoked by uid 550); 19 Feb 2024 09:44:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5722 invoked from network); 19 Feb 2024 01:22:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Gary D. Gregory" <ggregory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5a3f56e3-a001-9cd5-5432-32e44cea78c8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 19 Feb 2024 01:25:47 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-25710: Apache Commons Compress: Denial of service caused
 by an infinite loop for a corrupted DUMP file 

Severity: important

Affected versions:

- Apache Commons Compress 1.3 through 1.25.0

Description:

Loop with Unreachable Exit Condition ('Infinite Loop') vulnerability in Apa=
che Commons Compress.This issue affects Apache Commons Compress: from 1.3 t=
hrough 1.25.0.

Users are recommended to upgrade to version 1.26.0 which fixes the issue.

Credit:

Yakov Shafranovich, Amazon Web Services (reporter)

References:

https://commons.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-25710

