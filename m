Received: (qmail 30288 invoked by uid 550); 27 Feb 2026 21:42:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30247 invoked from network); 27 Feb 2026 21:42:34 -0000
Date: Fri, 27 Feb 2026 22:40:47 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <aaIPX8vdZhmlp9at@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Heap-based Buffer Underflow in Emacs tags parsing
 affects Vim < 9.2.0075

Heap-based Buffer Underflow in Emacs tags parsing affects Vim < 9.2.0075
========================================================================
Date: 27.02.2026
Severity: Medium
CVE: CVE-2026-28419
CWE: Heap-based Buffer Underflow (CWE-124) / Out-of-bounds Read (CWE-125)

### Summary
A heap-based buffer underflow exists in Vim's Emacs-style tags file 
parsing logic. When processing a malformed tags file where a delimiter 
appears at the start of a line, Vim attempts to read memory immediately 
preceding the allocated buffer.

### Description
The vulnerability is located in the `emacs_tags_parse_line()` function 
in `src/tag.c`. When parsing Emacs-style tags that use the "second 
format" (where the tag name is not explicitly provided), the code 
attempts to isolate the tag name by scanning backward from the `0x7f` 
delimiter.

If the `0x7f` delimiter is located at the very beginning of the line 
(`p_7f == lbuf`), the pointer arithmetic `p = p_7f - 1` results in a 
pointer that precedes the start of the heap-allocated buffer. The code 
then dereferences this pointer in the `vim_iswordc()` check before 
verifying the buffer bounds, leading to an out-of-bounds read.

### Impact
An attacker who induces a user to perform a tag lookup using a crafted 
Emacs tags file can trigger a 1-byte out-of-bounds read. This can lead 
to a crash (Denial of Service).

The severity is rated **medium** because it is a 1-byte read-only 
underflow and requires user interaction with a malicious file.

### Acknowledgements
The Vim project would like to thank GitHub users ehdgks0627 and 
un3xploitable for identifying the vulnerability and providing a 
proof-of-concept.

### References
The issue has been fixed as of Vim patch 
[v9.2.0075](https://github.com/vim/vim/releases/tag/v9.2.0075).

[Commit](https://github.com/vim/vim/commit/9b7dfa2948c9e1e5e32a5812)
[Github Advisory](https://github.com/vim/vim/security/advisories/GHSA-xcc8-r6c5-hvwv)

Thanks,
Christian
-- 
Ein edler Mensch zieht edle Menschen an und weiß sie festzuhalten.
		-- Johann Wolfgang von Goethe (Torquato Tasso)
