X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/16/12
Message-ID: <ajG+X6dXmxLW262z@256bit.org>
Date: Tue, 16 Jun 2026 23:21:35 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Out-of-bounds Write in Spell File Prefix Dump in Vim < 9.2.0662
Content-Type: text/plain; charset=utf-8

Out-of-bounds Write in Spell File Prefix Dump in Vim < 9.2.0662
===============================================================
Date: 16.06.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Out-of-bounds Write (CWE-787)

## Summary
The `dump_prefixes()` function in `src/spell.c` walks a spell-file prefix trie
iteratively with a depth counter while dumping the prefixes that apply to a
word.  The counter is bounded only by the trie structure itself; it is never
checked against the size of the fixed `MAXWLEN`-element stack arrays it indexes
(`prefix[]`, `arridx[]`, `curi[]`).  A crafted `.spl` file, loaded when the
user dumps the word list, can drive the descent arbitrarily deep, so the
function writes past the end of those arrays.  This is a stack out-of-bounds
write that corrupts the call frame and crashes the editor.

## Description
`dump_prefixes()` is called from `spell_dump_compl()` when the word list is
dumped, for example on `:spelldump` or via spelling completion.  For each node
it descends one level with:
```C
    else
    {
        prefix[depth++] = c;
        arridx[depth] = idxs[n];
        curi[depth] = 1;
    }
```
The arrays have `MAXWLEN` (254) elements, so any `depth` of 254 or more writes
out of bounds; a second sink underflows a `size_t` length passed to
`vim_strncpy()` once `depth` reaches `MAXWLEN`.  In a well-formed file each
trie level corresponds to one byte of a prefix, so depth is naturally limited,
but the reader does not enforce this for shared subtrees: a `BY_INDEX` shared
reference is accepted (its target index is range-checked) and is *not* recursed
into.  A prefix trie that uses a shared reference to point back to an ancestor
or itself therefore parses cleanly while driving the iterative walker past
`MAXWLEN`.  This is the same class of issue as
[GHSA-wgh4-64f7-q3jq](https://github.com/vim/vim/security/advisories/GHSA-wgh4-64f7-q3jq)
(`tree_count_words()`, fixed in 9.2.0653) in a sibling trie walker that was
left unguarded.

## Impact
A spell file is normally inert data, but Vim resolves `spelllang`, `spellfile`,
and `runtimepath` to load it, so a repository or archive that ships a malicious
`spell/` sidecar can deliver the crafted file.  The trigger is
user-interaction-gated: spell checking must be enabled and the user must dump
the word list.  When that happens, the out-of-bounds write corrupts the
`dump_prefixes()` stack frame.

## Acknowledgements
The Vim project would like to thank Cipher / Causal Security
(https://causalsecurity.com/) for reporting and analyzing the issue and
suggesting a fix.

## References
The issue has been fixed as of Vim patch [v9.2.0662](https://github.com/vim/vim/releases/tag/v9.2.0662).
- [Commit](https://github.com/vim/vim/commit/8325b193bba5f01e7a7d8241f)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-qm9w-fmpj-879h)


Thanks,
Christian
-- 
As I was passing Project MAC,
I met a Quux with seven hacks.
Every hack had seven bugs;
Every bug had seven manifestations;
Every manifestation had seven symptoms.
Symptoms, manifestations, bugs, and hacks,
How many losses at Project MAC?
