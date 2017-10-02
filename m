X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1298" "Monday" "2" "October" "2017" "11:01:19" "+0000" "Reed Loden" "reed@reedloden.com" "<CALPTtNXNQyq_P5FodjEOpf0J_UBEKWhioRqdGhQLfYOFSQHdiw@mail.gmail.com>" "37" "Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)" "^Date:" nil nil "10" "2017100211:01:19" "[oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)" (number mark "        reed@reedlod Oct  2   37/1298  " thread-indent "\"Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)\"\n") "<20170929151218.0cfb25c2@pc1>" ("<20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi>" "<CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>" "<CALPTtNWjgtc00AvQrdfUspAqx0U+-0aEPGL3aiP1j-im4XC+6w@mail.gmail.com>" "<20170929151218.0cfb25c2@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1534 invoked by uid 550); 2 Oct 2017 11:01:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1509 invoked from network); 2 Oct 2017 11:01:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=ilCe7la9xlVGwt1V9EWRd/EtSokJl8syf4j7TZHBb/E=;
        b=i9/+Q7V6J+akmX9xVG1mIyVkAbmxGl1WFsbd4ThhPPYdnLjLtDILETNfL+H9kdsJX0
         wf1r1szs/gquWa4pgqyzbmq/lljXox+LTUyUE0+V5e0tRWFLHLCJMa/9iNMW5ECuq+0o
         6Rh+9odKNx2v7zjytmspKD/Mn1FEUXBSQxt2F6q1ZQVtIP57cWTJh6xz+JkKiiHnrRq2
         JsowOQBQULuRtVj696zRiZ2OrOYvCDbacOtwf/aDkUxdrZqRR0ctsBQE3TL54DcnrNKY
         xwae7yU+Zv5g4s6RHY7Hcn9jZNUvsUL0X24FHLL9Xyg8pmWqX56YFyyL+MaK1hJP257T
         vs4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=ilCe7la9xlVGwt1V9EWRd/EtSokJl8syf4j7TZHBb/E=;
        b=UCBuIWj2rnLRY70jFfNnPVneun+ESjmXZJsIpLU0b9EaSpiGq0ra7th7eIjo3yBu9s
         v9uZpW96EQRMngfyWS7qpnAriddhtuLwHc/MBtf0XLG/cQulGX0UHvLu5d+bhP2yZ3yU
         +Vs0rPGQVBSHUJ4EaVc+aJUukjUujISGc632twqvpaOJtft5EHjeq86v1X58fgFVO5cf
         H/uWCRbILesXeRJkHEAICa0RhneGbwnWNYtvCui+vky9LtbnbI/wIbB8eiCyNQrs53KN
         Gq3RIUXYdiAAROgvdRDQtizwEWqSAWijaPS3MX28eBSQSH7bysQWnvkKeCYKgblVs/k9
         J6cw==
X-Gm-Message-State: AMCzsaWdp5MX2aizpx0vE+0wCx/Su+DXLFFHeA8+jWrXf2jUx9Vr2arr
	pRDEpaDp0gRyZW2h7jKqf01a2qkDhiTitpkpic+j6fwx
X-Google-Smtp-Source: AOwi7QC9Fjw/JcRhmRFAL1ZSbruuqP7i5vcA2lcDKmWZUqE3o7nD4f3U7zeyVWHpYVCxZXkR3m5pXWN5cuNju2wMMHE=
X-Received: by 10.176.66.228 with SMTP id j91mr5327146uaj.34.1506942090023;
 Mon, 02 Oct 2017 04:01:30 -0700 (PDT)
MIME-Version: 1.0
References: <20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi>
 <CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>
 <CALPTtNWjgtc00AvQrdfUspAqx0U+-0aEPGL3aiP1j-im4XC+6w@mail.gmail.com> <20170929151218.0cfb25c2@pc1>
In-Reply-To: <20170929151218.0cfb25c2@pc1>
Message-ID: <CALPTtNXNQyq_P5FodjEOpf0J_UBEKWhioRqdGhQLfYOFSQHdiw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c05fda8f92cd4055a8e4b58"
Date: Mon, 02 Oct 2017 11:01:19 +0000
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)
To: oss-security@lists.openwall.com

--94eb2c05fda8f92cd4055a8e4b58
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 29, 2017 at 6:12 AM Hanno B=C3=B6ck <hanno@hboeck.de> wrote:

> On Thu, 28 Sep 2017 23:13:22 -0700
> Reed Loden <reed@reedloden.com> wrote:
>
> > Separately, we're happy to announce that libav (
> > https://git.libav.org/?p=3Dlibav.git;a=3Dsummary) was added to the scope
> > earlier today.
>
> I'm surprised by this. When I saw the ibb-data bounty I immediately
> wondered whether ffmpeg should be in there.
>
> Is there a reason libav is in and ffmpeg is not? Were there concerns by
> the ffmpeg devs? (I'm not taking a side in the libav/ffmpeg wars, but
> my impression is that many distros who had used libav for some time
> have switched back and ffmpeg is clearly the more widely used of the
> forks.)


We=E2=80=99d love to have FFmpeg in-scope, but the simple reason is that th=
ey don=E2=80=99t
reply to our e-mails. All projects participating must explicitly opt-in,
and we can=E2=80=99t get anybody at FFmpeg to let us know their thoughts on=
 if they
would like to be added or not.

If somebody could help with that (or at least put us in contact with the
appropriate folks), would appreciate it. :-)

~reed
(For the IBB)

--94eb2c05fda8f92cd4055a8e4b58--
