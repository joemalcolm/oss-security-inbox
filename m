X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/15/7
Message-ID: <0e46d599-31bf-4dc6-acf2-7b46dc2e4c4a@oracle.com>
Date: Mon, 15 Jun 2026 13:22:04 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: tmux 3.6b fixes CVE-2026-11623
Content-Type: text/plain; charset=utf-8

https://github.com/tmux/tmux/issues/5109 says:
> This is a bug fix release of tmux 3.6. The 3.6b CHANGES file is here:
>    https://raw.githubusercontent.com/tmux/tmux/3.6b/CHANGES
> The release notes issue for 3.6 is here:
>    https://github.com/tmux/tmux/issues/4699
> and for 3.6a is here:
>    https://github.com/tmux/tmux/issues/4745
> 
> 3.6b fixes one problem with 3.6a:
> 
> tmux can be caused to crash by causing SIXEL images to be removed when in the
> alternate screen. This is potentially a security issue but that has not been
> demonstrated, but hence the patch release. Note that this is possible only if
> tmux is built with --enable-sixel.

https://gist.github.com/XlabAITeam/f0d9952595f795129a3258ba73bbc3cb says:
> ### Product
> 
> Product Name: tmux
> 
> Product URL: https://github.com/tmux/tmux.git
> 
> Affected Versions: <= tmux 3.6a
> 
> Fixed Version: tmux 3.6b
> 
> Fix commit:
>   https://github.com/tmux/tmux/commit/fc6d94a9f8a593bd8b7031650802084385d4ee03
> 
> 
> 
> ### Summary
> 
> tmux is a widely used terminal multiplexer that allows users to manage
> multiple sessions within a single terminal window. tmux supports the Sixel
> graphics protocol (requires the `--enable-sixel` compile flag, which is
> enabled by default on some platforms such as Homebrew), allowing terminal
> programs to output pixel images to panes via standard output. Pixel images
> are centrally managed by the tmux server. Each image structure is
> simultaneously linked into a global LRU linked list and a per-screen linked
> list (`s->images`). The global list enforces a total count limit (default
> 20); when exceeded, the oldest image is evicted.
> 
> When a user switches to the alternate screen, tmux migrates all nodes from
> `s->images` to `s->saved_images` in bulk, but the references in the global
> LRU list remain unchanged. When LRU eviction occurs, the deallocation
> function `image_free` unconditionally performs a linked-list removal from
> `s->images`, without considering that the node may have already been
> migrated to `s->saved_images`. Performing a doubly-linked list removal on
> the wrong list corrupts the list metadata, producing a cross-list
> out-of-bounds write primitive. Meanwhile, the removed node is immediately
> freed, but the residual pointer in `s->saved_images` still points to the
> freed memory, constituting a use-after-free.
> 
> An attacker can craft a specific byte sequence and trick a user into
> outputting it within a tmux pane (e.g., by having the user view a
> maliciously crafted file in a pane). This triggers the memory corruption in
> the tmux server process running in the user's environment, which can cause
> the tmux server process to crash, resulting in the loss of all user sessions
> and windows — a denial of service. The attacker may further exploit this UAF
> write primitive for heap layout manipulation to achieve arbitrary code
> execution.
> 
> CWE: CWE-416: Use After Free
> 
> 
> ### Details
> 
> `image_free` in `image.c` always removes the target `struct image` from
> `s->images`, but after `screen_alternate_on` the image resides in
> `s->saved_images` instead. Calling `TAILQ_REMOVE` on the wrong list corrupts
> the TAILQ doubly-linked list metadata of both `s->images` and
> `s->saved_images`, producing exploitable heap-metadata corruption and/or
> server crash.
> 
> 1. Entry Point — Sixel sequence received from pane process
> 
> **File:** `input.c`
> **Function:** `input_dcs_dispatch()` (line 2583)
> **Code:**
> 
> ```c
> si = sixel_parse(buf, len, p2, w->xpixel, w->ypixel);
> if (si != NULL)
>     screen_write_sixelimage(sctx, si, ictx->cell.cell.bg);
> ```
> 
> **Issue:**
> Any data written to a pane's PTY can produce a valid Sixel DCS sequence.
> This is the untrusted boundary: Spawned Shell / Pane Process → tmux Server.
> 
> 2. Image stored and added to both `s->images` and global `all_images`
> 
> **File:** `image.c`
> **Function:** `image_store()` (lines 139–146)
> **Code:**
> 
> ```c
> TAILQ_INSERT_TAIL(&s->images, im, entry);          // per-screen list
> TAILQ_INSERT_TAIL(&all_images, im, all_entry);     // global LRU list
> if (++all_images_count == MAX_IMAGE_COUNT)
>     image_free(TAILQ_FIRST(&all_images));          // evict oldest
> return (im);
> ```
> 
> **Issue:**
> The image is linked into both a per-screen list (`s->images`, via `entry`)
> and a global list (`all_images`, via `all_entry`). The two linkages are
> independent fields of `struct image`.
> 
> 3. Alternate-screen switch silently moves images to `saved_images`
> 
> **File:** `screen.c`
> **Function:** `screen_alternate_on()` (line 667)
> **Code:**
> 
> ```c
> TAILQ_CONCAT(&s->saved_images, &s->images, entry);
> ```
> 
> **Issue:**
> `TAILQ_CONCAT` splices all elements of `s->images` onto the end of
> `s->saved_images` and then sets `s->images` to empty. After this call every
> previously-stored image still lives in `all_images` (via `all_entry`)
> but now lives in `s->saved_images` (not `s->images`) via `entry`.
> The `im->s` backpointer still points to the same `screen *s`.
> 
> 4. Eviction via LRU calls `image_free` with wrong per-screen list
> 
> **File:** `image.c`
> **Function:** `image_free()` (lines 54–67)
> **Code:**
> 
> ```c
> static void
> image_free(struct image *im)
> {
>     struct screen *s = im->s;
> 
>     TAILQ_REMOVE(&all_images, im, all_entry);    // correct: removes from global list
>     all_images_count--;
> 
>     TAILQ_REMOVE(&s->images, im, entry);         // BUG: im is in s->saved_images, not s->images
>     sixel_free(im->data);
>     free(im->fallback);
>     free(im);
> }
> ```
> 
> **Issue:**
> `image_free` unconditionally removes `im` from `s->images`. If the image has
> been moved to `s->saved_images` by `screen_alternate_on`, this is the wrong
> list. `TAILQ_REMOVE` on the wrong TAILQ corrupts both list's head/tail/prev
> pointers. See Vulnerability Description for the exact corruption.
> 
> 5. Corruption propagated on next list operation
> 
> **File:** `image.c` (and callers)
> **Function:** any subsequent TAILQ operation on `s->images` or `s->saved_images`
> **Code:**
> 
> ```c
> // Any of: TAILQ_INSERT_TAIL(&s->images, ...), TAILQ_FOREACH_SAFE(..., &s->images, ...),
> //          TAILQ_CONCAT(&s->images, &s->saved_images, entry)   [in screen_alternate_off]
> ```
> 
> **Issue:**
> A corrupted TAILQ causes write-what-where heap corruption, use-after-free
> when iterating, or NULL dereference, depending on what state the list was
> left in by the `TAILQ_REMOVE` of a non-member.
> 
> 
> 
> ### Impact
> 
> An attacker can craft a specific byte sequence and trick a user into
> outputting it within a tmux pane (e.g., by having the user view a
> maliciously crafted file in a pane). This triggers the memory corruption in
> the tmux server process running in the user's environment, which can cause
> the tmux server process to crash, resulting in the loss of all user sessions
> and windows — a denial of service. The attacker may further exploit this UAF
> write primitive for heap layout manipulation to achieve arbitrary code
> execution.
> 
> 
> 
> ### Score
> 
> Severity: High, CVSS 4.0 Score: 7.8, Details: AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H
> 
> (Score referenced from CVE-2020-27347)
> 
> 
> 
> ### Credit
> 
> This vulnerability was discovered by:
> 
> - XlabAI Team of Tencent Xuanwu Lab (xlabai@...cent.com)
> - Atuin Automated Vulnerability Discovery Engine
> - Guannan Wang (wgnbuaa@...il.com), Zhanpeng Liu (pkugenuine@...il.com),
>   Guancheng Li (lgcpku@...il.com)



-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

