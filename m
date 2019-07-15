X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2099" "Monday" "15" "July" "2019" "11:54:23" "-0700" "Anthony Liguori" "anthony@codemonkey.ws" "<CA+aC4kuU2KVonpSER4rPb5asFR+gw8t0RAWXX7Di=4nDEJQnJw@mail.gmail.com>" "57" "Re: [oss-security] Contributing Back" nil nil nil "7" "2019071518:54:23" "[oss-security] Contributing Back" (number mark "U       anthony@code Jul 15   57/2099  " thread-indent "\"Re: [oss-security] Contributing Back\"\n") "<CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com>" ("<CAPsnWaD_9QOiV+513eH=ECkwBo+AWN38N9x7xauKcFyVpvc-Og@mail.gmail.com>" "<20190714174509.GA8267@openwall.com>" "<CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7820 invoked by uid 550); 15 Jul 2019 19:06:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32062 invoked from network); 15 Jul 2019 18:54:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codemonkey-ws.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FVPgQ6hcKjlbUrf3slsoMpH/ozE3Q4t/BJ+1vc+Fkj8=;
        b=eg8CX8CdswiGjhcFsR+7bevay0q3sQ+pyDKbTTMqukh/JCZzkRrxkk1fpXrfk8RAOu
         ktvUDVGG6eK8Nr5yrkLt4IQOQNyIhHsp/2QMSXM7fRVmWNhFWIzIJmPygGTEMj+ep5gx
         BtDVuzBewDpqdme1N8iBSysW4Ud2bVQDwlYHCDKFD0eUEGJqvrcaiAbjSFa2hpFv9rZc
         QLXOZZvFyZmRfrap87CjlXcQS9Uv6nVa2nnnhBI2caRW+sF+XfXbED691IDu+9qdD38I
         ZjYTsKGZRDh9yX5gcTdi3dlOLP+/SLBJPT5TnX1wmHU2iSjBg5e/h1WKG00wtee3n80X
         gAyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FVPgQ6hcKjlbUrf3slsoMpH/ozE3Q4t/BJ+1vc+Fkj8=;
        b=jeGXuRrx3g89xdG/n1HlKTDTUU3k3+W0sxzpHIZKwwYDWdp6p/kTR4i00iNAfTXQhK
         +dnXqURiMs39gtFmSZXL/NSO03e2EctHtn8ScxHoWtW2I0bQzFKt2LeaAOjc5eIj3tv0
         S/0k4KDAfmg4ddaGarYGSWKh2SXROa+qaKETKG4vVDhjPa4PWLS4oeI0EyBCmHoaaIS3
         MrjM39WEF606cTyyLY4ewNN0KUB2+sdK8g2DZHipjB9cdM5S42pLC+4V3v38bXRxADGN
         FXc22Fprun51wtLlWzr4liQs/MPCdR6Y7R9rdZNJadrrzRxZOfycoVLj2VUg/fXUaGaQ
         OQpw==
X-Gm-Message-State: APjAAAUDJjWe/yMmu+TDplD9oY13ky48wsV0AlmT07RzEDtV/hoyu8vF
	Vpa2R2IgdTulGeJiOODE2X0C6zGbT+2fGLOIqVF4we/+
X-Google-Smtp-Source: APXvYqzG3EbApEnkE5+tMasqjgVuBQ7TivbYwP+UYc0or8Sx0VaY+db8NudnQV7OhogzLhvKq5zyDTqPX5E/7rKWt9w=
X-Received: by 2002:aca:c7c6:: with SMTP id x189mr12902279oif.4.1563216874208;
 Mon, 15 Jul 2019 11:54:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAPsnWaD_9QOiV+513eH=ECkwBo+AWN38N9x7xauKcFyVpvc-Og@mail.gmail.com>
 <20190714174509.GA8267@openwall.com> <CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com>
In-Reply-To: <CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com>
From: Anthony Liguori <anthony@codemonkey.ws>
Date: Mon, 15 Jul 2019 11:54:23 -0700
Message-ID: <CA+aC4kuU2KVonpSER4rPb5asFR+gw8t0RAWXX7Di=4nDEJQnJw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Solar Designer <solar@openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Contributing Back

On Mon, Jul 15, 2019 at 11:47 AM Joe McManus <joe.mcmanus@canonical.com> wrote:
>
> Hey Alexander-
>
> On Sun, Jul 14, 2019 at 11:45 AM Solar Designer <solar@openwall.com> wrote:
> >
> > Hi Joe,
> >
> > On Tue, Jul 09, 2019 at 07:00:36PM -0600, Joe McManus wrote:
> > > Hey All - The Ubuntu Security Team would like to sign up for items 3,4
> > > & 5 from the technical list <
> > > https://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back
> > > >:
> > >
> > > 3 - Review and/or test the proposed patches and point out potential issues
> > >   with them [...]
> > > 4 - Check if related issues exist in the same piece of software [...]
> > > 5 - Check if related issues exist in implementations of similar
> > >   functionality in other software [...]
> > >
> > > Please let me know how we get started helping out.
> >
> > This will be much appreciated, thanks!
> >
> > Will this be taken care of by Ubuntu Security Team members who are
> > already on linux-distros (highly preferable) or will we need to
> > subscribe more people just for these roles (would be non-ideal)?
> >
> > For 3, do you prefer to be "primary" or "backup"?  (We already have
> > Amazon listed as "primary", but as discussed Amazon is yet to become
> > more active in this role.)
> >
> > Will you personally be involved?  What's your role with the Ubuntu
> > Security Team?
> >
> > I notice you don't appear to be on oss-security, so am copying this
> > reply to you and to the list.
> >
> > Thanks again,
> >
> > Alexander
>
> Yes, this will be taken care of by Ubuntu Security Team members who
> are already on the list, however if after some time we need to cycle
> someone in or out I might come asking. I know you don't want to add
> anyone so we will do our best to prevent this from happening.
>
> For 3 we can be either primary or backup, just let me know your
> preference and we'll do the work.

I would be happy for y'all to be primary.  We don't ship as many
packages as Ubuntu does so there will be more things that you are
likely to test compared to what we do.

Regards,

Anthony Liguori
