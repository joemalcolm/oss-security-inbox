X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1311" "Monday" "10" "May" "2021" "08:10:53" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" nil "36" "Re: [oss-security] CVE-2021-23133: Linux kernel: race condition in sctp sockets" nil nil nil "5" nil nil (number mark "U       carnil@debia May 10   36/1311  " thread-indent "\"Re: [oss-security] CVE-2021-23133: Linux kernel: race condition in sctp sockets\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-23133: Linux kernel: race condition in sctp sockets" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14313 invoked by uid 550); 10 May 2021 06:11:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14295 invoked from network); 10 May 2021 06:11:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mvU15iTiTBfVV0arJuFlHJWyFHICz3YkdC8WiCMb/wg=;
        b=DNxBSJ1UqllBHUD9MS/lxtlkHliXJmNSMsw/8xm6Md6WZOUs4aYiyxZtXRSh29gzyk
         TDqTpTGIKxAAaoR3sF1uyxmLYRzdyG1fiU1ot+IBFjXD7dgXsgIYd+xTIHO1TRdbYK03
         o9ofoPf8urTp8aXqYe7k3gsWEd7mOixBM6X0zv8zRbZ/xIeVdGY83yqI9bs0KVlIputK
         fVO0ApIbrgi9pLfV/SafMd/+6JmQork9dQonT0LhjmvVvetDfH/iFSs6YKtXuRut+8nP
         7yBuubyBjN/wFvRoJHZksOtsQ2OLNvn8Xwk5TpK9GBUcvDCTwKImdm+Y1YKx5T+tt1As
         95bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=mvU15iTiTBfVV0arJuFlHJWyFHICz3YkdC8WiCMb/wg=;
        b=t+eLRszJX5gLAUbLZhmyNoMuL5u9qXCxqDAyz2Di4HrR7qGUsEdFGWc58RudmNvVVd
         RiwAJS6d7nnl9X7PFUOJa5GGdHLYoDN2ZK6M5SAiFxR9xYPQO5mcEJKbbMdvg8z7h9lP
         uzYawT593RTFY/hkb2SYnEVFAFqw4EBuP6/kD+w/+qcjRHnizBbI4U9PfSKSmYCZHmV3
         cfgA50IJhv0l29tcNHp9Rvn03R1cyad11v88r+101mLdOH7PghWXWPK0j5mvsaO54bi4
         /JHE07mqWAJyVgZZ7rwPhH/9XowAlXZq4dgcV1skjbEw2Frd+koVlr/PaXut//ezMMvl
         LBSw==
X-Gm-Message-State: AOAM530FiulW6OoBtJ40ZtYlDKP1p4f0hm22grrQYvGSBexRNVxsbf4k
	L/4JzLvKpE1AN4JwXzeV9EA=
X-Google-Smtp-Source: ABdhPJw290R0b7bQb0oW1Z9AkQ3M2mIP26bW8Qb6RFzZQP5NUpljvui7DChYghxdAGOvRmB27B2RFg==
X-Received: by 2002:adf:e505:: with SMTP id j5mr28556797wrm.171.1620627055016;
        Sun, 09 May 2021 23:10:55 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 10 May 2021 08:10:53 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Alex Murray <alex.murray@canonical.com>
Cc: oss-security@lists.openwall.com,
	Nadav Markus <nmarkus@paloaltonetworks.com>,
	Or Cohen <orcohen@paloaltonetworks.com>
Message-ID: <20210510061053.GA23700@lorien.valinor.li>
References: <CAM6JnLex-+TM+p5aNrcifxG3qmpL+gfXzSTzWpVpbj3_hsp_Fw@mail.gmail.com>
 <20210510042443.GA19253@lorien.valinor.li>
 <87fsyvnn9x.fsf@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87fsyvnn9x.fsf@canonical.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] CVE-2021-23133: Linux kernel: race condition in
 sctp sockets

Hi Alex,

On Mon, May 10, 2021 at 03:28:02PM +0930, Alex Murray wrote:
> 
> On Mon, 2021-05-10 at 13:54:43 +0930, Salvatore Bonaccorso wrote:
> 
> > Hi,
> > 
> > On Sun, Apr 18, 2021 at 11:41:06AM +0300, Or Cohen wrote:
> > > Hello,
> > > 
> > > This is an announcement about CVE-2021-23133 which is a race-condition
> > > I found in Linux kernel sctp sockets (net/sctp/socket.c). It can
> > > lead to kernel
> > > privilege escalation from the context of a network service or from
> > > an unprivileged process if certain conditions are met.
> > > 
> > > The bug was fixed on April 13, 2021:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b166a20b07382b8bc1dcee2a448715c9c2c81b5b
> > 
> > It looks that additionally
> > https://git.kernel.org/linus/34e5b01186858b36c4d7c87e1a025071e8e2401f
> > refer to CVE-2021-23133.
> 
> It seems b166a20b07382b8bc1dcee2a448715c9c2c81b5b got reverted in the
> follow-up commit
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/net/sctp/socket.c?id=01bfe5e8e428b475982a98a46cca5755726f3f7f
> and so 34e5b01186858b36c4d7c87e1a025071e8e2401f would appear to be the
> most correct fix from what I can tell.

Ah right, I missed the revert of the original commit.

Thanks for pointing that to me.

Regards,
Salvatore
