Received: (qmail 1691 invoked by uid 550); 16 Nov 2024 14:05:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9863 invoked from network); 16 Nov 2024 10:07:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Chao Gong <gongchao@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <971b595c-3045-303a-1df0-1c096cf4bdc5@apache.org>
Content-Transfer-Encoding: 7bit
Date: Sat, 16 Nov 2024 10:04:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-41151: Apache HertzBeat: RCE by notice template injection
 vulnerability 

Severity: moderate

Affected versions:

- Apache HertzBeat before 1.6.1

Description:

Deserialization of Untrusted Data vulnerability in Apache HertzBeat.

This vulnerability can only be exploited by authorized attackers.


This issue affects Apache HertzBeat: before 1.6.1.

Users are recommended to upgrade to version 1.6.1, which fixes the issue.

Credit:

Li Yi Wei (finder)
Elin Kai (finder)

References:

https://www.cve.org/CVERecord?id=CVE-2024-41151

