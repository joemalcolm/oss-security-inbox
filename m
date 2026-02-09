Received: (qmail 15848 invoked by uid 550); 9 Feb 2026 16:12:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3747 invoked from network); 9 Feb 2026 14:22:33 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Qingran Zhao <zhaoqingran@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a6374615-a92b-7b65-727b-e4fbcc505d4a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 09 Feb 2026 14:21:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-24343: Apache HertzBeat: Uncontrolled Resource
 Consumption via Crafted XPath Expressions 

Severity: Important=20

Affected versions:

- Apache HertzBeat (org.apache.hertzbeat:hertzbeat-collector) 1.7.1 before =
1.8.0

Description:

Improper Neutralization of Data within XPath Expressions ('XPath Injection'=
) vulnerability in Apache HertzBeat.

This issue affects Apache HertzBeat: from 1.7.1 before 1.8.0.

Users are recommended to upgrade to version 1.8.0, which fixes the issue.

References:

https://hertzbeat.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-24343

