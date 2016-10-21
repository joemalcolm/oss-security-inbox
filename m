X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1227" "Friday" "21" "October" "2016" "17:07:22" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<1513601.hM9JZeBEYn@blackgate>" "32" "Re: [oss-security] potrace: memory allocation failure" nil nil nil "10" "2016102115:07:22" "[oss-security] potrace: memory allocation failure" (number mark "U       ago@gentoo.o Oct 21   32/1227  " thread-indent "\"Re: [oss-security] potrace: memory allocation failure\"\n") "<2504156.RvxX7vydSL@arcadia>" ("<2504156.RvxX7vydSL@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16289 invoked by uid 550); 21 Oct 2016 15:07:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16270 invoked from network); 21 Oct 2016 15:07:41 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Fri, 21 Oct 2016 17:07:22 +0200
Message-ID: <1513601.hM9JZeBEYn@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.21-gentoo; KDE/4.14.24; x86_64; ; )
In-Reply-To: <2504156.RvxX7vydSL@arcadia>
References: <2504156.RvxX7vydSL@arcadia>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: Re: [oss-security] potrace: memory allocation failure

On Saturday 08 October 2016 22:30:54 Agostino Sarubbo wrote:
> A crafted image, through a fuzz testing, causes the memory allocation to
> fail.
>=20
> This is the first case where my ASan symbolyzer didn=E2=80=99t start up c=
orrectly.
> I=E2=80=99m  reporting only what it prints at the end (not useful at all =
but
> demostrates a bit that the issue exist)

I worked on it and now I'm able to get the full stacktrace, which has been=
=20
updated on the post.

For completeness I'm pasting the interesting trace here:

   #9 0x500bcb in bm_new /tmp/portage/media-
gfx/potrace-1.13/work/potrace-1.13/src/bitmap.h:76:30
    #10 0x500bcb in bm_readbody_bmp /tmp/portage/media-
gfx/potrace-1.13/work/potrace-1.13/src/bitmap_io.c:559
    #11 0x500bcb in bm_read /tmp/portage/media-
gfx/potrace-1.13/work/potrace-1.13/src/bitmap_io.c:133
    #12 0x4f8608 in process_file /tmp/portage/media-
gfx/potrace-1.13/work/potrace-1.13/src/main.c:1058:9
    #13 0x4f5904 in main /tmp/portage/media-
gfx/potrace-1.13/work/potrace-1.13/src/main.c:1214:7
    #14 0x7f167735c61f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #15 0x4190b8 in getenv (/usr/bin/potrace+0x4190b8)

--
Agostino
