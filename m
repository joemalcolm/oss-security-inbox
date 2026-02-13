Received: (qmail 3546 invoked by uid 550); 13 Feb 2026 19:15:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3508 invoked from network); 13 Feb 2026 19:15:29 -0000
Date: Fri, 13 Feb 2026 20:13:53 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <aY938TY131se7mSQ@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] NetBeans specialKeys Stack Buffer Overflow with Vim
 <9.1.2148

NetBeans specialKeys Stack Buffer Overflow with Vim <9.1.2148
=============================================================
Date: 13.02.2026
Severity: Medium
CVE: CVE-2026-26269
CWE: Stack-based Buffer Overflow (CWE-121)

### Summary
A stack buffer overflow vulnerability exists in Vim's NetBeans integration
when processing the `specialKeys` command, affecting Vim builds that enable
and use the NetBeans feature.

Stack buffer overflow exists in `special_keys()` (in `src/netbeans.c`).
The `while (*tok)` loop writes two bytes per iteration into a 64-byte stack
buffer (keybuf) with no bounds check. A malicious NetBeans server can overflow
keybuf with a single specialKeys command.

### Description
The vulnerability is located in the `special_keys()` function in
`src/netbeans.c`.

Vim allocates a fixed-size stack buffer of 64 bytes (`KEYBUFLEN`) and
writes attacker-controlled characters into it without performing any
bounds checking.

The vulnerable code path is triggered when:
1. Vim is started with NetBeans integration enabled (e.g. `-nb` option)
2. Vim connects to a NetBeans server
3. The server sends a crafted `specialKeys` command containing a long
   token string
4. The unchecked writes overflow the stack buffer

This issue was confirmed using AddressSanitizer.

### Impact
This is a Stack-based Buffer Overflow (CWE-121). By sending a crafted
specialKeys command, a malicious or compromised NetBeans server can overwrite
the stack, leading to:

- Denial of Service: Immediate crashing of the Vim process.
- Arbitrary Code Execution: Potential hijacking of the control flow by
  overwriting the return address on the stack.

Attack Vector: While the NetBeans interface is legacy, it communicates over
unencrypted TCP. An attacker could perform a Man-in-the-Middle (MITM) attack to
inject the malicious payload into an existing NetBeans session.

The vulnerability requires user interaction to connect to a NetBeans server.
The severity is rated **medium** due to potential for code execution.

### Acknowledgements
The Vim project would like to thank Haein Lee (github handle @haaeein)
for reporting this issue and providing detailed proof-of-concept code
demonstrating the vulnerability.

### References
The issue has been fixed as of Vim patch [v9.1.2148](https://github.com/vim/vim/releases/tag/v9.1.2148).

[Commit](https://github.com/vim/vim/commit/c5f312aad8e4179e437f81ad39a860cd0ef11970)
[Github Advisory](https://github.com/vim/vim/security/advisories/GHSA-9w5c-hwr9-hc68)


Thanks,
Christian
-- 
Wenn Männer sich mit ihrem Kopf beschäftigen, nennt man das 'denken'.
Wenn Frauen das gleiche tun, heißt das 'frisieren'.
		-- Anna Magnani
