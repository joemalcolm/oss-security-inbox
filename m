Received: (qmail 25607 invoked by uid 550); 7 Oct 2025 21:36:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24542 invoked from network); 7 Oct 2025 21:36:54 -0000
Date: Tue, 7 Oct 2025 17:36:45 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <aOWH7fEE-Gxh3nIt@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] redis: CVE-2025-49844: Lua Use-After-Free may lead to remote code
 execution

I haven't seen it here on this list yet, so
forwarding:

There's an RCE vulnerability in Redis with a CVSS
Score of 9.9 (although advertised as 10.0):

https://nvd.nist.gov/vuln/detail/CVE-2025-49844
https://github.com/redis/redis/security/advisories/GHSA-4789-qfc9-5f9q

CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H


Impact

An authenticated user may use a specially crafted Lua
script to manipulate the garbage collector, trigger a
use-after-free and potentially lead to remote code
execution.

The problem exists in all versions of Redis with Lua
scripting.


Workarounds

An additional workaround to mitigate the problem
without patching the redis-server executable is to
prevent users from executing Lua scripts. This can be
done using ACL to restrict EVAL and EVALSHA commands.
Credit

The problem was reported by Wiz researchers Benny
Isaacs (@benny_isaacs), Nir Brakha, Sagi Tzadik
(@sagitz_) working with Trend Micro, Zero Day
Initiative

---

Additional link, which assesses the vulnerability
based on the how many exposed instances don't require
authentication:

https://www.wiz.io/blog/wiz-research-redis-rce-cve-2025-49844
