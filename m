Received: (qmail 8157 invoked by uid 550); 12 May 2026 20:24:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14099 invoked from network); 12 May 2026 18:30:49 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778610640; cv=none;
        d=google.com; s=arc-20240605;
        b=OLNZUds0xM0sHg8a0oWFZlzIqiqPsX6judBsex+DLyI9PlfvufU0TeNaPzZni3UEhb
         oQFsm9VGytr1AkpGYP5Z0m/eyb2QJARUw3u36WQVJ1Ah/uunUp5yTukdZQl2N25pvTR1
         IkytvK3t2XyoG1uaqEZp2B37iKOgLQfb1rl/fl4UKRmw/sgaBHJxHl4kV5dNl388a0GM
         3+1zWGlC24oIvE80Y9q+Bfvgo6NCakgJeKVl1Ara7AgcNW+atlpf+UAkmjKnjnB5/x6k
         3gmgOTIMrhWG17mRY4XZlQwrIpsEmdlTU/1px6gcNhswHVC9BOyHcJkbBqljgp9Xw3SK
         9+fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3QW+AWoJSVFjycmeGna5mEmpf9ehKj+zxHV8bd7nUoc=;
        fh=rxgFuEFYYhL06fHm1vQdhE2eGin8+oowWiWcxZ33+4s=;
        b=NirhyhP+pSzSdBC26WrmpfW7r5ZmvLZBvVBCcGYf1GAnl9Gf/GoqI24sfAneJ5jZPi
         jV/YuwbQcfU6lxBSi31XXCXYRUnyNhuZGAX/91gOaykoOF/LdFQcyNObUDbeU6ViQmns
         gX/qnN+2pwmB6j6tqMVfRSzt9iiMeETnszNIoOga33ZB4DxvqlL0XJ5GLDhN2vX4kNVZ
         d0Nq3Pmw5enNy+lwTcsvRj4aRo2De2mwxLgeUOFXLoBb4aPDxJd7P3g5N13xvKrEB6Tb
         wLd2ec6OtYhnEvt50ez4+P/s5nYudR5SHF706F9jZ2A/IitBXBZ3/ijvHMO0vAm5oyVI
         ZBbg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778610640; x=1779215440; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3QW+AWoJSVFjycmeGna5mEmpf9ehKj+zxHV8bd7nUoc=;
        b=bvl//grKJM/2CSR5Lf6NhO625AxZb+g3zR+poShOpE9AY6YYURSCbBPRz51V3OSXrk
         vOko15PcHtycqe8rjvzotyFYUW1xqqgvztWIznnAhgVkxJeOip9FfktqTW7/oipp1/hs
         cpanHVJ5IXcnsh31SOKCpFZmnmWTMXyB1jdrnb/PttmGkletCorJFaAYQSlCYDjvHh4S
         6Yb65KVdrhKIQuA0ad8adF1VrbqXJid/VJRWUoaIzTm6pwMiwiBua60duj5LZ7082r3U
         rQrPPP3yIUC4kChNqJFZdv4AWIet/pPUdwA1/TETddEpnKdwW0CxluMaq5WVR+F5GaEV
         yxig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778610640; x=1779215440;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3QW+AWoJSVFjycmeGna5mEmpf9ehKj+zxHV8bd7nUoc=;
        b=Z/wS/R0sTQZ9PgtKU4F8DWO7i2um0GkGvT3XkeWKvwx2URw1k6EIzaVy+LSJEYLa98
         yHmX6sFnIsEtBXgn3KlH6+LHZFFV+q/zRkpoEAMr/kEoD3IB+O5h7PP/87m5ACiHCawm
         QzUEbPsxMUCHLJEWvM/1IgWbIVISP7Ye5VpAP0S371404luq6BB+l0W61hlWL7O839c6
         YvgmFJCmsUrktyMTFApniYiaTbZpWNtaRH5PIzYRKCbPpnECtnF6hh6/wISNcTZDEJ8d
         gR2lbGrxzG776JBr7bTAKU2Di5mTyo2isr7FvtptM3LefA67DKgGM3a2NclJvs2wjX8C
         2dzw==
X-Gm-Message-State: AOJu0YxbQ6XZoh4WZdR23nZ3Q8epEn9bO6hTBNvVYu/s64YuyYeRExtK
	TjwcgTyfC9nnG9J800ff+6y3cvoFBgBIiGtRMZH3O4fPSfIYEL2yl+o9XHHtOgNn9lzuTs9Xwhj
	hvQO10Xqp9bC8RgksMQIzntTmjoFSLa1CeMFol40=
X-Gm-Gg: Acq92OHcnJO110pTY8Tw04S0HJZXMvlUJeyEnGvwgbjthmOYrCew92x8DqBiE/Vz5N2
	2SPuD8Ej/6PtCb/K1JN/0N8G+6ajRX73AxLFGM7LfCd0IZ7bU4CWCfhoQhH+Fw9u8z/3sW2XTO4
	ki9BpGjAh6cciU1lK4QUy/mQtxUL93Pzxvnf9OBgDNtXq8N3hx08UJrPIWBQZxa015nX4/3WKyn
	Hr+j3Zj8PGlVCCnIewxdGz0ZIWUzZtr092UQvHURLaPDiAPEmahyVULvuBoK5CKath597F9pecr
	DE5zZjM/hq0Ro8rf
X-Received: by 2002:a05:6820:180e:b0:694:8f18:ccd3 with SMTP id
 006d021491bc7-69998c8f432mr16158921eaf.3.1778610640193; Tue, 12 May 2026
 11:30:40 -0700 (PDT)
MIME-Version: 1.0
References: <958c7edc-400f-44e9-aac4-78161e999db4@pipping.org>
 <20260510074756.GA17210@openwall.com> <c67530db-c586-4921-bc3f-67a12e389eb1@pipping.org>
In-Reply-To: <c67530db-c586-4921-bc3f-67a12e389eb1@pipping.org>
From: Joshua Windle <joshua.w.windle@gmail.com>
Date: Tue, 12 May 2026 20:30:28 +0200
X-Gm-Features: AVHnY4LnuDuQXUQe6sIt3IpoSOzcSJweoAHVrXSN_g1K_JJVzi9A4d5UnqsqgKw
Message-ID: <CAKzyyUCRGa0Bxw0vK+-QviNyQG9tJCT9dUTTPFttiY0feuBk9w@mail.gmail.com>
To: Sebastian Pipping <sebastian@pipping.org>
Cc: oss-security@lists.openwall.com, solar@openwall.com
Content-Type: multipart/alternative; boundary="000000000000670dda0651a30ffe"
Subject: Re: [oss-security] uriparser 1.0.2 fixes CVE-2026-44927 and CVE-2026-44928

--000000000000670dda0651a30ffe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Team,

An update request for CVE-2026-44927 with an impact report was submitted on
Sun, May 10, 9:04 AM to MITRE.

This request appears to have been processed today.

Best regards,
Joshua W. Windle


On Tue, May 12, 2026 at 3:19=E2=80=AFPM Sebastian Pipping <sebastian@pippin=
g.org>
wrote:

> Hi Alexander,
>
>
> On 5/10/26 09:47, Solar Designer wrote:
> > On Sat, May 09, 2026 at 08:18:49PM +0200, Sebastian Pipping wrote:
> >> just a quick note that uriparser 1.0.2 released today is fixing
> >> vulnerabilities CVE-2026-44927 and CVE-2026-44928.
> >
> > Thanks, but let's please be including vulnerability descriptions right
> > in the postings.  Also, when it's one vulnerability, its title should be
> > in the Subject line.  When it's more than one, then if there's a way to
> > group them e.g. by category or severity, that could go into the Subject.
> >
> >> Some key links are:
> >>
> >> - The change log of release 1.0.2
> >>
> https://github.com/uriparser/uriparser/blob/uriparser-1.0.2/ChangeLog
> >
> > This says:
> >
> >>>>>>>>>>>>>> SECURITY
> >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
> >    * Fixed: [CVE-2026-44927]
> >        Stop truncating `ptrdiff_t` to `int`
> >        Thanks for the report to Ilia Alshanetsky and Joshua W. Windle!
> >        (GitHub #304)
> >    * Fixed: [CVE-2026-44928]
> >        Fix `EqualsUri` with regard to `.absolutePath`
> >        Thanks for the report to Ilia Alshanetsky! (GitHub #305)
> >>>>>>>>>>>>>> SECURITY
> >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
> >    * Fixed: Fix OOM related memory leak in `CopyUriMm`
> >        Thanks for the report to Ilia Alshanetsky! (GitHub #306)
> >
> >> - The fixing pull requests
> >>    - https://github.com/uriparser/uriparser/pull/304
> >>    - https://github.com/uriparser/uriparser/pull/305
> >>
> >> - The official CVE metadata
> >>    - https://nvd.nist.gov/vuln/detail/CVE-2026-44927
> >>    - https://nvd.nist.gov/vuln/detail/CVE-2026-44928
> >
> > These only say a little:
> >
> > CVE-2026-44927: In uriparser before 1.0.2, there is pointer difference
> > truncation to int in various places.
> >
> > CVE-2026-44928: In uriparser before 1.0.2, the function family EqualsUri
> > can misclassify two unequal URIs as equal.
> >
> > For CVE-2026-44927, it could help to clarify actual security exposure
> > and impact.
>
> I understand.
>
> My understanding of the impact of the ptrdiff_t truncation
> (CVE-2026-44927) was "DoS or more", and I focussed on fixing this in the
> about 15 places rather than analyzing the impact in more detail.
>
> Ilia and Joshua considered impact more than me, and I'm BCC'ing them
> so they can reply to this mail directly if they like, please do not feel
> pushed.
>
> Let me add that the public CVSS score input for CVE-2026-44927 is
> (again) mistaken; none of these are correct:
>
> - Attack vector: Local
> - Attack complexity: High
> - Availability: None
>
> (Seen at https://github.com/advisories/ghsa-gmxg-5w57-j63q just now.)
>
> Best
>
>
>
> Sebastian
>
>

--000000000000670dda0651a30ffe--
