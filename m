Received: (qmail 21955 invoked by uid 550); 7 May 2026 19:14:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21913 invoked from network); 7 May 2026 19:14:21 -0000
Date: Thu, 7 May 2026 21:14:11 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <afzkg48dgcKJF/6E@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Heap Buffer Overflow in spell file loading affects
 Vim < 9.2.0450

Heap Buffer Overflow in spell file loading affects Vim < 9.2.0450
=================================================================
Date: 07.05.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Integer Overflow or Wraparound (CWE-190) leading to Heap-based Buffer Overflow (CWE-122)

## Summary
A heap buffer overflow exists in `read_compound()` in `src/spellfile.c`
when loading a crafted spell file (`.spl`) with UTF-8 encoding active.
An attacker-controlled length field in the spell file's compound section
overflows a 32-bit signed integer multiplication, causing a small buffer
to be allocated for a write loop that runs many iterations, overflowing
the heap.  Because the `'spelllang'` option can be set from a modeline,
a text file modeline can trigger spell file loading if a malicious
`.spl` file has been planted on the runtimepath.

## Description
In `read_compound()` (`src/spellfile.c`), the buffer size for the regex
pattern `pat` is computed from the attacker-controlled `sectionlen`
field of an `SN_COMPOUND` section.  Both `todo` and the size variable
`c` are declared as `int`:

    c = todo * 2 + 7;
    if (enc_utf8)
        c += todo * 2;
    pat = alloc(c);

When `todo` is sufficiently large (e.g. `0x40000005`), the multiplication
`todo * 4 + 7` overflows the 32-bit signed integer and wraps to a small
positive value (e.g. 27).  `alloc(27)` succeeds, but the subsequent loop
iterates `todo` (~1 billion) times, writing bytes into the 27-byte
buffer and corrupting adjacent heap memory.

The overflow only manifests when UTF-8 encoding is active (`enc_utf8`).
Without it, the intermediate value remains negative, sign-extends to a
huge `size_t`, and `alloc()` returns NULL harmlessly.  UTF-8 is the
default on virtually all modern Linux and macOS systems.

A modeline in an unrelated text file can set `'spelllang'` and enable
`'spell'`, causing Vim to load a spell file under the attacker's control
if one has been planted on the runtimepath (e.g. `~/.vim/spell/`).

## Impact
The vulnerability allows a heap buffer overflow of approximately 75
bytes with partially attacker-controlled content when Vim loads a
crafted spell file under UTF-8 encoding.  The practical impact is a
crash of the Vim process (denial of service).

Exploitation requires a malicious `.spl` file to be present on the
runtimepath and the victim to either:

- explicitly enable spell checking with the matching language, or
- open any text file containing a modeline that sets `'spelllang'`
  and enables `'spell'`, while `'modeline'` is enabled.

The severity is rated Medium because exploitation requires both a
planted spell file and a separate triggering action by the victim, and
the practical outcome is a crash rather than code execution.

## Acknowledgements
The Vim project would like to thank Daniel Cervera (@daniel-msft) of
Microsoft Security Engineering for reporting and analyzing the issue and
suggesting a fix.

## References
The issue has been fixed as of Vim patch [v9.2.0450](https://github.com/vim/vim/releases/tag/v9.2.0450).
- [Commit](https://github.com/vim/vim/commit/92993329178cb1f72d700fff45ca86e1c2d369f8)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-q4jv-r9gj-6cwv)



Best,
Christian
-- 
Man soll die Wahrheit mehr als sich selbst lieben, aber seinen
Nächsten mehr als die Wahrheit.
		-- Romain Rolland
