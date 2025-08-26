Received: (qmail 29869 invoked by uid 550); 26 Aug 2025 19:29:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28445 invoked from network); 26 Aug 2025 19:29:39 -0000
Date: Tue, 26 Aug 2025 21:29:34 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20250826192934.GA4202@openwall.com>
References: <CAG8b5tQyFKNedYpJ_tNzRROuJy5yJfewqOAqjQ9_zNfMiK5dFg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAG8b5tQyFKNedYpJ_tNzRROuJy5yJfewqOAqjQ9_zNfMiK5dFg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] libssh2 Base64 Encoding Heap Overflow in Known Hosts SHA1 Hash Processing

Hi,

Thank you for finding this, getting it fixed, and bringing it in here.

Just one minor detail:

On Tue, Aug 26, 2025 at 09:56:06PM +0400, Dhiraj Mishra wrote:
> I've successfully created a libFuzzer harness targeting the
> libssh2_knownhost_readline() API, used for parsing SSH known_hosts files.
> The fuzzer discovered a heap buffer overflow vulnerability in the
> _libssh2_base64_encode() function when processing malformed hashed hostname
> entries.

> ==41411==ERROR: AddressSanitizer: heap-buffer-overflow on address
> 0x6020000000d5 at pc 0x00010728cb0f bp 0x7ff7b9a37f90 sp 0x7ff7b9a37758
> READ of size 6 at 0x6020000000d5 thread T0

> SUMMARY: AddressSanitizer: heap-buffer-overflow misc.c:463 in
> _libssh2_base64_encode

This looks like yet another case of ASan mislabeling over-reads as
overflows (which it does all the time).

Can someone in particular please volunteer for getting this wording
fixed in ASan, I guess separately in clang and gcc?

Meanwhile, we should be careful to recognize and re-label such findings,
so e.g. this message's Subject and first paragraph should correctly say
"over-read" and not "overflow".  Of course, until ASan's wording is
fixed, realistically many if not most vulnerability reports based on
fuzzing+ASan will continue to be mislabeled like that, probably also
leading to wrong CVSS vectors and thus wrong scores (likely
exaggerated).  But at least the few of us reading this message may try
and do better, please.

Thanks,

Alexander
