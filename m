Received: (qmail 12001 invoked by uid 550); 19 Feb 2024 09:44:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7371 invoked from network); 19 Feb 2024 01:24:03 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Gary D. Gregory" <ggregory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0052eafb-0970-2998-1f78-f8134b0ad4a8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 19 Feb 2024 01:26:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-26308: Apache Commons Compress: OutOfMemoryError
 unpacking broken Pack200 file 

Severity: moderate

Affected versions:

- Apache Commons Compress 1.21 before 1.26.0

Description:

Allocation of Resources Without Limits or Throttling vulnerability in Apach=
e Commons Compress.This issue affects Apache Commons Compress: from 1.21 be=
fore 1.26.

Users are recommended to upgrade to version 1.26, which fixes the issue.

Credit:

Yakov Shafranovich, Amazon Web Services (reporter)

References:

https://commons.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-26308

