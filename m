X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1980" "Monday" "15" "July" "2019" "09:56:07" "-0600" "Joe McManus" "joe.mcmanus@canonical.com" "<CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com>" "55" "Re: [oss-security] Contributing Back" nil nil nil "7" "2019071515:56:07" "[oss-security] Contributing Back" (number mark "U       joe.mcmanus@ Jul 15   55/1980  " thread-indent "\"Re: [oss-security] Contributing Back\"\n") "<20190714174509.GA8267@openwall.com>" ("<CAPsnWaD_9QOiV+513eH=ECkwBo+AWN38N9x7xauKcFyVpvc-Og@mail.gmail.com>" "<20190714174509.GA8267@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12076 invoked by uid 550); 15 Jul 2019 18:47:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9550 invoked from network); 15 Jul 2019 15:56:31 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N/JmpZuUFvU5Ms29bHe/wyqpUYeTtHdS93D7vtNMSjc=;
        b=QBHFdv0UpUkTLvAgSiGBU+9w6OG1kdGu7bGPSqK4z7/SUjF1wQAfIOo4tXDmig/2fL
         53pwipccwQx3tTux9c+9/mHbVIvFh6i67JoOV5xNnlDrE+qeimwljC4siOPivuBMYLnJ
         wr/EunriuodgzIsFhBG371Pfs0z3SnWW4V8os/nCKAfPsgl5Su9QmVdnDB3ah8d9APRn
         Pyi5TORJWr+YY7+gM7TT1xMSQEC6u5OK6SgzUn43rydgAb6ELp3ugAI9u+Lq+FJAaLrr
         wf+L0oSouAuP/DziJQ2Z3adGghqtEWwROBsbjH6N3zOI6fTyXg4XOARlPG5yaz/1DflX
         BB0Q==
X-Gm-Message-State: APjAAAX3Z6PG46yYeZ0t/8kATQxc6B6xc7s33ahuKa2buB4niq9DqLgd
	21gFPwVhHT2gXa82ZOStTAZaXkWI7gcd723fyEYh6qMyVyKKU4RDFKdQxqMXxz/+KNY0/Npvbt2
	Y78Bc2UmiS5A6vANVAfD5O8Sz/VH5FaTzxTkJxfzcvlDGNuW5VIMult7Y86KCqg==
X-Received: by 2002:a2e:124b:: with SMTP id t72mr14701418lje.143.1563206178903;
        Mon, 15 Jul 2019 08:56:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxTAvlEVsl5tyyCrFmOlclBVw3q4KrUfqiT0hE5pnZdg0ZXGDfpRMQkGeOya/zRcLz9h8+TVbGRLXiXLaORXUo=
X-Received: by 2002:a2e:124b:: with SMTP id t72mr14701408lje.143.1563206178746;
 Mon, 15 Jul 2019 08:56:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAPsnWaD_9QOiV+513eH=ECkwBo+AWN38N9x7xauKcFyVpvc-Og@mail.gmail.com>
 <20190714174509.GA8267@openwall.com>
In-Reply-To: <20190714174509.GA8267@openwall.com>
From: Joe McManus <joe.mcmanus@canonical.com>
Date: Mon, 15 Jul 2019 09:56:07 -0600
Message-ID: <CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Contributing Back

Hey Alexander-

On Sun, Jul 14, 2019 at 11:45 AM Solar Designer <solar@openwall.com> wrote:
>
> Hi Joe,
>
> On Tue, Jul 09, 2019 at 07:00:36PM -0600, Joe McManus wrote:
> > Hey All - The Ubuntu Security Team would like to sign up for items 3,4
> > & 5 from the technical list <
> > https://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back
> > >:
> >
> > 3 - Review and/or test the proposed patches and point out potential issues
> >   with them [...]
> > 4 - Check if related issues exist in the same piece of software [...]
> > 5 - Check if related issues exist in implementations of similar
> >   functionality in other software [...]
> >
> > Please let me know how we get started helping out.
>
> This will be much appreciated, thanks!
>
> Will this be taken care of by Ubuntu Security Team members who are
> already on linux-distros (highly preferable) or will we need to
> subscribe more people just for these roles (would be non-ideal)?
>
> For 3, do you prefer to be "primary" or "backup"?  (We already have
> Amazon listed as "primary", but as discussed Amazon is yet to become
> more active in this role.)
>
> Will you personally be involved?  What's your role with the Ubuntu
> Security Team?
>
> I notice you don't appear to be on oss-security, so am copying this
> reply to you and to the list.
>
> Thanks again,
>
> Alexander

Yes, this will be taken care of by Ubuntu Security Team members who
are already on the list, however if after some time we need to cycle
someone in or out I might come asking. I know you don't want to add
anyone so we will do our best to prevent this from happening.

For 3 we can be either primary or backup, just let me know your
preference and we'll do the work.

I will not personally be involved, I am the director of the Ubuntu
Security Team and as much as I would like to... I probably wouldn't
have time and I did not want to add another person to the list.  I am
subscribed to oss-security now.

Cheers,
-Joe
