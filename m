Received: (qmail 5273 invoked by uid 550); 12 Jul 2022 19:34:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5255 invoked from network); 12 Jul 2022 19:34:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=cUibCSxMoDeR+V4rKvezXaJVFqRh4BDSNyqzyGJ45Gw=;
        b=p8OpUHIOiSngRVmkadDU59ENA5YE1Vjf/ta6crjLkw2cIEsXcHQfAIepCdgvM24fb5
         /hv2mxkNHj4jlc6+22Xm3l4+diOCMNc4W9l7YwXdEELS5JMfd9b4LvKYVFftAIDCesE0
         9QR0ThnYp5JjEhw0QCf4LfHuE1I+n3eZwJAOAuCfjMlNwTB5wknD56wXdl/hlf7i0Npk
         wFD1Kx/G7Z9zERMfokbwJEUOgdgQqReOXm/8ChRsnVgJ89rOeG0jj/yCEU0Y2eJfkQqU
         s++OUtmVhAV/dvUwxUPkaPKYM1bs7a7ULMv2V5DLyxQal+a7IsbsKGwM63UUdbBwybSM
         I94A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=cUibCSxMoDeR+V4rKvezXaJVFqRh4BDSNyqzyGJ45Gw=;
        b=r/uQ6dgV72VxkDP0e6jruKz/BJmY4h2AyG+1qXX87jOa8YakIglKUhpmmQBrCmFEmo
         eiRmYPDloEETQza/0V3jF1fNphVU5dKofFWQQAePQXPmkWxlUo2uWgZbYuEhVYv/rxbc
         GuGjjXxmOAOHEWCyPxaSIbhTDqy1hrtGEIQLEB7BaDcKJp8qGl2xUwwRoki5+FJJHDwK
         w8SrrE6FV5HjEBrWE4tVXWFukvzCsgsg5fhYZeKD8ZcQVJ95Gqb2cP+d1ttnvsJSHXNs
         J4aDpPm9XAIw+riJdsVxIm19ECDY+F5xzLQiizTXmLFj3VJmoVpiYqkJ0djR2ImtOyeg
         P5gA==
X-Gm-Message-State: AJIora9YKz+5S0DLox23W+LcPxqMaXa2bf2SQPByD8h+Qobu4kcW1Ak9
	khCAMDeOLnmcvYT3pr+bxso=
X-Google-Smtp-Source: AGRyM1tEKkn1bdaPUb7b1bLudzPimOOYGYcxvbrVbouCSR2q/lPhvsXhcnPVC+v9w+hQWUzSox3ywA==
X-Received: by 2002:a17:907:2718:b0:72b:6b65:37dc with SMTP id w24-20020a170907271800b0072b6b6537dcmr8356123ejk.425.1657654471466;
        Tue, 12 Jul 2022 12:34:31 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 12 Jul 2022 21:34:30 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: xen-announce@lists.xen.org, xen-devel@lists.xen.org,
	xen-users@lists.xen.org,
	"Xen.org security team" <security-team-members@xen.org>
Message-ID: <Ys3MxgqixXKIMg/T@eldamar.lan>
References: <E1oBIrq-0007mF-D5@xenbits.xenproject.org>
 <Ys3LCx6LmRFF547K@eldamar.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Ys3LCx6LmRFF547K@eldamar.lan>
Subject: Re: [oss-security] Xen Security Advisory 407 v1
 (CVE-2022-23816,CVE-2022-23825,CVE-2022-29900) - Retbleed - arbitrary
 speculative code execution with return instructions

Hi,

On Tue, Jul 12, 2022 at 09:27:07PM +0200, Salvatore Bonaccorso wrote:
> Hi,
> 
> On Tue, Jul 12, 2022 at 04:36:10PM +0000, Xen.org security team wrote:
> > -----BEGIN PGP SIGNED MESSAGE-----
> > Hash: SHA256
> > 
> >  Xen Security Advisory CVE-2022-23816,CVE-2022-23825,CVE-2022-29900 / XSA-407
> > 
> >    Retbleed - arbitrary speculative code execution with return instructions
> > 
> > ISSUE DESCRIPTION
> > =================
> > 
> > Researchers at ETH Zurich have discovered Retbleed, allowing for
> > arbitrary speculative execution in a victim context.
> > 
> > For more details, see:
> >   https://comsec.ethz.ch/retbleed
> > 
> > ETH Zurich have allocated CVE-2022-29900 for AMD and CVE-2022-29901 for
> > Intel.
> > 
> > Despite the similar preconditions, these are very different
> > microarchitectural behaviours between vendors.
> > 
> > On AMD CPUs, Retbleed is one specific instance of a more general
> > microarchitectural behaviour called Branch Type Confusion.  AMD have
> > assigned CVE-2022-23816 (Retbleed) and CVE-2022-23825 (Branch Type
> > Confusion).
> > 
> > For more details, see:
> >   https://www.amd.com/en/corporate/product-security/bulletin/amd-sb-1037
> 
> Is it confirmed that AMD is not using CVE-2022-29900? The above
> amd-sb-1037 references as well both CVE-2022-23825 (Branch Type
> Confusion) and CVE-2022-29900 (RETbleed), so I assume they agreed to
> use CVE-2022-29900 for retbleed?
> 
> So should the Xen advisory as well use CVE-2022-23825,CVE-2022-29900
> and CVE-2022-29901?

Nevermind, I missunderstood the wording and the advisory just mentions
all the related CVEs correctly and made a thinko. It might turn out
that CVE-2022-23816 will not be used, but then the title would read
only as 

Xen Security Advisory CVE-2022-23825,CVE-2022-29900 / XSA-407

So please disregard the question above.

Salvatore
