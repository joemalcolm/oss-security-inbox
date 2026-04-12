Received: (qmail 21921 invoked by uid 550); 12 Apr 2026 04:32:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27819 invoked from network); 12 Apr 2026 04:10:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775967022; x=1776571822; darn=lists.openwall.com;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9J47rhpr6ijbTiu+SRQzS3v+hVfgp8DcA+MQj55bpEY=;
        b=Q7SVTtTneVxdSoJA+W0GZPyYljX5l5nHaY0lXS0xHpx5ZCZLOY/K8Ee1QMVlxd/nJR
         JPe+sqKYibK/9cqX6/KLrqUqiHMjM482mBpLZqn3RSsg4IiI0kvUU05oj+C4grQKQspv
         MJpe1oiZrx3vK1T3Qlr/lQOtQW5tvcGMw2DLt7eBjWDHFmF9zs/nKJOPIGW8RgavI2SW
         IMf4xT1Es1Yb+PvmgyVQW+XmW0JZmzBmekzGYQjOPit9YUscBS1OKAiNLU7+4knLcY5J
         SC0XJE6Jhh39jRQmU6R3baKvDQNZqbuZh0crS6hK4IigSgVsCCqnCeqH9OnOc1g/jmNd
         3XOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775967022; x=1776571822;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9J47rhpr6ijbTiu+SRQzS3v+hVfgp8DcA+MQj55bpEY=;
        b=iwAPSC+cimbjTAmD9EA93opa10nJo2z0zkskt+MK9+38E9B0OJbWNljivtwUivLo+l
         cn7Q86ZdlSeNKT6NMmZ06O9jOSgDAdB0ArfH39CUOPmXu+iqbSLtOq1QR3hUh83j6898
         ddxAJb9biVAStSnZOJi4koeKc1ApBJZ+d1iKKDxFTXvUwNkyuRmHtW43YwawRXTDlAta
         +MAOzF08oX0dJvU7WLa3LlVJ3UAY9IRb03B4pxWYA+Z7vZreRo5kacAq7qZ/X7GElm9j
         qZjDgkGvUOxZBKsSnE4Px8rTGrdnBKp6eEaOk21mLBMi3aSGckJ7eJzTP1tUop04yPGY
         +EnQ==
X-Gm-Message-State: AOJu0YzSQYTBtnyk7FfBXra2vQeKGunYrScGPZYv4JNjrL6ZBydDqcfl
	0uYbrTentebdt92TXHcP74jdkjOB6w51+XZUnoYrfNrX8uChg9lEQSrC
X-Gm-Gg: AeBDieuG56eKJ3qTAqBz4VAu7ViTlBMqUocvzVM6oX4ExhjPgj3eXwVgHgVK5aHByQ/
	sstamynsJxcCXj6DqGU/kvn7s0bzv7TjGE/ME4gBBEnvAOWkVtJseItEWZyWMIDLuC62qiDSztv
	VD2QW/l4I4EWr13xuG7bXh6H/SIztgmDba6hdAnECWGzkgqnXUom0OV/23C3yB9H7a8PQkc18TM
	KAQRxDnKHFfmLAJDR4Plo7uS1JdcHgckJaBGDhI7dzyO7K6We5lNZMB/F0AQIJyktyJuUglZsrF
	Kh6kCfvka5/AQHiTvgO9H9vbztMue6LJARTovqW7eDws/yzRyX/UXgqEMo3mZBETomocUiJqSrS
	+iT6YH5cBrunlMj52E4JYwDJxsiqpuuHqh5gbYPTIEq7lDNmqXOUacS/CYnzdd2VALO7rUuUitG
	ocO9eKWBriD1axYZs=
X-Received: by 2002:a05:7022:517:b0:12b:f9b0:21f4 with SMTP id a92af1059eb24-12c34f148ffmr5280237c88.36.1775967022263;
        Sat, 11 Apr 2026 21:10:22 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: oss-security@lists.openwall.com
Cc: Vahagn Vardanian <vahagn@redrays.io>,  Paul Eggert <eggert@cs.ucla.edu>
In-Reply-To: <20260412030203.GA27554@openwall.com>
References: <e9445380-c50f-4385-93fb-02fbeec634af@oracle.com>
	<20260412030203.GA27554@openwall.com>
Date: Sat, 11 Apr 2026 21:10:20 -0700
Message-ID: <87ik9wzumr.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] GNU tar: listing/extraction desynchronization
 allows hidden file injection

Solar Designer <solar@openwall.com> writes:

>> === BUG #03  (HIGH) ===
>>     Signed integer overflow in PAX v0.0/v0.1 sparse offset+numbytes
>> 
>> Files:   src/xheader.c:1426 (sparse_numbytes_decoder)
>>          src/xheader.c:1480 (sparse_map_decoder)
>> Impact:  Signed 64-bit integer overflow in offset+numbytes arithmetic.
>>          Undefined behavior that can corrupt internal state.
>> 
>> Description:
>> 
>> The PAX v1.0 decoder in sparse.c already checks:
>> 
>>   if (INT_ADD_OVERFLOW (sp.offset, u))
>>     ...
>> 
>> But the PAX v0.0 and v0.1 decoders in xheader.c do not.  A crafted
>> extended header with offset=9223372036854775800 and numbytes=100
>> passes individual range checks but overflows signed off_t when summed.
>> 
>> UBSan output:
>> 
>>   xheader.c:1473: runtime error: signed integer overflow:
>>     9223372036854775800 + 100 cannot be represented in type 'long int'
>> 
>> Proposed fix:
>> 
>> Add the same INT_ADD_OVERFLOW check after assigning numbytes in both
>> sparse_numbytes_decoder() and sparse_map_decoder(), and return early
>> with an error if the check fires.

Both of the functions they reference check that the value fits in off_t.
A commit from 16 years ago shows the relevant code [1], but even before
that overflows where checked.

>> === BUG #04  (LOW) ===
>>     FLEXNSIZEOF overflow in create_placeholder_file
>> 
>> File:    src/extract.c:1444
>> Impact:  Theoretical heap buffer overflow if link_name is near SIZE_MAX.
>> 
>> Description:
>> 
>> create_placeholder_file() computes:
>> 
>>   xmalloc (FLEXNSIZEOF (struct delayed_link, target,
>>                          strlen (current_stat_info.link_name) + 1));
>> 
>> If strlen(link_name) is near SIZE_MAX, adding 1 overflows size_t, and
>> FLEXNSIZEOF computes a small allocation size.  The subsequent strcpy
>> writes past the buffer.  PAX extended headers allow arbitrarily long
>> linkpath values, so the attacker controls the length.  In practice
>> this requires the system to have nearly SIZE_MAX bytes of memory
>> available, so it is mostly theoretical.
>> 
>> Proposed fix:
>> 
>>   size_t link_len = strlen (current_stat_info.link_name);
>>   if (SIZE_MAX - sizeof (struct delayed_link) <= link_len)
>>     xalloc_die ();

I think it is safe to assume that no one has SIZE_MAX bytes of memory.

>> === BUG #09  (MEDIUM) ===
>>     strcmp overread past the non-NUL-terminated magic field
>> 
>> File:    src/list.c:565, 632  (read_header, decode_header)
>> Impact:  Buffer overread past the 6-byte magic field boundary.
>>          Format misdetection with crafted headers.
>> 
>> Description:
>> 
>>   strcmp (h->magic, TMAGIC)                    // line 565
>>   strcmp (header->header.magic, TMAGIC)        // line 632
>> 
>> TMAGIC is "ustar\0" (6 bytes including NUL).  The magic field in the
>> header struct is exactly 6 bytes (char magic[6]).  If the field
>> contains "ustar\x01" (no NUL terminator), strcmp reads past byte 5
>> into the adjacent version[2] and uname[32] fields until it finds a NUL.
>> 
>> ASan (with tight heap allocator) reports:
>> 
>>   ERROR: AddressSanitizer: heap-buffer-overflow
>>     READ of size 1 ... in __strcmp_sse42
>> 
>> Proposed fix:
>> 
>>   memcmp (h->magic, TMAGIC, sizeof TMAGIC)

This is just copied from Paul's commit in 2025 [2].

>> === BUG #10  (MEDIUM) ===
>>     Incomplete destructor for delayed_link_table hash entries
>> 
>> File:    src/extract.c:1478  (create_placeholder_file)
>> Impact:  Memory leak on hash collision/replacement.
>> 
>> Description:
>> 
>>   hash_initialize (0, 0, dl_hash, dl_compare, free)
>> 
>> The destructor callback is just free(), which frees the top-level
>> struct delayed_link but not its sub-allocations: the sources linked
>> list, cntx_name, acls_a_ptr, acls_d_ptr, and xattr_map.  When a hash
>> collision causes an old entry to be evicted, these are leaked.
>> 
>> Proposed fix:
>> 
>> Write a proper destructor:
>> 
>>   static void
>>   free_delayed_link (void *entry)
>>   {
>>     struct delayed_link *p = entry;
>>     struct string_list *s, *next;
>>     for (s = p->sources; s; s = next)
>>       {
>>         next = s->next;
>>         free (s);
>>       }
>>     free (p->cntx_name);
>>     free (p->acls_a_ptr);
>>     free (p->acls_d_ptr);
>>     xattr_map_free (&p->xattr_map);
>>     free (p);
>>   }
>> 
>> And pass free_delayed_link instead of free to hash_initialize.

GNU tar never calls hash_free, and therefore will never call the free
function given to hash_initialize. It is explained in a comment and the
commit message [3]:

   if (false)
     {
       /* There is little point to freeing, as we are about to exit,
	  and freeing is more likely to cause than cure trouble.  */
       hash_free (delayed_link_table);
       delayed_link_table = NULL;
     }

>> === BUG #13  (LOW) ===
>>     Integer truncation in decode_record
>> 
>> File:    src/xheader.c:630  (decode_record)
>> Impact:  Implicit narrowing from ptrdiff_t to int; UBSan
>>          -fsanitize=implicit-conversion fires.
>> 
>> Description:
>> 
>>   int len_len = len_lim - p;    // line 630
>> 
>> len_lim - p is ptrdiff_t.  If the difference exceeds INT_MAX, the
>> implicit conversion to int wraps to a negative value.  The value is
>> only used to format an error message, so the practical impact is
>> limited to a garbled diagnostic, but UBSan rightfully flags it.
>> 
>> Proposed fix:
>> 
>>   int len_len = (int) (len_lim - p < 1000 ? len_lim - p : 1000);
>> 
>> This clamps the value to a reasonable range for the error message.

This proposal was just copied from Paul's commit in 2024 [4].

>> === SUMMARY TABLE ===
>> 
>>   #   Severity  File          Function / Line              Short description
>>   --  --------  -----------   ---------------------------  --------------------------
>>   01  CRITICAL  sparse.c:593  sparse_extract_file          Archive stream desync -> file injection
>>   14  CRITICAL  (same root cause as #01)                   Full RCE chain demo
>>   02  HIGH      sparse.c:803  oldgnu_add_sparse            Overlapping sparse regions -> corruption
>>   03  HIGH      xheader.c     sparse_numbytes/map_decoder  Missing INT_ADD_OVERFLOW
>>   04  LOW       extract.c:1444 create_placeholder_file     FLEXNSIZEOF size_t overflow
>>   05  MEDIUM    extract.c:566 delay_set_stat               Memory leak on reuse path
>>   06  MEDIUM    extract.c:996 apply_nonancestor_delayed..  Shallow xattr_map copy (UAF)
>>   07  MEDIUM    extract.c:985 apply_nonancestor_delayed..  Uninitialized tar_stat_info
>>   08  MEDIUM    extract.c:1898 apply_delayed_link          Uninitialized tar_stat_info
>>   09  MEDIUM    list.c:565    read_header / decode_header  strcmp past magic field
>>   10  MEDIUM    extract.c:1478 create_placeholder_file     Incomplete hash destructor
>>   11  LOW       extract.c:364 check_time                   Signed overflow in time diff
>>   12  LOW       extract.c:953 apply_nonancestor_delayed..  file_name_len=0 underflow
>>   13  LOW       xheader.c:630 decode_record                ptrdiff_t -> int truncation

I didn't look much at the others since I am not very familiar with tar.
Hopefully Paul can quickly tell if they are bogus or not.

>> === REPRODUCTION ===
>> 
>> All bugs were confirmed on tar 1.35 (commit 8e3c8fa17 from
>> https://git.savannah.gnu.org/cgit/tar.git).  Bugs #01, #02, and #14
>> are reproducible without sanitizers on any 64-bit Linux system.  The
>> remaining bugs require ASan, UBSan, or MSan to observe.

This commit hash does not exist, which does not inspire much confidence:

    $ git log 8e3c8fa17
    fatal: ambiguous argument '8e3c8fa17': unknown revision or path not in the working tree.
    Use '--' to separate paths from revisions, like this:
    'git <command> [<revision>...] -- [<file>...]'

Collin

[1] https://git.savannah.gnu.org/cgit/tar.git/commit/?id=a59c819beb4886ee43f16dfd80ec1151fda1abe6
[2] https://git.savannah.gnu.org/cgit/tar.git/commit/?id=c11084bcc2d7d9976570a12263b81d2488066115
[3] https://git.savannah.gnu.org/cgit/tar.git/commit/?id=258d1c44e5ee7c58b28bf0000e9d737df6081885
[4] https://git.savannah.gnu.org/cgit/tar.git/commit/?id=d1e72a536f26188230a147d948b9057714fd0b6b
