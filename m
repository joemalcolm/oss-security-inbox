X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["406" "Thursday" "11" "February" "2021" "06:47:47" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20210211054747.GA6747@lorien.valinor.li>" "15" "Re: [oss-security] Re: screen crash processing combining characters" "^Date:" nil nil "2" "2021021105:47:47" "[oss-security] Re: screen crash processing combining characters" (number mark "        carnil@debia Feb 11   15/406   " thread-indent "\"Re: [oss-security] Re: screen crash processing combining characters\"\n") "<rvv4ba$vs$1@ciao.gmane.io>" ("<rvubtf$lnv$1@ciao.gmane.io>" "<alpine.DEB.2.21.2102091921540.21881@o7.fi>" "<rvuj8p$n59$1@ciao.gmane.io>" "<rvv4ba$vs$1@ciao.gmane.io>") nil nil nil nil nil nil nil "Re: [oss-security] Re: screen crash processing combining characters" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5795 invoked by uid 550); 11 Feb 2021 05:48:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5777 invoked from network); 11 Feb 2021 05:48:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mBG2INS3B+RxHwiz0VL+fYTyfjr/yI9IjgYSa9ZfuCE=;
        b=YdhCsmPVUOM769L50ntIAzyZw1DbezEVfHNa/kzZ3z16dqgFUU4tPEfNx/fO7S/U4l
         642tLbKD4Z1TxJpjCvLhL+adDaET1AEND7e8HkuYABltYAVbJ6rTbtDI0SBMt4IOhIGc
         DOFwRQz+AR3cpXFlSVPZD8xZgQ4wNYD+3vI8bDmKYQhtAmMODBBI5/Y4k3Z9zmXLlpKu
         xgoPi6K8BxLfK8uO5+DPfnXCMZgYO58OFv61z3scaJkUndHoFD9WRsEYuMA4+0KFwUv4
         MTMSS5VOHTN6ItNq0vUZ3q/R1Rsl/gOE1KBcwFmiT+nrgsCgHb5gD/t/pYjZpdmZmZjb
         YR6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=mBG2INS3B+RxHwiz0VL+fYTyfjr/yI9IjgYSa9ZfuCE=;
        b=UgWem25j5qEnj0t6IRbO++Wa5/eZ+PrJMvdn5hOqp5B4FUJiqOTS9WYzyrcPvICRA5
         Lm8gNj/GDSjeKH/6goJKUqTX4KoHlyy9RJapiL98Yz1y62u9NQdqAXH8ZXOIYG3pwW9C
         5B62EGXPHEVMDmkMb9ZMPALOztdQYVD7RYpCOBhz68aHc6dBhrZNtFcVAjhmuxLOBGbE
         nvUmOJjntHvo2oFuLiU6uBIhsxShZHq/BWjr5O2qcbdnq1gtrst2yJ52Q9QH0Oeu/XtO
         286YUDqdn/W7TA/HFhkkzCRaOX7Z4cFjvg5EZo7QKB84W4NEdCGZqg5JhyGOovexmG09
         G7Mg==
X-Gm-Message-State: AOAM533poiLl8lYqp48+RrfeunNk4pepdwUcLpXZlmgpXPy4OVtvhnFT
	/EEHtzcOvjH9ajE57/UvHzFxY7g2urbPSQ==
X-Google-Smtp-Source: ABdhPJz3Ei5W4fGCeo4pCjk0CZcAONXLddgpFxdWRxrUFvtxeWNuSV+gJIUznyglERROVpFBDO7B4A==
X-Received: by 2002:a05:600c:3549:: with SMTP id i9mr3186231wmq.140.1613022468600;
        Wed, 10 Feb 2021 21:47:48 -0800 (PST)
Message-ID: <20210211054747.GA6747@lorien.valinor.li>
References: <rvubtf$lnv$1@ciao.gmane.io>
 <alpine.DEB.2.21.2102091921540.21881@o7.fi>
 <rvuj8p$n59$1@ciao.gmane.io>
 <rvv4ba$vs$1@ciao.gmane.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <rvv4ba$vs$1@ciao.gmane.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Thu, 11 Feb 2021 06:47:47 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Re: screen crash processing combining characters
To: oss-security@lists.openwall.com

Hi,

On Tue, Feb 09, 2021 at 11:03:06PM -0000, Tavis Ormandy wrote:
> On 2021-02-09, Tavis Ormandy wrote:
> > I'll send a report to Thomas Dickey.
> >
> 
> Fyi, Thomas (XTerm maintainer) replied - he was able to repro, and said
> the fix is going to be in patch #366, a bug fix release coming soon.

It has now been released:
https://invisible-island.net/xterm/xterm.log.html#xterm_366

Regards,
Salvatore
