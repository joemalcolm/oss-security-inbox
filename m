X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["956" "Monday" "9" "October" "2017" "01:04:30" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNW35RHRmVgfdAG118m9Yghfa0X6ZHFRzpUuhCsQbWE8Xw@mail.gmail.com>" "32" "Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)" nil nil nil "10" "2017100908:04:30" "[oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)" (number mark "U       reed@reedlod Oct  9   32/956   " thread-indent "\"Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)\"\n") "<20171008214807.GA17602@nb4>" ("<20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi>" "<CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>" "<CALPTtNWjgtc00AvQrdfUspAqx0U+-0aEPGL3aiP1j-im4XC+6w@mail.gmail.com>" "<20170929151218.0cfb25c2@pc1>" "<CALPTtNXNQyq_P5FodjEOpf0J_UBEKWhioRqdGhQLfYOFSQHdiw@mail.gmail.com>" "<20171008214807.GA17602@nb4>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15608 invoked by uid 550); 9 Oct 2017 08:05:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15581 invoked from network); 9 Oct 2017 08:05:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=xoe/sJKfY2dfztTox6IxOO3cl3aBLoQVm9F6eBqDfto=;
        b=ke15CZPJ0Pe9mFBtipKuEw1YO1TAPxeyZYcNdCngDQ5KOJTHFK5nlCSd0EsAElaylX
         w6zdJjQwiiBohsRpvFJjaB/5Q5+9c2gXB1I6Cfb9lB1Pg1FhMPq/8XTMYHRGFUd8jweM
         Pnj6BOWmZWTCrDU9O0IWtj0W2N0PbmF2EL9z+qtOE2VzczATOMK5m/jlzT4r3NwJ7eWy
         qE3dkyQA/Xww/v5TmtwoDETJETu38Ru9n96oWLNzEKXg2JmZa3VA9k2oajuNwfgXW9X3
         YqDn4O/5ut/NCF3Fbl84hXsdQ5lCyc+4+pEuh2ha3dJUANgNF7wzsM6l0YCCDoR4MUg8
         1klQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=xoe/sJKfY2dfztTox6IxOO3cl3aBLoQVm9F6eBqDfto=;
        b=QIyLCN+R5SKYVjnM8zXzuxVPcLsxw7OFZSzgp+n5UrcnaU69wqQyg/ntG+7NbauAeg
         Cj5Nujs6ch8C3XkCb3Sgt9jaTnfsu6KPReeLyu6vx8CMV5yymGBuE6GyieKZFl8l0Oka
         kJEI7stNvV7TbqyflDsZ/yyUeT1iR46qLNtw1zDIFMrQcG0UHqXesSa+cbfwQRA7KdyA
         l73ZXMdLKnKbwPI4DLg1660H6IajKq1BkTOd5gLvLPPsUeNak/hRUpbZ1kIhXDcpxARl
         cvX01rTP5ydJpzRPmviNnjyVqr0mqbH6nb+b+ZoCUd/K/R4dIEfm360tBC55hoWLamZZ
         H/sg==
X-Gm-Message-State: AMCzsaUi1oDl5z2k7ifXtR8EEHB7rozO0cbfAKS4bButLoH5YP2pdvgN
	636opfFCmcOwGgtPImatLq6nw7EhXc7CvEh+c/LBRJeX
X-Google-Smtp-Source: AOwi7QAT1rok5LWkD4l3rvdiiYb9bWg4z7SOvb1L3HmKtxr9mlv/098dX24NPdqedd0y17XgRJn/k8KBnCnu+z4ZA3s=
X-Received: by 10.159.50.72 with SMTP id y8mr5051493uad.194.1507536290820;
 Mon, 09 Oct 2017 01:04:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20171008214807.GA17602@nb4>
References: <20170928182541.r7dzm3epg7txsplh@tunkki.bugs.fi>
 <CAO5O-EL=MsSrj39-A_yf9_NmE-m7hrF6YfC+SOFnAw41Ae4g8Q@mail.gmail.com>
 <CALPTtNWjgtc00AvQrdfUspAqx0U+-0aEPGL3aiP1j-im4XC+6w@mail.gmail.com>
 <20170929151218.0cfb25c2@pc1> <CALPTtNXNQyq_P5FodjEOpf0J_UBEKWhioRqdGhQLfYOFSQHdiw@mail.gmail.com>
 <20171008214807.GA17602@nb4>
From: Reed Loden <reed@reedloden.com>
Date: Mon, 9 Oct 2017 01:04:30 -0700
Message-ID: <CALPTtNW35RHRmVgfdAG118m9Yghfa0X6ZHFRzpUuhCsQbWE8Xw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="001a1147608219caba055b18a5ea"
Subject: Re: [oss-security] The Internet Bug Bounty: Data Processing (hackerone.com)

--001a1147608219caba055b18a5ea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 8, 2017 at 11:24 PM Michael Niedermayer <michael@niedermayer.cc>
wrote:

> > We=E2=80=99d love to have FFmpeg in-scope, but the simple reason is tha=
t they
> don=E2=80=99t
> > reply to our e-mails. All projects participating must explicitly opt-in,
> > and we can=E2=80=99t get anybody at FFmpeg to let us know their thought=
s on if
> they
> > would like to be added or not.
>
> Your mails where misidentified as spam on my side at least, and while
> i admit i saw them and wanted to reply later i forgot and somehow
> apparently everyone else forgot to reply too.
> Finally replied and yes of course FFmpeg wants to participate
>

Awesome! Thanks for getting back to us.

We've added FFmpeg to the scope at the bottom of
https://hackerone.com/ibb-data.

Happy hacking,
~reed
(for the IBB)

--001a1147608219caba055b18a5ea--
