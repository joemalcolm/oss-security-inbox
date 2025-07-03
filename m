Received: (qmail 7851 invoked by uid 550); 3 Jul 2025 19:59:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17472 invoked from network); 3 Jul 2025 19:14:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=github.com; s=google; t=1751570069; x=1752174869; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZRR6e2whUS0gDaGT0vdYGiq8hzV4vEC9V1QWfBw+m6A=;
        b=FaFowVJkDjzy/ymwuhz8AdEKMm3fJ9ZVPbU1vR/4tRoEfDGo3h8WAl9vKnlpt+jXzx
         yU+/UweiSGpFplnByVN2kf0oeS6sXnUA4tdyBMY4U6wOsmG2QCZuIP4DXM0+0IHdfE3t
         L8gP18TahApAUKDdJIaBKJZ7GPsTLtxl9bWiUaIepd8BHpYuOyx9ATb+njfCkyYF3YFM
         80T5ikaHd/XludRq9wtPH8IvyyQmZfIlYwBNt/lPg21dMr0RyWSO6CLbfNwtWPmuSU6w
         Zjk76n3QKtnAskRxMrTEZ6TJVDDz1YjxDHbYTxIhuiW8W0slmeAjwgnlKeDOyfe5JcPc
         Ms5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751570069; x=1752174869;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZRR6e2whUS0gDaGT0vdYGiq8hzV4vEC9V1QWfBw+m6A=;
        b=OvCjEZ4CD9qHGeB7TTmqw0p3JuMz89ItVC+L9fW8rIcDEikOLBN62lV+ZkRBv1/BuE
         tLWqW6UpdoVCBSvMV4fgwk0m6L1f/gMLkWKJ3UkyVhB4QIT+ITjdM2uv5W4zdo4wTltb
         aIqPVe4emif+Cs0FQc+8W5n2zsiT+a4+iTT3jpdGv/PHWqKdL4gWKkxt5q3Ig/Xtuo3H
         0DRvtwo1o+6HuQWpvyKF+jRXcuQjaH7Ndez6ySiP8rOwOXHkiSDo2KZ/5PdkfFFzZpTM
         LA4+tcpbFwkxYjv4M/aqU1Lm2vswQrv7/vcAKZoArlHVj/domfnseBXlNhZkUA7zTETz
         6a5A==
X-Gm-Message-State: AOJu0Yw+vpL8HTuFKxw9HUji5vcVfUY/RYQn3g/y+/yPoaNXCM7gSehb
	urb81sdPK5zuzmIkO/NxyID9D1QF+spp59heQYQJzQYw3zmciErYUmzPN9cpFNC6YTyCtaKNuBj
	fW7M3qeU7kNk3Vx0QOMDDEC5vtptflNSjfdCH3F0yOr8JZH9u9xsBfQ==
X-Gm-Gg: ASbGncuMEeDJNZg75DxJstitwPBTTJc92lKPpGU2/h8y785IYUMXpZp5hEMNfCZBgKk
	9vnYFdVHrnk9cofoA+FvAIC4yMR7zyOQyEL9sVFCb4CnZ37qB215IJlLb+iFfLHSQfA0Lm/Jzn3
	+uM2K3of1FgvYI5ieE73Q2RDqFEI73hJ4Td63vSBYN+pyqgaznfzZAXePvLUkGL0ZPP0ncbRGSX
	xg0HA==
X-Google-Smtp-Source: AGHT+IHQyeBiWNY1Tzl7TiVE7KPlcPPrMaEjpTQAMXM8Wag2H4SA0dRXG0kWFM9tmtr2ps8s/McFi+isQOt/Ic2sPlE=
X-Received: by 2002:a17:90a:d644:b0:311:f05b:86a5 with SMTP id
 98e67ed59e1d1-31a909a6697mr13863005a91.0.1751570068588; Thu, 03 Jul 2025
 12:14:28 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Backhouse <kevinbackhouse@github.com>
Date: Thu, 3 Jul 2025 20:14:17 +0100
X-Gm-Features: Ac12FXy2VeR2mxtjTO_S1q9RWU1edm25rX3D9v4xRKtKjbdjSwPzEgkv0T2BLyY
Message-ID: <CAMmasOOQBhxsA7yxKoEPLLMFzOg_WZ1yVj09ZfOPLQFo3uDaRA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Antonio Morales <antonio-morales@github.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2025-53367: An exploitable OOB write in DjVuLibre

DjVuLibre version 3.5.29 was released today. It fixes CVE-2025-53367
(GHSL-2025-055), an out-of-bounds write in the MMRDecoder::scanruns
method. The vulnerability could be exploited to gain code execution on
a Linux Desktop system when the user tries to open a crafted document.

DjVu is a document file format that can be used for similar purposes
to PDF. It is supported by evince and papers, the default document
viewers on many Linux distributions. In fact, even when a djvu file is
given a filename with a .pdf extension, evince/papers will
automatically detect that it is a DjVu document and run DjVuLibre to
decode it.

This vulnerability was found by my colleague Antonio Morales while
researching the Evince document reader. He found the bug with fuzzing.

I have developed a proof of concept exploit for the vulnerability, as
demoed in this video: https://youtu.be/32kROHYhYVM. The poc works on a
fully up-to-date Ubuntu 25.04 (x86_64) with all the standard security
protections enabled. To explain what=E2=80=99s happening in the video:

1. I click on a malicious DjVu document in my ~/Downloads directory.
2. The file is named poc.pdf, but it=E2=80=99s actually in DjVu format.
3. The default document viewer (/usr/bin/papers) loads the document,
detects that it=E2=80=99s in DjVu format, and uses DjVuLibre to decode it.
4. The file exploits the OOB write vulnerability and triggers a call
to system("google-chrome https://www.youtube.com/=E2=80=A6").
5. Rick Astley appears.

Although the poc is able to bypass ASLR, it's somewhat unreliable:
it=E2=80=99ll work 10 times in a row and then suddenly stop working for
several minutes. But this is only a first version, and I believe it=E2=80=
=99s
possible to create an exploit that=E2=80=99s significantly more reliable.

You may be wondering: why Astley, and not a calculator? That=E2=80=99s beca=
use
/usr/bin/papers runs under an AppArmor profile. The profile prohibits
you from starting an arbitrary process but makes an exception for
google-chrome. So it was easier to play a youtube video than pop a
calc. But the AppArmor profile is not particularly restrictive: for
example, it lets you write arbitrary files to the user=E2=80=99s home
directory, except for the really obvious one like ~/.bashrc. So it
wouldn=E2=80=99t prevent a determined attacker from gaining code execution.

# Vulnerability Details

The MMRDecoder::scanruns method is affected by an OOB-write
vulnerability, because it doesn't check that the xr pointer stays
within the bounds of the allocated buffer.

During the decoding process, run-length encoded data is written into
two buffers: lineruns and prevruns:

//libdjvu/MMRDecoder.h
class DJVUAPI MMRDecoder : public GPEnabled
{
...
public:

  unsigned short *lineruns;
...
  unsigned short *prevruns;
...

}

The variables named pr and xr point to the current locations in those
buffers. scanruns does not check that those pointers remain within the
bounds of the allocated buffers.

//libdjvu/MMRDecoder.cpp
const unsigned short *
MMRDecoder::scanruns(const unsigned short **endptr)
{
...
  // Swap run buffers
  unsigned short *pr =3D lineruns;
  unsigned short *xr =3D prevruns;
  prevruns =3D pr;
  lineruns =3D xr;
...
  for(a0=3D0,rle=3D0,b1=3D*pr++;a0 < width;)
    {
     ...
            *xr =3D rle; xr++; rle =3D 0;
     ...
            *xr =3D rle; xr++; rle =3D 0;
 ...
          *xr =3D inc+rle-a0;
          xr++;
}

This can lead to writes beyond the allocated memory, resulting in a
heap corruption condition. An out-of-bounds read with pr is also
possible for the same reason.

We will publish the source code of our proof of concept exploit in a
couple of weeks=E2=80=99 time at https://github.com/github/securitylab.

# Acknowledgements

We would like to thank L=C3=A9on Bottou and Bill Riemers for responding
incredibly quickly and releasing a fix less than two days after we
first contacted them!

# Timeline

2025-07-01: Reported via email to the authors: L=C3=A9on Bottou, Bill
Riemers, Yann LeCun.
2025-07-01: Responses received from Bill Riemers and L=C3=A9on Bottou.
2025-07-02: Fix commit added by L=C3=A9on Bottou:
https://sourceforge.net/p/djvu/djvulibre-git/ci/33f645196593d70bd5e37f55b63=
886c31c82c3da/
2025-07-03: DjVuLibre version 3.5.29 released:
https://sourceforge.net/p/djvu/www-git/ci/9748b43794440aff40bae066132aa5c22=
e7fd6a3/

# References

Source code location:
https://sourceforge.net/p/djvu/djvulibre-git/ci/42029c33b2fb25bc1fa98c80b2b=
e83a2fa23cce1/tree/libdjvu/MMRDecoder.cpp
