Received: (qmail 5378 invoked by uid 550); 27 Feb 2026 21:43:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5326 invoked from network); 27 Feb 2026 21:43:05 -0000
Date: Fri, 27 Feb 2026 22:41:18 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <aaIPfq5rK11G/HI5@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Stack-buffer-overflow in build_stl_str_hl() affects
 Vim < 9.2.0078

Stack-buffer-overflow in build_stl_str_hl() affects Vim < 9.2.0078
==================================================================
Date: 27.02.2026
Severity: Moderate
CVE: CVE-2026-28422
CWE: Stack-based Buffer Overflow (CWE-121)

### Summary
A stack-buffer-overflow occurs in `build_stl_str_hl()` when rendering a 
statusline with a multi-byte fill character on a very wide terminal.

### Description
Vim uses a fixed-size stack buffer (`MAXPATHL` = 4096 bytes) to build 
the statusline string. When filling empty space in the statusline (e.g., 
using `%=`), Vim checks if there is enough room in the buffer based on 
the remaining screen cells. 

However, if a multi-byte character (like U+2500) is used as a fill 
character, each cell requires 3 bytes of memory. On terminals wider than 
~1365 columns, the byte-count exceeds the 4096-byte buffer, but the 
cell-count check still passes, leading to a stack overflow of up to 1904 
bytes.

### Impact
An attacker who can influence a user's `fillchars` or `statusline` 
settings (e.g., via a malicious modeline or plugin) can trigger a 
stack-buffer-overflow. While this may not result in an immediate crash 
in all environments, it leads to memory corruption that can cause 
unpredictable behavior when the statusline is redrawn on a sufficiently 
wide terminal.

### Acknowledgements
The Vim project would like to thank the reporter Github users ehdgks0627 
and un3xploitable for identifying the vulnerability and providing a 
proof-of-concept.

### References
The issue has been fixed as of Vim patch 
[v9.2.0078](https://github.com/vim/vim/releases/tag/v9.2.0078)

[Commit](https://github.com/vim/vim/commit/4e5b9e31cb7484ad156f)
[Github Advisory](https://github.com/vim/vim/security/advisories/GHSA-gmqx-prf2-8mwf)

Thanks,
Christian
-- 
Denk immer daran, daß die Menge, die bei Deiner Krönung gejubelt hat,
auch klatschen wird, wenn man Dich köpft.
		-- Terry Pratchett, "Ab die Post"
