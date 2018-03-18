X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1912" "Sunday" "18" "March" "2018" "07:59:06" "+0000" "Thomas Kluyver" "takowl@gmail.com" "<CAOvn4qiRLkETd=3+5f0PJ1r47CmFQWk0_aFiR0mpdRH26LzRJA@mail.gmail.com>" "67" "Re: [oss-security] CVE request: maliciously crafted notebook files in Jupyter" nil nil nil "3" "2018031807:59:06" "[oss-security] CVE request: maliciously crafted notebook files in Jupyter" (number mark "U       takowl@gmail Mar 18   67/1912  " thread-indent "\"Re: [oss-security] CVE request: maliciously crafted notebook files in Jupyter\"\n") "<20180317140214.GB8389@eldamar.local>" ("<1521122159.1270614.1304206128.19D1CFEA@webmail.messagingengine.com>" "<20180317140214.GB8389@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7788 invoked by uid 550); 18 Mar 2018 10:46:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14070 invoked from network); 18 Mar 2018 07:59:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=GXW7B9t9xVoYK/piNMCqtRWdc4GGvYuu+97HLw26RPE=;
        b=MoJipvqyMKZ1HAySx8aV9xPKMM6b765+xHXd0ylqjrFT0hpSyPh3abiK2/qvObaQg+
         m/vsS+jz+mlknoaro27xo38a3TcETrLQMQVPZmm0ati0XF/iW6Ygbd4b6mAPK9UsStT3
         5kJkBfEReekbtdOpgDkBCFrIjilSQn3EIN2W/Hxp2UfqaT70DH4kH2zEgNv3qte3a3uS
         s/AipBI7j50PYQ20qzg2H0yzTLzS6h5/ktP4IUAPyynacmBcZaaddsL4DKPr+sVTFrLW
         g0hIRv+UeAGZDId/BDkFJRu47EBbWBmXFi70sndWAcMtLotbR54Z3u97/lh5LXXsSmDC
         c1ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=GXW7B9t9xVoYK/piNMCqtRWdc4GGvYuu+97HLw26RPE=;
        b=lZeLBGlha0V5SpsruIvYEFXunibffmdfZtoNe6uPite/4R/0aMkHj1GGyRE3UgUUEi
         nFVM5P3411+LvzMeysnywF8NU0rUEEV4T+OMpexWKgZhcOndBwCCrB8w6SSoojbFU7Kn
         oPbFP3qogTYArZWaYGHo3h3/0JiQ6x1QLQGG/DbIhgZIF2u3Sn07EVdHOnXyHKopGpnL
         spz++SKYTy/FxV4vhZpXB2KLaSu7vtyKLi1Y3CQpJeoih7nnqn5XnS2ht2zCgFbLPZ8x
         mAaq1qqdyJoA70kZyBPoJ8Iav7KAB8+oNtulxx2Ft9gxE/Rpl5EXzN5ZQgH0GEhPRyhy
         auJg==
X-Gm-Message-State: AElRT7HfIrQjx5bp1QxmwOEUZp0R3leCr9vjqs4fHcp16WgdItIyez1v
	FIGdIwQhTvlRjLxsvQhgKe2iFxbdI3zZsVZRwjo=
X-Google-Smtp-Source: AG47ELun+Zk08LubL1PFtlIW47Zbo3ZhCSuE9+p/f5c+MkGE0tiw8g2w1fyF1keq4pR5Tl88D7iz5hatcxBSRGbra/Q=
X-Received: by 2002:a19:1483:: with SMTP id 3-v6mr5065204lfu.122.1521359977612;
 Sun, 18 Mar 2018 00:59:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180317140214.GB8389@eldamar.local>
References: <1521122159.1270614.1304206128.19D1CFEA@webmail.messagingengine.com>
 <20180317140214.GB8389@eldamar.local>
From: Thomas Kluyver <takowl@gmail.com>
Date: Sun, 18 Mar 2018 07:59:06 +0000
Message-ID: <CAOvn4qiRLkETd=3+5f0PJ1r47CmFQWk0_aFiR0mpdRH26LzRJA@mail.gmail.com>
To: Salvatore Bonaccorso <carnil@debian.org>
Cc: oss-security@lists.openwall.com, security <security@ipython.org>, 
	MinRK <benjaminrk@gmail.com>, jkamens@quantopian.com, ssanderson@quantopian.com
Content-Type: multipart/alternative; boundary="0000000000000a8c7a0567ab3926"
Subject: Re: [oss-security] CVE request: maliciously crafted notebook files in Jupyter

--0000000000000a8c7a0567ab3926
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Salvatore. Devdatta Akhawe filled in the form on my behalf, and
we've now been assigned CVE-2018-8768.

I'm going to merge the fix now and start the release process for 5.4.1.

Thomas

On 17 March 2018 at 14:05, Salvatore Bonaccorso <carnil@debian.org> wrote:

> Hi,
>
> On Thu, Mar 15, 2018 at 01:55:59PM +0000, Thomas Kluyver wrote:
> > Email address of requester: security@ipython.org, thomas@kluyver.me.uk,
> benjaminrk@gmail.com, jkamens@quantopian.com, ssanderson@quantopian.com
> >
> > Software name: Jupyter Notebook (formerly IPython Notebook)
> > Type of vulnerability: Maliciously forged file
> > Attack outcome: Possible remote execution
> >
> > Vulnerability: A maliciously forged notebook file can bypass
> sanitization to execute Javascript in the notebook context. Specifically,
> invalid HTML is 'fixed' by jQuery after sanitization, making it dangerous.
> >
> > Affected versions:
> >
> > - notebook =E2=89=A4 5.4.0
> >
> > URI with issues:
> >
> > - GET /notebook/**
> >
> > Patches:  not yet finalised
> >
> > Mitigations:
> >
> > Upgrade to Jupyter notebook 5.4.1 or 5.5 once available.
> > If using pip,
> >
> >     pip install --upgrade notebook
> >
> > For conda:
> >
> >     conda update conda
> >     conda update notebook
> >
> > Vulnerability reported by vkgonka@mail.ru , via Jonathan Kamens at
> Quantopian
>
> Thanks for the headsup.
>
> This reply is mainly for this other purpose: It looks you wanted to
> have a CVE assigned trough this reply to the list. CVE's cannot
> anymore be requested via the oss-security list. If you want to request
> one please have a look at https://cveform.mitre.org/
>
> Once you have the CVE assigned, can you please loop back the
> assignement in this thread?
>
> Regards,
> Salvatore
>

--0000000000000a8c7a0567ab3926--
