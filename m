X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/15/8
Message-ID: <ajBZNkcBD5eTDj62@256bit.org>
Date: Mon, 15 Jun 2026 21:57:42 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Out-of-bounds Write in Spell File Word Count in Vim < 9.2.0653
Content-Type: text/plain; charset=utf-8

Out-of-bounds Write in Spell File Word Count in Vim < 9.2.0653
==============================================================
Date: 15.06.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Out-of-bounds Write (CWE-787)

## Summary
The `tree_count_words()` function in `src/spellfile.c` fills in the word-count
fields of a spell-file word trie by walking it iteratively with a depth
counter.  The counter is bounded only by the trie structure itself; it is
never checked against the size of the fixed `MAXWLEN`-element stack arrays it
indexes (`arridx[]`, `curi[]`, `wordcount[]`).  A crafted `.spl`/`.sug` file
pair, loaded when the user invokes spell suggestion, can drive the descent
arbitrarily deep, so the function writes past the end of those arrays.  This
is a stack out-of-bounds write that corrupts the call frame and crashes the
editor.

## Description
`tree_count_words()` is called from `suggest_load_files()` when spell
suggestion loads a language's `.sug` file (for example on `z=`,
`:spellsuggest`, or suggestion completion).  For each node it descends one
level with:
```C
    else
    {
        ++depth;
        arridx[depth] = idxs[n];
        curi[depth] = 1;
        wordcount[depth] = 0;
    }
```

The three arrays have `MAXWLEN` (254) elements, so any `depth` of 254 or more
writes out of bounds.  In a well-formed file each trie level corresponds to
one byte of a word, so depth is naturally limited, but the reader does not
enforce this for shared subtrees: `read_tree_node()` caps inline recursion at
`depth > MAXWLEN`, yet a `BY_INDEX` shared reference is accepted (its target
index is range-checked) and is *not* recursed into.  A trie that uses shared
references to form a cycle, or a deep forward-shared chain, therefore parses
cleanly while driving the iterative walker past `MAXWLEN`.

## Impact
A spell file is normally inert data, but Vim resolves `spelllang`,
`spellfile`, and `runtimepath` to load it, so a repository or archive that
ships a malicious `spell/` sidecar can deliver the crafted pair.  The trigger
is user-interaction-gated: spell checking must be enabled and the user must
invoke spell suggestion on a misspelled word.  When that happens, the
out-of-bounds write corrupts the `tree_count_words()` stack frame.  On builds
compiled with stack protection the overwrite is caught at the function epilogue
and the process aborts; cyclic geometries instead walk into the stack guard
page and causes a crash.

## Acknowledgements
The Vim project would like to thank Cipher / Causal Security
(https://causalsecurity.com/) for reporting and analyzing the issue and
suggesting a fix.

## References
The issue has been fixed as of Vim patch [v9.2.0653](https://github.com/vim/vim/releases/tag/v9.2.0653).
- [Commit](https://github.com/vim/vim/commit/a80874d9b84a01040e3d1aef2d4a59e1934dafb7)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-wgh4-64f7-q3jq)


Thanks,
Chris
-- 
Sex-Leitfäden sind meist Parfümrezepte, verfaßt von Leuten, die einen
Stockschnupfen haben.
		-- Henry Miller
