Received: (qmail 22380 invoked by uid 550); 16 Apr 2025 15:45:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9256 invoked from network); 16 Apr 2025 11:17:06 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Chao Gong <gongchao@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f69e7561-d226-4c77-e8c5-3214fc58412a@apache.org>
Content-Transfer-Encoding: 7bit
Date: Wed, 16 Apr 2025 11:15:56 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-56736: Apache HertzBeat (incubating): Server-Side Request
 Forgery (SSRF) in Api Config Oss 

Severity: low

Affected versions:

- Apache HertzBeat (incubating) before 1.7.0

Description:

Server-Side Request Forgery (SSRF) vulnerability in Apache HertzBeat.

This issue affects Apache HertzBeat (incubating): before 1.7.0.

Users are recommended to upgrade to version 1.7.0, which fixes the issue.

Credit:

tonghuaroot (finder)
zyufoye (finder)

References:

https://www.cve.org/CVERecord?id=CVE-2024-56736

