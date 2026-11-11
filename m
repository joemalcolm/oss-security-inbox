X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/10
Message-ID: <cf98fa57-b541-4473-5b1f-80a48dbfee15@gmx.de>
Date: Wed, 11 Nov 2026 15:24:58 +0100 (CET)
From: Johannes Schindelin <Johannes.Schindelin@....de>
To: oss-security@...ts.openwall.com
cc: git-security@...glegroups.com, Junio C Hamano <gitster@...ox.com>,  Toon Claes <toon@...cl.com>
Subject: git: v2.56.1 and older maintenance release fixes for six vulnerabilitie
Content-Type: text/plain; charset=utf-8

Team,

The Git project released new versions on November 10th, 2026, addressing
six vulnerabilities. All supported platforms are affected in one way or
another, and all Git versions back to v2.27.0 are affected. Versions older
than v2.50 are also affected but are no longer serviced by maintenance
releases. The fixed versions are: v2.50.2, v2.51.3, v2.52.1, v2.53.1,
v2.54.1, v2.55.1, and v2.56.1.

Link to the announcement:

  https://lore.kernel.org/git/xmqqh5hosgw5.fsf@gitster.g/

We highly recommend to upgrade.

The addressed issues are:

* CVE-2026-111760: Recursive clones can lead to remote code execution.

A cache entry's name length is stored in the 32-bit `ce_namelen` field but
computed as `size_t`. A crafted tree can build a path of the form
`.gitz/z...z/z` with 2^32 bytes following the `.git`, so that `ce_namelen`
wraps to 4. Git's path-safety validation walks the whole NUL-terminated
name and finds nothing wrong with `.gitz/z...z/z`. But checkout writes the
path from `ce_namelen`, i.e. only the first 4 bytes. Thus Git writes the
validated path `.gitz/z...z/z` as `.git`. If the entry is a symlink,
checking out the tree tries to overwrite `.git` with a potentially
malicious symlink. While cloning, Git refuses to replace a `.git`
directory with a symlink. But a freshly cloned submodule's `.git` is a
gitfile rather than a directory, so the symlink is written. The target of
that symlink holds the hooks or config that may then run
attacker-specified code.

Trigger: an attacker-controlled repository (hosted by the attacker, not on
a normal forge) cloned with `git clone --recurse-submodules`. As far as we
know, this is currently only triggerable when `--recurse-submodules` is
used. Such a repository fails the `LARGE_PATHNAME` and `TREE_NOT_SORTED`
`fsck` checks and therefore cannot easily be pushed to the major forges.
That does not protect downstream users, as an innocuous-looking
`.gitmodules` pointing to the malicious repository suffices.

* CVE-2026-113408: Malformed unborn HEAD advertised by a server.

In the protocol v2 `ls-refs` response the client copies the
`symref-target` verbatim into `.git/HEAD` and passes advertised refs
straight to `alloc_ref()`. A server can advertise `HEAD` as a symref to
`refs/heads/../../../TARGET`. When the user then runs `git commit`, `HEAD`
resolves to that value. With the files ref backend, Git then writes the
ref to `.git/refs/heads/../../../TARGET`, i.e. to `TARGET` in the root of
the repository.

Trigger: a malicious or otherwise untrusted server plus a client clone
over protocol v2. The file is written when a later operation resolves and
updates the malformed ref.

* CVE-2026-114467: More than two GPG signatures in a commit message.

When Git strips the GPG signatures from a commit message, it only accounts
for two signatures. `remove_signature()` stores the start/end positions of
signatures in a fixed-size stack array. A commit message containing more
than two signatures makes it write past the end of that array and corrupt
stack memory. This makes for a denial-of-service attack that can
potentially also affect forges. When such a tag is pushed to a remote and
a merge action is initiated there, the forge runs the same code.

Trigger: a tag object whose message carries more than two (e.g. PGP)
signatures, merged with `git merge`. That runs `remove_signature()` and
corrupts the stack.

* CVE-2026-114469: Binary patch size check bypass.

Git rejects patches larger than roughly 1 GiB, because its patch
application code does not work well with large files. But that check only
considered the size of the patch as it appears in the input. For binary
patches, that size is much smaller than the size of the file the patch
describes, because binary patches are compressed and encoded. A binary
patch that inflates to a very large size therefore slipped past the check.
It then crashed Git with an out-of-bounds read in `patch_delta()`, when
the truncated delta size exceeded the real buffer length.

Trigger: applying an attacker-supplied patch (e.g. `git apply`) that
contains a binary diff which inflates far beyond 1 GiB.

* CVE-2026-105437: Heap buffer overflow in the three-way merge code.

When merging, Git computes the size of the buffer holding the merge result
in a way that can overflow for very large merges. A large number of
conflicts combined with a large `conflict-marker-size` can trigger this.
The resulting buffer can then be too small, and Git writes past its end
(and, before and after that, before its start), corrupting the heap. In
detail, libxdiff kept the merge output size in `long`/`int` variables and
fed it to `malloc()`. The `xdl_fill_merge_buffer()` function then
accumulates the output size in an `int`, allocates that much, and then
writes each piece at `dest + size`. `conflict-marker-size` comes from
`.gitattributes`, accepts any positive `int`, and is added several times
per conflict. If the sum goes negative, `malloc()` gets a huge `size_t`
and fails. That is a spurious error, not exploitable. If the sum wraps
back to a small positive value, `malloc()` succeeds with a too-small
buffer. Each added value is below 2^31, so the running offset passes
through negative values on the way. The writes therefore first run past
the end of the buffer and then land before its start.

Trigger: any command performing a textual three-way merge, i.e.
`git-merge`, `git-rebase`, `git-cherry-pick`, and `git-merge-tree`. The
latter is the likely target for forges, which may use it server-side to
check mergeability. When the server reads attributes from trees (e.g. via
`attr.tree` or `--attr-source`), anybody who can push branches and request
a merge (e.g. open a pull/merge request) can trigger it. The amount of
pushed data needed is small, because the oversized output only appears
during the merge. A committed `.gitattributes` with a huge
`conflict-marker-size` plus a file with many separate conflicts is enough.
On GitLab this could be escalated further, to remote code execution via the
Git process that Gitaly spawns for mergeability checks.

* CVE-2026-114466: `fast-import`'s rewrite-submodules features and
  `export-pack-edges` option allowed arbitrary file access.

In response to CVE-2019-1348, `fast-import` disallows the `export-marks`
feature by default, because it gave arbitrary filesystem read/write
access. The features `rewrite-submodules-to` and `rewrite-submodules-from`
as well as the option `export-pack-edges`, introduced in the meantime,
also allow reading from arbitrary paths. They are therefore now also
disallowed by default. Concretely, the rewrite-submodules features take a
file argument and can read arbitrary files. Given an unsuitable file, they
fail with `fatal: corrupt mark line:` followed by that file's content.
This leaks the content in the error message. Separately,
`export-pack-edges` takes a file name and makes `fast-import` open it in
append mode and write pack-edge records to it. The file is created even
without any commits. With a commit plus `transfer.unpackLimit=0`,
attacker-controlled data can be written into it. Both are now gated behind
the existing `--allow-unsafe-features` option. This is a
backwards-incompatible change. But, as with the earlier
`export-marks`/`import-marks` change, the features are otherwise only
useful to import/export remote helpers, so the impact should be minimal.

Trigger: feeding untrusted `fast-import` streams (e.g. `git fast-import`
on input from an untrusted source) that use those features or options.

Credit for finding the vulnerabilities goes to Robert Chen
(CVE-2026-111760), Luke Martin (CVE-2026-113408), and pwn2addr
(CVE-2026-114466, CVE-2026-114467, CVE-2026-114469). Credit for fixing
goes to Elijah Newren, with help from Johannes Schindelin and Jeff King
and co-authored and reviewed by Toon Claes (CVE-2026-111760), Toon Claes
(CVE-2026-113408), Karthik Nayak (CVE-2026-114466, CVE-2026-114467,
CVE-2026-114469), and Kaartic Sivaraam, based on a patch by Jeff King,
with help from Toon Claes and Christian Couder (CVE-2026-105437).

Ciao,
Johannes

