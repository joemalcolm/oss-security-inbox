Received: (qmail 24442 invoked by uid 550); 20 May 2026 07:50:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26547 invoked from network); 20 May 2026 07:22:35 -0000
Date: Wed, 20 May 2026 09:22:24 +0200
From: Brett Sheffield <bacs@librecast.net>
To: oss-security@lists.openwall.com
Message-ID: <ag1hME4sqcc_YAL6@karahi.librecast.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] QEMU CXL Memory Corruption Vulnerability ("QEMUtiny")

v12-security have disclosed "QEMUtiny" [0]. Quoting their disclosure:

> QEMUtiny is a memory corruption vulnerability in QEMU's implementation of CXL
> Type-3 device emulation, reported against QEMU master 007b29752e and confirmed
> working against 5e61afe (May 11, 2026).
>
> QEMUtiny was discovered autonomously with V12 by Aaron Esau of the V12
> security team.
>
> The PoC chains two CXL mailbox bugs in hw/cxl/cxl-mailbox-utils.c: an
> out-of-bounds read in GET_LOG, followed by an out-of-bounds write in
> SET_FEATURE.
>
>    OOB read: cmd_logs_get_log() treats the CEL log offset as an array index in
>    the memmove() source expression even though the CXL mailbox offset is in
>    bytes.
>
>    OOB write: cmd_features_set_feature() accepts byte offsets into several
>    small feature write-attribute structures without checking that offset +
>    bytes_to_copy stays inside the selected structure.
>
> We reported the bugs upstream. Maintainers state CXL support is currently for
> at non-virtualization use cases, so we feel comfortable release the PoC
> publicly.
>
> The included poc.c is a working exploit that drives the emulated CXL mailbox
> from the guest through the device BAR. It depends on offsets for the specific
> QEMU build and host libc layout. The exploit can be weaponized to work
> reliably across many QEMU versions using the OOB read to scan memory. However
> this is out of scope for this PoC.

See [1] for PoC code.

>
> ...
>
> Affected Versions
>
> The full QEMUtiny chain uses two bugs.
>
>    OOB read: the vulnerable GET_LOG path was introduced by 056172691b
>    (hw/cxl/device: Add log commands (8.2.9.4) + CEL), first released in QEMU
>    v7.1.0.
>
>    OOB write: the vulnerable PPR and memory sparing SET_FEATURE paths were
>    introduced by 5e5a86bab8 and da5cafdc4d, released in QEMU v11.0.0.


[0] https://github.com/v12-security/pocs/tree/main/qemu
[1] https://github.com/v12-security/pocs/blob/main/qemu/poc.c

-- 
Brett Sheffield (he/him)
