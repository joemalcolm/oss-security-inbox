X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["480" "Thursday" "27" "October" "2016" "10:39:01" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20161027083901.GA10554@lorien.valinor.li>" "17" "Re: [oss-security] Re: Handful of libass issues" nil nil nil "10" "2016102708:39:01" "[oss-security] Re: Handful of libass issues" (number mark "U       carnil@debia Oct 27   17/480   " thread-indent "\"Re: [oss-security] Re: Handful of libass issues\"\n") "<20161005022322.18575ABC00D@smtpvmsrv1.mitre.org>" ("<BE57ECE4-C327-4C99-993B-D8C96A8E6465@gmail.com>" "<20161005022322.18575ABC00D@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9401 invoked by uid 550); 27 Oct 2016 08:39:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9383 invoked from network); 27 Oct 2016 08:39:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ob0xmZ0da0/W9IPLuIP2P3f9CQ+0Df/Tq6TlvnGgAf4=;
        b=pctL+q94z5+EdtdVaD6GjmGfuO2mJBC7L6Zn9IPQOedUqz3CoJnv8Jq0EtbDyZWHVS
         ys9WFKmIJc1jEMV3Icdac/H9olpOeWQcp0sgv8ma895YYpuJjlvg7H87CIrbhHk1ZHxt
         Ave2f+vMKGPTgE5JfaqpGd0Xt5DgTTFvEBPulV5jc4lbO8nA/vktPziHtnsP29X3xbFC
         onQj4K2uG8vzvvvwWuc41J5Vqgt4355k0Mg++wkCl1ca6Pa2c66aXzGG4vvpEsEeppIN
         SgpIoJgQZg2LAr3hdP4oBAOZTqOQBHKbdoc1TmhaX5SZEUVL+fWvoJOycT3u1tSSvKcZ
         kkGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ob0xmZ0da0/W9IPLuIP2P3f9CQ+0Df/Tq6TlvnGgAf4=;
        b=kfoJcmtiKW+6qAqlcJJffmmJyCoi1boDmvyoGRUUjAQVgIj9IJDu9nYdUvVg53Usar
         jttKoby22ndxgupYTOLeu5LfPws3JCjxH4LeZggI8hTRWvkD/CfZFkT8ObP7ReTV8ELm
         l7QY9bWFu4HbuxRKXJQB+JbvlC7Poi3//Km3JVGRx+Y9daESoce76CQZDf+z/8ItQmq2
         2v9fi94o0bbPysj+Cifpnml/3OvK7/ADWmtOZH806igBQOGcwMxmbAfDG/Ayk0TLvdlA
         4fJezMSM5D5vcA4j+tCrbWt3ONRFMu4H374NNSH/kz5jmrLxqFYAhxWwarCUo/uIXQPy
         /G2A==
X-Gm-Message-State: ABUngvdCBL+5qZLHXd2IVhuQUnNXs+OVeRSfTO2j6HYyBjv7NDvtfhwXf1qP4gnHw9usWw==
X-Received: by 10.55.24.132 with SMTP id 4mr5104240qky.218.1477557545631;
        Thu, 27 Oct 2016 01:39:05 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 27 Oct 2016 10:39:01 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: bperry.volatile@gmail.com, cve-assign@mitre.org
Message-ID: <20161027083901.GA10554@lorien.valinor.li>
References: <BE57ECE4-C327-4C99-993B-D8C96A8E6465@gmail.com>
 <20161005022322.18575ABC00D@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161005022322.18575ABC00D@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] Re: Handful of libass issues

Hi,

On Tue, Oct 04, 2016 at 10:23:22PM -0400, cve-assign@mitre.org wrote:
> > The third is a huge memory allocation leading to a crash that wasn't
> > fixed because a good solution is unavailable at the moment.
> 
> Use CVE-2016-7971.

It looks from the discussion in
https://github.com/libass/libass/pull/240 that this issue is disputed
to be actually in libass.

Should the CVE assignment be revisited, possibly rejected, according
the upstream discussion?

Regards,
Salvatore
