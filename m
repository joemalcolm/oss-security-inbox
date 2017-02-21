X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5698" "Tuesday" "21" "February" "2017" "17:20:11" "+0200" "Ariel Zelivanski" "ariel.zelivans@gmail.com" "<CAE-_4r3PgqHs2kVHLTzynYhcffE_AWu1Y8QFM5LXeA8kvMnbrw@mail.gmail.com>" "130" "[oss-security] CVE Request - Multiple vulnerabilities in gdk-pixbuf" nil nil nil "2" "2017022115:20:11" "[oss-security] CVE Request - Multiple vulnerabilities in gdk-pixbuf" (number mark "U       ariel.zeliva Feb 21  130/5698  " thread-indent "\"[oss-security] CVE Request - Multiple vulnerabilities in gdk-pixbuf\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28274 invoked by uid 550); 21 Feb 2017 16:40:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24568 invoked from network); 21 Feb 2017 15:20:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=4OwIKjRMe1vsyeLxrduwZnaTrKp/NHNRyNYgsSd2Mjw=;
        b=IAvdlpFqc8CY2dQ2yL0CVWHXt2XC4MflUITM3Dx2yslVDhscHH0LeiP41brC40Rk/r
         Fp5GblwtWnEF5S1C5cLtKtuRIPaDGUGzcjdSMLe1XOJYCgYhul91SNwXaIlABEJkMUMC
         4yggicBx/Pwu9lPmtVc4UUaiGXm7hz7CA7IbA3VhdTpgFMGB9uxNXRfdAzlU6M3dxrth
         aDo//Px1tGj6T9KBrHDvvkHkjzPG5pDS8HMGdnTkmRpQDm/54wXkMlqcor13aqs3TRwE
         6aNYWqF892uLeg6BATTaksTjk+1C6R8wr2rpDDbxLCfi45dsUxMIrEv1mAhK8jG+Lyji
         EIzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4OwIKjRMe1vsyeLxrduwZnaTrKp/NHNRyNYgsSd2Mjw=;
        b=DWILT4eZn1Ud9MNgH7Dp/yDipl1WI9wSAL8IJ+cFaFEtV+Dxbi3ZMWue1rhXjPb3GA
         xNAZe4tUAsidY+elXZqkm31qkSqKr9779sq8m7HmnAvKmHDtimewR/q6VRxtDrA6oOOG
         VM5hz5rQO19XtsYmY/Ukh36ik+7DtLu+gGP64cQ3Y1JgNFGq+cAxxYa3QdJoEqBlVvr1
         F5TcYoTPNkdDklcWkc0GnAeQD7jlc1Xxtr0aW+4EYuTVIDmSmzLF40OKw3MYcAxLV6il
         5UcOnO2sN72XphpGP86THDBdwy8bOHw0djRI790bOwO14OIG812nOBtmNtbTCJw1yxFe
         3Pbg==
X-Gm-Message-State: AMke39mVQyixoLS6ZrNphmDkf1+aQ0f+wfXJVAoiKXv08qiDEND//0I3SSjVvbtP27SbEECG+obJCu6hRsbB3w==
X-Received: by 10.31.173.69 with SMTP id w66mr12948188vke.127.1487690412158;
 Tue, 21 Feb 2017 07:20:12 -0800 (PST)
MIME-Version: 1.0
From: Ariel Zelivanski <ariel.zelivans@gmail.com>
Date: Tue, 21 Feb 2017 17:20:11 +0200
Message-ID: <CAE-_4r3PgqHs2kVHLTzynYhcffE_AWu1Y8QFM5LXeA8kvMnbrw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1143fcd28d75e705490bead2
Subject: [oss-security] CVE Request - Multiple vulnerabilities in gdk-pixbuf

--001a1143fcd28d75e705490bead2
Content-Type: text/plain; charset=UTF-8

Hello,

I just reported several vulnerabilities in gdk-pixbuf. I am adding the
relevant details but you can also refer to the bug reports in the links. If
suitable please assign CVEs.

1. An dangerous integer underflow in io-icns.c [1]
--------------------------------------------------
io-icns.c is the source code for the loader of Macintosh icons.

An integer underflow I found allows an attacker to lead to different calls
to gdk_pixbuf_loader_write with a huge (2^32-1) count (size of buffer) that
can be bigger than the actual size of given buffer. It is possible to give
the loader any data we want so we can call any desired loader that it's
data is recognized. This may lead to various behaviors - multiple
out-of-buffer reads, infinite loops, or allocation attempt with the size.
Possibly other behaviors I did not test for (I didn't really check all
available loaders).

1.1 The bug
-----------
In the load_resources function (io-icns.c:63), inside the size switch (line
101), all the cases set plen or mlen to: blocklen - sizeof
(IcnsBlockHeader);
See lines 109, 117, 127, 134, 139, 146, 151, 158 and 163.
blocklen is set in line 95:

blocklen = GUINT32_FROM_BE (header->size);

There are no checks on the size of blocklen and if it is set to less than
sizeof (IcnsBlockHeader) (should be 8) there is an integer underflow.

This is dangerous because it's value is later passed to
gdk_pixbuf_loader_write (line 262) when size is 256. This allows an
attacker to craft a file that will end up calling to a desired loader with
a bogus size that is much larger than the actual buffer size.

Possible exploits of the bug:
1. Adding a bmp, or a an ico image data after the header will cause an
out-of-buffer read.
2. With a tiff image it would lead to an infinite loop (see bug 2).
3. With a gif, a tga or another icns after the header the code will try to
allocate as much as count bytes (and most likely fail on a size of 2^32-1).
Otherwise if the actual data size is less than 4096 there is an
out-of-bounds read.
4. With another icns it is possible to reach another out-of-bounds
4.1 If this out-of-bounds read gets zeros we will have an infinite loop

2. Infinite loop in io-tiff.c [2]
---------------------------------
This loader for tiff images will try and allocate a buffer as big as size
given to it. It calls the make_available_at_least function to do that.
The problem is in the function itself (from line 499):

if (need_alloc > context->allocated) {
    guint new_size = 1;
    while (new_size < need_alloc)
        new_size *= 2;
...

new_size starts with 1 and multiplies until it is larger or equal to
need_alloc. If need_alloc is larger than 2^31, new_size will become 2^31
and multiply itself in 2, and become 0. This would lead to an infinite loop.

3. Out-of-bounds read on io-ico.c [3]
-------------------------------------
io-ico.c is the source code for the loader of Windows icons.

State->HeaderSize is calculated in line 334:
State->HeaderSize = entry->DIBoffset + INFOHEADER_SIZE
entry->DIBoffset is read directly from the data

An integer overflow seems possible. However in line 336 it is checked if
(State->HeaderSize < 0), to prevent such overflow.
This works when compiling without or with basic optimization (in gcc, -O0
or -O1), but from -O2 this check seems to be ignored. Specifically when
compiled with "O1 -fstrict-overflow -ftree-vrp".
I believe many distributions are building with these flags.

When this is overflown it is possible later to reach a segmentation fault
thanks to an out-of-bounds read of the BIH variable (line 359: BIH =
Data+entry->DIBoffset;).

I tested this both on Arch and on Ubuntu 16.04.1 but it certainly affects
other distributions as well.

4. NULL dereference on gdk-pixbuf-thumbnailer [4]
-------------------------------------------------
This is a bug in gnome-thumbnailer-skeleton.c and it affects only the
latest versions of gdk-pixbuf (since moving the code from gnome-desktop the
the external thumbnailer in gdk-pixbuf[5]).

gnome-thumbnailer-skeleton.c:272 calls file_to_pixbuf. file_to_pixbuf
(gdk-pixbuf-thumbnailer.c:209) calls _gdk_pixbuf_new_from_uri_at_scale,
which calls gdk_pixbuf_loader_get_pixbuf (see gdk-pixbuf-thumbnailer:195).
gdk_pixbuf_loader_get_pixbuf may returns NULL, and it doesn't get a pointer
to an error object to set an error.
So when it returns NULL, on file_to_pixbuf pixbuf will be NULL, and on line
312 printing error->message will result in a NULL deference (error->message
will be 0x0 + 0x8).

5. Impact
---------
These bugs can break many binaries that rely on gdk-pixbuf and I can think
of various ways these bugs can be used maliciously. Obvious applications
are to cause DoS by segmentation faults or possibly by CPU exhaustion (with
the infinite loops) when possible. Besides crashing the thumbnailer and
some other desktop applications that use gdk-pixbuf I also managed to crash
Chromium and Firefox on Ubuntu (on both via their file browser which use
gdk-pixbuf). To see the full list of packages that use gdk-pixbuf on apt
based distributions run `apt-cache rdepends libgdk-pixbuf2.0-0
libgdk-pixbuf2.0-dev`.

Thanks to afl for helping me find bugs 3 and 4.

Links

[1] https://bugzilla.gnome.org/show_bug.cgi?id=779016
[2] https://bugzilla.gnome.org/show_bug.cgi?id=779020
[3] https://bugzilla.gnome.org/show_bug.cgi?id=779012
[4] https://bugzilla.gnome.org/show_bug.cgi?id=778204
[5]
https://git.gnome.org/browse/gdk-pixbuf/commit/?id=06cf4c78067203b78acbfb29862350cdb8200b73
[6] A blog post I wrote about this -
http://mov.sx/2017/02/21/bug-hunting-gdk-pixbuf.html

--001a1143fcd28d75e705490bead2--
