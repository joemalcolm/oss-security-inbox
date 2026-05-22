Received: (qmail 19944 invoked by uid 550); 22 May 2026 22:15:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19903 invoked from network); 22 May 2026 22:15:07 -0000
Date: Sat, 23 May 2026 00:14:57 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <ahDVYasrm561zdna@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Multiple Memory Safety Issues in Vim Spell File
 Parser affects Vim < 9.2.0513

Multiple Memory Safety Issues in Vim Spell File Parser affects Vim < 9.2.0513
=============================================================================
Date: 22.05.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Out-of-bounds Read (CWE-125),
     Use of Uninitialized Resource (CWE-908),
     Uncontrolled Recursion (CWE-674)

## Summary
Three related memory-safety issues exist in the Vim spell file (`.spl`)
parser in `src/spellfile.c`.  A crafted spell file can cause:

1. a heap out-of-bounds read in `read_tree_node()` via a `BY_INDEX`
   shared tree node that references an uninitialized array position,
2. a one-byte heap out-of-bounds read in `tree_count_words()` past the
   end of the word-tree byte array, and
3. a stack overflow in `read_tree_node()` through uncontrolled recursion
   on a deep linear node chain.

Because the `'spelllang'` option can be set from a modeline, a text
file modeline can trigger spell file loading if a malicious `.spl` file
has been planted on the runtimepath, which can happen when cloning a vim
package.

## Description

### 1. Uninitialized shared-node target in read_tree_node()
In `spell_read_tree()` the byte array `bp` for a word tree was allocated
with `alloc(len)` and not zero-initialized, while the companion index
array used `lalloc_clear()`.  The tree parser validated `BY_INDEX`
shared-node references only against `maxidx` (the allocated array
size), not against positions that were actually written by
`read_tree_node()`.  A crafted file can declare a `<nodecount>` larger
than the tree it serializes and include a `BY_INDEX` reference into the
unwritten tail, leaving `byts[N]` containing uninitialized heap data.

On `z=` (spell suggest) or `spellsuggest()`, the suggestion walk reads
`byts[arridx]` as a sibling count and iterates that many slots,
producing a further out-of-bounds heap read with an attacker-influenced
length.

### 2. Missing length guard in tree_count_words()
`tree_count_words()` skipped runs of trailing NUL siblings with
`while (byts[n + 1] == 0)` and had no length guard.  The structurally
identical loop in `sug_filltree()` already carried
`n + 1 < slang->sl_fbyts_len && ...` with the explicit comment
"But don't go over the end."; that guard had not been propagated to
`tree_count_words()`.  When called during `.sug` file loading on a
tree whose final sibling is `BY_NOFLAGS`, the walk reads one byte past
the end of the byts array.

### 3. Uncontrolled recursion in read_tree_node()
`read_tree_node()` recursed once per non-shared, non-end-of-word
sibling without a depth limit.  A crafted `.spl` file containing a
linear chain of nodes (siblingcount=1, non-NUL byte at each level)
drives the recursion to a depth bounded only by the declared
`<nodecount>` (a 4-byte field).  On default 8 MB stacks, approximately
88,000 nested frames exhaust the stack and crash Vim with SIGSEGV.

## Impact
Issues 1 and 2 are out-of-bounds heap reads with attacker-influenced
range; the practical outcome is a crash of the Vim process and a small
window of uninitialized or adjacent heap data being consumed by the
suggestion algorithm.  Issue 3 reliably crashes Vim through stack
exhaustion.

Exploitation requires a malicious `.spl` file to be present on the
runtimepath and the victim to either:

- explicitly enable spell checking with the matching language
- open any text file containing a modeline that sets `'spelllang'` and
  enables `'spell'`, while `'modeline'` is enabled.

The severity is rated Medium because exploitation requires both a
planted spell file and a separate triggering action by the victim, and
the practical outcome is a crash rather than code execution.

## Acknowledgements
The Vim project would like to thank github user tacdm for reporting and
analyzing the issues and suggesting fixes.

## References
The issues have been fixed as of Vim patch [v9.2.0513](https://github.com/vim/vim/releases/tag/v9.2.0513).
- [Commit](https://github.com/vim/vim/commit/25e4e46c584840806b45da20ed)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-3h95-3962-mmvf)

Thanks,
Christian
-- 
Die Genies brechen die Bahnen, und die schönen Geister ebnen und
verschönern sie.
		-- Georg Christoph Lichtenberg
