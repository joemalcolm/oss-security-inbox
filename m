X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2317" "Saturday" "16" "May" "2015" "11:45:27" "+0300" "Michael Tokarev" "mjt@tls.msk.ru" "<555703A7.3090600@msgid.tls.msk.ru>" "66" "Re: [oss-security] QEMU 2.3.0 tmp vulns CVE request" nil nil nil "5" "2015051608:45:27" "[oss-security] QEMU 2.3.0 tmp vulns CVE request" (number mark "        mjt@tls.msk. May 16   66/2317  " thread-indent "\"Re: [oss-security] QEMU 2.3.0 tmp vulns CVE request\"\n") "<55537A9D.70306@redhat.com>" ("<55537A9D.70306@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11754 invoked by uid 550); 16 May 2015 08:45:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11736 invoked from network); 16 May 2015 08:45:38 -0000
Message-ID: <555703A7.3090600@msgid.tls.msk.ru>
Organization: Telecom Service, JSC
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.6.0
MIME-Version: 1.0
References: <55537A9D.70306@redhat.com>
In-Reply-To: <55537A9D.70306@redhat.com>
OpenPGP: id=804465C5
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
CC: qemu-devel <qemu-devel@nongnu.org>
Date: Sat, 16 May 2015 11:45:27 +0300
From: Michael Tokarev <mjt@tls.msk.ru>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] QEMU 2.3.0 tmp vulns CVE request
To: oss-security@lists.openwall.com

[Adding Cc qemu-devel@]

13.05.2015 19:23, Kurt Seifried wrote:
> So some suspicious looking tmp usage in qemu (I excluded the test
> scripts and builds scripts, they were rife with problems so hopefully
> people only build in trusted environments).
> 
> Additionally there will no doubt be further QEMU issues found in the
> next few days/weeks as people start looking, I would ask that this be
> handled publicly unless it's Remote Code Exec or equivalent (e.g.
> CVE-2015-3456).
> 
> 
> 
> ====================================================================
> http://wiki.qemu-project.org/download/qemu-2.3.0.tar.bz2
> 
> ====================================================================
> ./roms/u-boot/tools/patman/series.py:
> ./roms/u-boot/lib/lzma/import_lzmasdk.sh

This is part of u-boot source maintained externally but included
in qemu sources tarball.  It is not used directly even for building
qemu, used only by relevant maintainers when they update files in
pc-bios/ which are produced from this set of sources.  If the bug
is to be assigned, it should be filed against u-boot not qemu.

> ====================================================================
> ./roms/ipxe/src/util/niclist.pl:

The same thing, it is ipxe source, not used by qemu in any way.

> ====================================================================
> 
> ./net/slirp.c:
>     snprintf(s->smb_dir, sizeof(s->smb_dir), "/tmp/qemu-smb.%ld-%d",
>              (long)getpid(), instance++);

This one is real, used for -smb argument, to start smbd, making
its configuration.  Maybe tmpnam() should be used here.

> ====================================================================
> ./tcg/tcg.c:
> #ifdef DEBUG_JIT
>     /* Enable this block to be able to debug the ELF image file creation.
>        One can use readelf, objdump, or other inspection utilities.  */
>     {
>         FILE *f = fopen("/tmp/qemu.jit", "w+b");
>         if (f) {
>             if (fwrite(img, img_size, 1, f) != img_size) {
>                 /* Avoid stupid unused return value warning for fwrite.  */
>             }
>             fclose(f);
>         }
>     }
> #endif

This is solely for debugging by JIT maintainers.  Not useful for or
used by users.


>From all the above, only net/slirp.c issue might be of interest.

Thanks,

/mjt
