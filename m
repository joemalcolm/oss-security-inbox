X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["874" "Wednesday" "17" "March" "2021" "16:29:58" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" nil "25" "Re: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       carnil@debia Mar 17   25/874   " thread-indent "\"Re: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9834 invoked by uid 550); 17 Mar 2021 15:30:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9814 invoked from network); 17 Mar 2021 15:30:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=kdRZHZ+3kHyVE2YmSPmtCyr5Js6pSHjrftAaZg3OXZs=;
        b=aHpv/63fzSS/OnM9rwpiN6PnCHx1tuokfe6EZS19StahEWlljmuRitwv6qq/Kt6ynl
         5YCxFyCG01JLeh95ys0ZXqOD+hhArPIPPzYhvl+Zh5W0wlBZmGyUWOZo6gYKtVb4ur/n
         X/cqPvkK7J4gyd53GdGmnst1xGAQ8dGAY86jKUAJLCbBA38Jt3MUeP6XKBAxcXXh6F2/
         msM5oGZ+kYGSd6wyQl9aM5Iw5qnb6lmTY3kV/0lMMXmi1E9LIqatMcBKwPhVlKXC3/Np
         o3cum5kZL2f2XW0LHC4CbZmVmTLoKmor2x/2eN7rby194caChvMlGbm5bl4lrbTE0dh/
         NNVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=kdRZHZ+3kHyVE2YmSPmtCyr5Js6pSHjrftAaZg3OXZs=;
        b=VThmMvmObtG5RCaoHbf8n8g/yVDtM13WD0qerXNnJ5HiB5rau7rvVFSDH+7EE6OvbS
         aflKqgHhYedEXofE0hrwx96+75mofaDiqu6/A820OKf5SNHwExBUz/kEg5P6d11LNNTU
         J4vwQXnThlZKdgA/U50gELyzPbsDKGnRShTRrsTFVNQU7r88+ow+4QnOziYKvRs+3oTU
         ZSIbwr/Tam122pTgDMTNETKIICxH1p4OoMRhOavx2jchtWIaqYwnxIo3/H+R1q5JWN2I
         QvAuQyiRfFwVqFUxsuJDPgTJcHIZYl1XIndh9J3eFs6Fje8J2H5pQaKfxOp1UTGjSssx
         luDg==
X-Gm-Message-State: AOAM533Y7scH9VQowz3AQvt1qCBV1AJkF0+NCvBmwaTfrHAGpw9T9UJt
	DUurbIjB+R1LucjY/1r+KRcr9lKmd8wXNQ==
X-Google-Smtp-Source: ABdhPJzn8Zm5d/1NGD2k7T/cMerK+rINRHQ/LXziIs9i1SFLumy9ltKlARxMOBP0JpfsuQ0tirULIw==
X-Received: by 2002:a5d:5104:: with SMTP id s4mr5285587wrt.62.1615995000971;
        Wed, 17 Mar 2021 08:30:00 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 17 Mar 2021 16:29:58 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <YFIgdvb3HG4js+Y2@eldamar.lan>
References: <CAKx+4-qgvO4_R8fTqwxKLqwud42wUkG3V2POGeXE6C6Bv+zrxg@mail.gmail.com>
 <YFIdcSI6NvjeqFKp@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YFIdcSI6NvjeqFKp@kroah.com>
Subject: Re: [oss-security] CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

Hi Rohit,

On Wed, Mar 17, 2021 at 04:17:05PM +0100, Greg KH wrote:
> On Wed, Mar 17, 2021 at 07:45:59PM +0530, Rohit Keshri wrote:
> > Hello Team,
> > 
> > A denial of service vulnerability was found in n_tty_receive_char_special
> > in drivers/tty/n_tty.c of the Linux kernel.  In this flaw a local attacker
> > with a normal user privilege could delay the loop (due to a changing
> > ldata->read_head, and a missing sanity check) and cause a threat to the
> > system availability.
> > 
> > 'CVE-2021-20219' was assigned by Red Hat.
> > 
> > Acknowledgements: Evgenii Shatokhin (Virtuozzo Research LLC)
> 
> Really?  Not the tools or people that reported this issue and fixed it
> in the community back in 2018?

Can you clarify, would 3d63b7e4ae0d ("n_tty: Fix stall at
n_tty_receive_char_special().") be the upstream fix you are referring
to for it?

Regards,
Salvatore
