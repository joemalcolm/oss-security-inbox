Received: (qmail 13390 invoked by uid 550); 28 Nov 2025 14:28:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21683 invoked from network); 28 Nov 2025 13:59:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Hulk Lin <hulk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <396ec424-7fe1-6c7c-9a69-cb01a339f1e5@apache.org>
Content-Transfer-Encoding: 7bit
Date: Fri, 28 Nov 2025 13:59:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-59790: Apache Kvrocks: RESET command grants admin
 privileges 

Severity: critical 

Affected versions:

- Apache Kvrocks 2.9.0 through 2.13.0

Description:

Improper Privilege Management vulnerability in Apache Kvrocks.

This issue affects Apache Kvrocks: from v2.9.0 through v2.13.0.

Users are recommended to upgrade to version 2.14.0, which fixes the issue.

Credit:

Mapta / BugBunny_ai (reporter)

References:

https://kvrocks.apache.org
https://www.cve.org/CVERecord?id=CVE-2025-59790

