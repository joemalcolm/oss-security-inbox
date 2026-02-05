Received: (qmail 18033 invoked by uid 550); 5 Feb 2026 19:37:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12149 invoked from network); 5 Feb 2026 19:16:14 -0000
Date: Thu, 5 Feb 2026 20:14:44 +0100
From: Christian Brabandt <cb_home@gmx.de>
To: oss-security@lists.openwall.com,
	Yee Cheng Chin <ychin.macvim@gmail.com>,
	"T.J. Townsend" <tj@mrsk.me>, Ken Takata <ktakata65536@gmail.com>,
	Jiaqi Zhou <zeertzjq@outlook.com>,
	Dominique Pelle <dominique.pelle@gmail.com>, mattn.jp@gmail.com,
	sthen@openbsd.org, adamw@freebsd.org,
	James McCoy <jamessan@jamessan.com>,
	Yegappan Lakshmanan <yegappanl@gmail.com>,
	Doug Kearns <dougkearns@gmail.com>, glepnir <glephunter@gmail.com>,
	Hirohito Higashi <h.east.727@gmail.com>
Message-ID: <aYTsJNEDREaY790x@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb_home@gmx.de
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] buffer overflow in helpfile option handling affects
 Vim <9.1.2132

buffer overflow in helpfile option handling affects Vim <9.1.2132
=================================================================
Date: 05.02.2026
Severity: Medium
CVE: *not yet assigned*
CWE: Heap-based Buffer Overflow (CWE-122)

### Summary
A heap buffer overflow vulnerability exists in Vim's tag file resolution 
logic when processing the 'helpfile' option, affecting all versions prior 
to version v9.1.2132.

### Description
The vulnerability is located in the `get_tagfname()` function in `src/tag.c`.
When processing help file tags, Vim copies the user-controlled 
'helpfile' option value into a fixed-size heap buffer of MAXPATHL + 1 bytes 
(typically 4097 bytes) using an unsafe `STRCPY()` operation without any 
bounds checking.

The vulnerable code path is triggered when:
1. A user or attacker sets the 'helpfile' option to a string exceeding 
   MAXPATHL bytes
2. The `:help` command is executed
3. The call chain `ex_help()` → `find_help_tags()` → `find_tags()` → 
   `get_tagfname()` is invoked
4. The unchecked `STRCPY(buf, p_hf)` overflows the heap-allocated buffer.

Since the 'helpfile' option has no length validation when set, arbitrarily 
long values can be assigned and subsequently copied, causing heap memory 
corruption when the buffer overflow occurs.

### Impact
The vulnerability allows heap buffer overflow with the following potential 
impacts:

- **Denial of Service**: Heap corruption causes immediate application crashes
- **Memory Corruption**: Adjacent heap allocations and heap metadata can 
  be overwritten
- **Potential Code Execution**: Depending on heap layout and exploitation 
  techniques, this could potentially be leveraged for arbitrary code 
  execution, though this would be non-trivial

The vulnerability requires user interaction (executing the `:help` command
and setting the 'helpfile' option value) and is therefore rated
**medium** but has the potential for code execution.

This issue was confirmed using AddressSanitizer, which detected a 
heap-buffer-overflow with writes significantly exceeding the allocated 
buffer size.

### Acknowledgements
The Vim project would like to thank Rahul Hoysala (github handle @rahulhoysala)
for reporting this issue and providing detailed proof-of-concept code
demonstrating the vulnerability.

### References
The issue has been fixed as of Vim patch v9.1.2132.

https://github.com/vim/vim/commit/0714b15940b245108e6e9d7aa2260dd849a26fa9
https://github.com/vim/vim/security/advisories/GHSA-5w93-4g67-mm43

Thanks,
Chris
-- 
Angst haben wir alle.
Der Unterschied lieget in der Frage: Wovor ?
		-- Frank Thieß
