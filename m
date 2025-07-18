Received: (qmail 3890 invoked by uid 550); 18 Jul 2025 17:52:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13609 invoked from network); 18 Jul 2025 15:38:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=github.com; s=google; t=1752853088; x=1753457888; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S9aQqP/SqmSX+H1B6PSpvjLwU+r6svOCfFJYVzvwoz0=;
        b=RMM0fVDvdOXgJwELEvt9LcrOQUN+7QlKA8BZm3xd/nf9TkDP9lwWcCLIcndJZ//4k0
         EK5kf5bWstiqDiacdqXu/Apf80RCuQB+NxGxprNzpYdNfM243DgJumANAeti3cEpcKGC
         LgBc+5jkGvY/pKGyrk/+6kRr0JfpdUXa4orKZzZsvIHQI+KUSSQecEaQ8MMJk6caRfNn
         qqvFwJ/2yf4c/5fZpvfe5VCmV7FbKb3cgRc8XwMJmgJq2SmJtTkc4lPg07tyvu3Fsg7K
         +KnRQId2jjF6K6AlveeS0S9DiF+B6V5DUEoFgqFk8vweZefQiYB0dAOQToM1VfWw5fr7
         Qg1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752853088; x=1753457888;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S9aQqP/SqmSX+H1B6PSpvjLwU+r6svOCfFJYVzvwoz0=;
        b=S2wD70No1OyO2pYLB4FM6moq+i61wK7HbRm8I4I8fC/onnBME2sf0o3swK+2Mih85+
         bmtdp4uufR7exxzUUb5/iCsjxHyBcbhfCY1YofloMkW0wkV0xWmtr1IOPfVQBUwTHf8q
         l3JP2z1+RS+fzyo6ehEi2C5EyPv9gMUL3zSmIJjW0yiAafoQufsAwh1+UtaFVzhqops0
         5x7D8kp6pYzUXUhSSQkYiXLNFVBL1/bIC19Nhz0phLGs2ASJbyS8aSLxFqN4lnCIh/rC
         czo4I2Ov5TtqRAEbKLU2MSCZK+JpqhH94D/tAsGE7knUHo1yYo5prynkVt+IXYoiUoz1
         rOKQ==
X-Gm-Message-State: AOJu0YyL1gGCVYcE/v8EugMB/GoN3xt44Bl1ZkzFSriJVUhHMg6tkSW9
	mtMm1I6EG/unGi1InqZzbRPqlkGiK3xSJ1+srChmCYVTZ3H7wm2aqGnRDo68evTzQVXIh4lWcV3
	31MD1IAH3uybw4PxDYTmrAVbGyo42Wy/BYkcgcukDnMwkhFlHkY5qBQ==
X-Gm-Gg: ASbGncso34i9Vtiyp17lsM1kS2UmPbxj5ky90qTFXEFjKx8llwzBv90/h7s8juAgmrO
	hn3nC3D3TPCY6gCGfTX8QKdnK7wEb07lRB1xk6OhvAVQonMfR35Bgp1M5PoYVu2hCJEjyYUHumQ
	PVIFpPxe+MOyTLhcea1xcFy6e50a1jDtAEO5LXpByQ+t95Ggz0OZbiWXDmxOEA2YCwE17FPoiR3
	fmN6aBgAJwq1+F6ZF7Jph4rZtd66ydFr++Vfneo
X-Google-Smtp-Source: AGHT+IHXd2I+tFO7LbG5xLXq2hWNxHxCB6tzRM984vDE0UNIc2WMX8ZV+wg/LZ3dcBlHKtXNeebekIoKaQmGUTzB2YM=
X-Received: by 2002:a17:90b:56cd:b0:31c:15d9:8aa with SMTP id
 98e67ed59e1d1-31cc26143dfmr4237179a91.34.1752852648707; Fri, 18 Jul 2025
 08:30:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAMmasOOQBhxsA7yxKoEPLLMFzOg_WZ1yVj09ZfOPLQFo3uDaRA@mail.gmail.com>
In-Reply-To: <CAMmasOOQBhxsA7yxKoEPLLMFzOg_WZ1yVj09ZfOPLQFo3uDaRA@mail.gmail.com>
From: Kevin Backhouse <kevinbackhouse@github.com>
Date: Fri, 18 Jul 2025 16:30:37 +0100
X-Gm-Features: Ac12FXxbKwwjD4fTohXSbA0sISotiiR_VxyMJNdBr3rQIHs3ohU-z3nfNN9x-jo
Message-ID: <CAMmasONyC181-+0jD5Z8k71VzuOUyAJ+mTNNOApKiy1pXXhbxw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Antonio Morales <antonio-morales@github.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: CVE-2025-53367: An exploitable OOB write in DjVuLibre

As promised, I've now published the full poc that achieves code
execution in evince/papers:

https://github.com/github/securitylab/tree/main/SecurityExploits/DjVuLibre/=
MMRDecoder_scanruns_CVE-2025-53367

Kev

On Thu, Jul 3, 2025 at 8:14=E2=80=AFPM Kevin Backhouse
<kevinbackhouse@github.com> wrote:
>
> DjVuLibre version 3.5.29 was released today. It fixes CVE-2025-53367
> (GHSL-2025-055), an out-of-bounds write in the MMRDecoder::scanruns
> method. The vulnerability could be exploited to gain code execution on
> a Linux Desktop system when the user tries to open a crafted document.
>
> DjVu is a document file format that can be used for similar purposes
> to PDF. It is supported by evince and papers, the default document
> viewers on many Linux distributions. In fact, even when a djvu file is
> given a filename with a .pdf extension, evince/papers will
> automatically detect that it is a DjVu document and run DjVuLibre to
> decode it.
>
> This vulnerability was found by my colleague Antonio Morales while
> researching the Evince document reader. He found the bug with fuzzing.
>
> I have developed a proof of concept exploit for the vulnerability, as
> demoed in this video: https://youtu.be/32kROHYhYVM. The poc works on a
> fully up-to-date Ubuntu 25.04 (x86_64) with all the standard security
> protections enabled. To explain what=E2=80=99s happening in the video:
>
> 1. I click on a malicious DjVu document in my ~/Downloads directory.
> 2. The file is named poc.pdf, but it=E2=80=99s actually in DjVu format.
> 3. The default document viewer (/usr/bin/papers) loads the document,
> detects that it=E2=80=99s in DjVu format, and uses DjVuLibre to decode it.
> 4. The file exploits the OOB write vulnerability and triggers a call
> to system("google-chrome https://www.youtube.com/=E2=80=A6").
> 5. Rick Astley appears.
>
> Although the poc is able to bypass ASLR, it's somewhat unreliable:
> it=E2=80=99ll work 10 times in a row and then suddenly stop working for
> several minutes. But this is only a first version, and I believe it=E2=80=
=99s
> possible to create an exploit that=E2=80=99s significantly more reliable.
>
> You may be wondering: why Astley, and not a calculator? That=E2=80=99s be=
cause
> /usr/bin/papers runs under an AppArmor profile. The profile prohibits
> you from starting an arbitrary process but makes an exception for
> google-chrome. So it was easier to play a youtube video than pop a
> calc. But the AppArmor profile is not particularly restrictive: for
> example, it lets you write arbitrary files to the user=E2=80=99s home
> directory, except for the really obvious one like ~/.bashrc. So it
> wouldn=E2=80=99t prevent a determined attacker from gaining code executio=
n.
>
> # Vulnerability Details
>
> The MMRDecoder::scanruns method is affected by an OOB-write
> vulnerability, because it doesn't check that the xr pointer stays
> within the bounds of the allocated buffer.
>
> During the decoding process, run-length encoded data is written into
> two buffers: lineruns and prevruns:
>
> //libdjvu/MMRDecoder.h
> class DJVUAPI MMRDecoder : public GPEnabled
> {
> ...
> public:
>
>   unsigned short *lineruns;
> ...
>   unsigned short *prevruns;
> ...
>
> }
>
> The variables named pr and xr point to the current locations in those
> buffers. scanruns does not check that those pointers remain within the
> bounds of the allocated buffers.
>
> //libdjvu/MMRDecoder.cpp
> const unsigned short *
> MMRDecoder::scanruns(const unsigned short **endptr)
> {
> ...
>   // Swap run buffers
>   unsigned short *pr =3D lineruns;
>   unsigned short *xr =3D prevruns;
>   prevruns =3D pr;
>   lineruns =3D xr;
> ...
>   for(a0=3D0,rle=3D0,b1=3D*pr++;a0 < width;)
>     {
>      ...
>             *xr =3D rle; xr++; rle =3D 0;
>      ...
>             *xr =3D rle; xr++; rle =3D 0;
>  ...
>           *xr =3D inc+rle-a0;
>           xr++;
> }
>
> This can lead to writes beyond the allocated memory, resulting in a
> heap corruption condition. An out-of-bounds read with pr is also
> possible for the same reason.
>
> We will publish the source code of our proof of concept exploit in a
> couple of weeks=E2=80=99 time at https://github.com/github/securitylab.
>
> # Acknowledgements
>
> We would like to thank L=C3=A9on Bottou and Bill Riemers for responding
> incredibly quickly and releasing a fix less than two days after we
> first contacted them!
>
> # Timeline
>
> 2025-07-01: Reported via email to the authors: L=C3=A9on Bottou, Bill
> Riemers, Yann LeCun.
> 2025-07-01: Responses received from Bill Riemers and L=C3=A9on Bottou.
> 2025-07-02: Fix commit added by L=C3=A9on Bottou:
> https://sourceforge.net/p/djvu/djvulibre-git/ci/33f645196593d70bd5e37f55b=
63886c31c82c3da/
> 2025-07-03: DjVuLibre version 3.5.29 released:
> https://sourceforge.net/p/djvu/www-git/ci/9748b43794440aff40bae066132aa5c=
22e7fd6a3/
>
> # References
>
> Source code location:
> https://sourceforge.net/p/djvu/djvulibre-git/ci/42029c33b2fb25bc1fa98c80b=
2be83a2fa23cce1/tree/libdjvu/MMRDecoder.cpp
