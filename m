Received: (qmail 25682 invoked by uid 550); 19 Mar 2026 16:46:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20305 invoked from network); 19 Mar 2026 16:45:44 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1773938734; cv=none;
        d=google.com; s=arc-20240605;
        b=T49P/5dzkOP85FOid2dEZFiFm9P+itM0l5ME0vqoTED7YGU7yEtwxxHdcwhFi8aC/S
         MbeV5ARRILYYLty2IeoqXo3w6xKdvmRRLHLAOP8yo4E+rSVP0Ws8flUcj6pILvh58K+P
         B3ouoN3IoKvO/yV96cAJ+53GpBNubG62qMDX6UGGMR9SzbvnWreplicBDJP+3ZMzVrQt
         RqS7BGbB5HaRlfzwgJl301f2vslVaCXiIl/ea3WSQ3UVX0RZRWV5KAYVIDFaX57qkq64
         GxvdyJ1TTVicTcjLaXl3qxUah5T6CmVJRWZ5jnZdLHoiXXE1Xrd8rVyqH5aPtmPcTa1Q
         QKig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=gTdOq3n0p8/a8lNvmVj3ye3d0xVUWTC2u3Zp3dwsERY=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=llsBvsajAL5AoGiYsJJVJOC5jH5GXBrUaOhu2fbqGY7I1mPLQOuWRCiLrUyS0JzGsX
         l4/s8hy4HMzEaWAOL803gRRi/+JuwmXf15j9e32A8C7Zvu7Riwar2WMkMyDE0CHZh+tY
         Vz+CJvYyiMHmFE+YxyWlcQHDotThcGEiYSHaBfA8VV4IZXN1heMTpnnDTR+luSfhEI4q
         id/+RObXI8zWXF3BdrWe/MBh5vFZzYyhACFyk58RvKhO/PbcqK/93V9sEoqpFXjMZIXr
         9xY1rE3JTm7thdNl7EtlbtRmAdGw2rjouZwXv67lMTKoH+EaMVxBI+dMP8zVoZ8pBfii
         LqIg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773938734; x=1774543534; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gTdOq3n0p8/a8lNvmVj3ye3d0xVUWTC2u3Zp3dwsERY=;
        b=e8ZuIrVyRdarpxbbs7/JaUcY8yz/Ch+LfcG/YHh9lC+2RDPWi96XobASIi/TA508gJ
         vu8rj29XTYgUA/EBIPiayNooNqGMnF+x3nayojF9wxwZ9VuYFsVWv4nG3hK8Cxmg6iLi
         vjLToBq2Cz4+HLJErZfNF6nHIEi0SoLrbKkaEG/ngJUekHn3sbHr7cJsr+lILgyXCSd1
         39o9An3qPnt1h/dvvO2BTgUOwYgC0g1FImicrOOTvfb8zqijce6eiLATChU/5dA+RRkl
         fvdkzzXK8Udp9xmdOc/PiWGGryuYAynPT6JP8X3QxjDSdJihBVHAbRmsFjwPvNsDM8kY
         xs/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773938734; x=1774543534;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gTdOq3n0p8/a8lNvmVj3ye3d0xVUWTC2u3Zp3dwsERY=;
        b=L8eZpasLFzT7u+AyC2zgGtldtBMenYK91RN9qCqlB2PpsBJPmbu3q6vBdTruOlRJVj
         SBinMjfD09ljiv0smZJNvCkaYwpCcaNdBclxdqummvF5Fb/bjsec3edANKQw9PdiokOi
         ylQAhjB8zuHckRrBf2vTaiOYqFl41vjx/nIDlPKrbB3r6cuK9fX4ODDZ6peHf0rSQwfz
         nvTeu2JocHf3vt7OUIkmj+HVXRPOXrnAtOAgOOgDeonD42qVDZE4G+FaTAqoYwHFWddC
         PVE0b+WkJzbhON/Kd1FDPrAwwrfuneqTjVQy6PrVXqJdvmM+xPtvL2iz3EyLFZVglQ7G
         r6HA==
X-Gm-Message-State: AOJu0Yx5vpN93JGpnUkyV4fjr5oljfXJLN/OjJLI3wotvx15K20AxcPU
	eFlN4dbQuOfa7uMElSikLwAPyYflVhsJvv6k4snIb6NOcakwMfj0x3Brdr5XTJm22pUuBUGKMRq
	BYDgdmhT0vYFRZk8z9GubvHHrRS5bGxrG60WJ
X-Gm-Gg: ATEYQzzKQCsmCdhiLD4RYnkxL601OQQCQ6yXRQr0rPlFSuDAsqjX2Xt0NRlSuncSBKQ
	xsypEfz4DOfthf3u9rO8tfRwKy7ND/rMOy2mupKd4dxH+ZamvgLAugtI4mhAWmesqW4hDLYrtGC
	DqCIj7sSzB3bGuHVm+3XZjId0onsBqEUkaReY9JQ8TbQffnvBA21rWPsuTpCy3qxexUO3gPZ5tW
	FDhLYL1rzRAOHLXe6rR+7FHcl7Yikk9sH4G1/H1jZzMCSeejQClJppl4abu/DiRB0QmIjdbh1x6
	9v6HBQ==
X-Received: by 2002:a05:7301:fa0f:b0:2c0:d9be:eb09 with SMTP id
 5a478bee46e88-2c1093d1a00mr28051eec.0.1773938732914; Thu, 19 Mar 2026
 09:45:32 -0700 (PDT)
MIME-Version: 1.0
From: Ali Raza <elirazamumtaz@gmail.com>
Date: Thu, 19 Mar 2026 21:45:20 +0500
X-Gm-Features: AaiRm51ynJsYZ1MzBfNqjk8pCNORnqEDP79o7CYmiGxQx1zpRSHiRy9VWio5oDI
Message-ID: <CALrEReYUaSySTPo_N1qYv3ah_4MGf-sCTZbEEm6dkuVcHGtNVA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000075cb9064d634c73"
Subject: [oss-security] Off-by-one heap buffer overflow in libuv

--000000000000075cb9064d634c73
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Last few days ago I found an off-by-one heap buffer overflow in libuv.
Off-by-one NUL write past a heap buffer in `uv_utf16_to_wtf8()` when called
from the Windows TTY line-read path. When a user types or pastes CJK
characters into a Windows console application backed by libuv, a 1-byte
out-of-bounds NUL write occurs if the read buffer size is divisible by 3.

I found this while reading through the TTY code. `uv_utf16_to_wtf8()` in
src/idna.c unconditionally writes a NUL terminator at:
```c
*target++ =3D '\0';   // idna.c:550 -- writes at target[target_len] when
buffer is full
```

The function's own comment says `*target_len_ptr` should be the length
_excluding_ space for NUL. Two callers in util.c handle this correctly:
```c
utf8_len =3D *size_ptr - 1; /* Reserve space for NUL */    // util.c:126
*size -=3D 1; /* Reserve space for NUL. */                   // util.c:1121
```

But the TTY line-read path passes the full buffer size without the
subtraction:
```c
read_bytes =3D bytes;    // tty.c:558 =E2=80=94 should be bytes - 1
uv_utf16_to_wtf8(utf16, read_chars,
                 &handle->tty.rd.read_line_buffer.base,
                 &read_bytes);
```

The overflow happens when all the input characters encode to exactly 3
UTF-8 bytes each (BMP characters in U+0800=E2=80=93U+FFFF range, like CJK
ideographs). The TTY code computes `chars =3D bytes / 3` (tty.c:540), so wh=
en
`bytes % 3 =3D=3D 0`, the worst-case output `chars * 3` equals `bytes` exac=
tly,
and the NUL terminator writes one byte past the buffer.

The buffer size comes from the application's `alloc_cb`. libuv suggests
8192 (not divisible by 3), but any application returning a size that's
divisible by 3 hits this.

Introduced in v1.47.0 (commit f3889085, PR #4021), still present on v1.x
HEAD.


Best

Ali Raza (@locus-x64)

--000000000000075cb9064d634c73--
