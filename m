Received: (qmail 5944 invoked by uid 550); 5 Jun 2024 23:54:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11533 invoked from network); 5 Jun 2024 23:29:01 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Wed, 5 Jun 2024 23:28:46 -0000 (UTC)
Message-ID: <v3qsbe$msq$1@ciao.gmane.io>
References: <d06cc1fc-aac0-4f33-8c6a-8b8e09b330e2@oracle.com>
User-Agent: slrn/1.0.3 (Linux)
Subject: [oss-security] Re: libarchive 3.7.4 released with 2 security fixes

On 2024-06-04, Alan Coopersmith wrote:
> https://github.com/libarchive/libarchive/releases/tag/v3.7.4 announces
> the release on April 26 of libarchive 3.7.4 with 2 security fixes:
>
> - rar: Fix OOB in rar e8 filter (#2135) (CVE-2024-26256)
>    https://github.com/libarchive/libarchive/pull/2135 doesn't give details, but
>    a detailed writeup from Trend Micro / ZDI has been posted at:
>    https://www.zerodayinitiative.com/blog/2024/4/17/cve-2024-20697-windows-libarchive-remote-code-execution-vulnerability
>

The e8 thing is kinda interesting, but I think the ZDI description
didn't give enough background.

Here is my attempt:

    - A long time ago, WinRAR included a bytecode interpreting VM
      called RarVM. In theory, users could preprocess the data they're
      compressing to make it more compressible, and then embed "filters"
      in the archive. Those filters were little bytecode programs that
      reverse the preprocessing - and the decompressor would execute
      them (!!!).

      Kinda crazy, but I guess you could argue it's not that different
      to truetype hinting or postscript documents.

      I know about RarVM because I wrote an assembler for this format
      once (lol!) https://github.com/taviso/rarvmtools

    - You can't really use rarvm anymore, it was disabled in mainline
      rar a decade ago.

    - However...there were a few applications that were useful, like
      e8 processing. E8 processing makes x86 code more redundant (and
      therefore more compressible) by translating relative branches into
      absolute ones (e8 is the x86 opcode for a relative call). The
      decompressor can then reverse this process and get the original
      binary back.

    - So...libarchive checks if an archive is using once of those
      well-known bytecode programs and then emulates it. It checks by
      crc'ing the bytecode and checking if it recognizes the crc:

https://github.com/libarchive/libarchive/blob/master/libarchive/archive_read_support_format_rar.c#L3820

      Seems a bit fragile, but okay.

    - You could optionally pass these rarvm filters "initial registers",
      effectively parameters to the bytecode programs. This is a bit
      like regparm in gcc (this is the READ_REGISTERS flag the ZDI article
      was talking about).

    - The e8 filter didn't validate the length parameter correctly,
      allowing the filter to effectively read and write the whole
      address space during decompression - oops.

I'm honestly not 100% sure it's correct now, it still looks fragile to
me. The audio filter should probably also have the number of channels
capped, to avoid DoS (I don't think it can corrupt memory though?).

https://github.com/libarchive/libarchive/blob/master/libarchive/archive_read_support_format_rar.c#L3750

In my opinion as a RarVM expert (haha), I think it's not worth
supporting these old filters, were they really ever used in archives?

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

