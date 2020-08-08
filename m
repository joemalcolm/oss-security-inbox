X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2459" "Saturday" "8" "August" "2020" "12:20:52" "+0200" "Julien Pivotto" "roidelapluie@prometheus.io" "<20200808102052.GA376865@oxygen>" "60" "[oss-security] Re: [prometheus-team] Voiding CVE-2020-16248" "^Cc:" nil nil "8" "2020080810:20:52" "[oss-security] Re: [prometheus-team] Voiding CVE-2020-16248" (number mark "        roidelapluie Aug  8   60/2459  " thread-indent "\"[oss-security] Re: [prometheus-team] Voiding CVE-2020-16248\"\n") "<CAMssQwbxY-LY1FmuZUeLEp2etkj6poQc+MVzL-ah=XoF2vptSg@mail.gmail.com>" ("<CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>" "<CAMssQwbxY-LY1FmuZUeLEp2etkj6poQc+MVzL-ah=XoF2vptSg@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: [prometheus-team] Voiding CVE-2020-16248" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15647 invoked by uid 550); 8 Aug 2020 12:40:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22473 invoked from network); 8 Aug 2020 10:21:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=prometheus-io.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=rYtkg/yvFyaCemBC/uk60Ec09NhUdmgYTA9CwoCjmlE=;
        b=ETCB3nHVBHw8Ngv7H0M7cJmjhGPi2IyLwO2ZN1DvP7+6votzMS6fHb+0xB1e6V65Q8
         AgGXpUmlSb5DT/kSkfJE5g83BLqS4drHmJ7glaHKSSIA+RLNQ/dirNfQYn18Mdl+3Jj/
         kVXT24Hck9sqzDpFX/xG0eEQmlhGqFHI4M+wjWtoZJdGcaBz6I+AdxOK2bNs6aHim4ff
         McSUtf3bD6af2J1EiBMc0ziUV4cmjobHS7Y2+QnQOV9kOeTfMgSAWlwM2JdgzmCxBC7r
         QaVbPay1dD1Z+wcr6knU4usXHHgSYG+wmUqow3BLKvQFvPcAeuF3To3nCf27jO9BGj4g
         zaVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=rYtkg/yvFyaCemBC/uk60Ec09NhUdmgYTA9CwoCjmlE=;
        b=jBK2zU2KNmTfCiuZkvzkwtYVFoPGMwKPinXbIY5Es6LHxEGyPEcOep1Zb5ncMvQhiu
         C2vwpeUwDxoMww/8Qtm5+vCmx3iu8K6fTRu1Zs2S/8EH59cMqAW5gYLwf7KFyl0I4rlQ
         /k4ioVS0hSVvFHBx9UbpZBPF91+1IbtDSCgXrBltw8GdXoWYVwFvB++zP5ehgYs9644K
         qHuModq2y8H/wtOisw3HPnO+4agOD3lwyRlQFXwoa60/rlzhSlUt5z3ANQF5WhELdGWK
         7Puvpn3F/LdlKCnsjQObjg64LLcD4fJNsK12VpqsvuDy2zrhJXcaYvmE2O6AEFonE9iP
         HtEw==
X-Gm-Message-State: AOAM531OlidUVbJcSxeV9o25Gw91itnLKm9Krgg7slRcTTwlY76fhTaf
	hNpFp6VEdNl49RMKYUv3u7pZXw==
X-Google-Smtp-Source: ABdhPJygG572b3etskuWA4zCeMjGi5oEeUdoFyHjM71kF+bzW9U4syfhWMsBZ7AqdychA/+tqRilpw==
X-Received: by 2002:adf:cd12:: with SMTP id w18mr16335063wrm.352.1596882054217;
        Sat, 08 Aug 2020 03:20:54 -0700 (PDT)
Message-ID: <20200808102052.GA376865@oxygen>
Mail-Followup-To: =?utf-8?Q?Bart=C5=82omiej_P=C5=82otka?= <bwplotka@gmail.com>,
	Richard Hartmann <richih.mailinglist@gmail.com>,
	oss-security@lists.openwall.com,
	PrometheusMonitoring <prometheus-team@googlegroups.com>,
	Prometheus Developers <prometheus-developers@googlegroups.com>
References: <CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>
 <CAMssQwbxY-LY1FmuZUeLEp2etkj6poQc+MVzL-ah=XoF2vptSg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMssQwbxY-LY1FmuZUeLEp2etkj6poQc+MVzL-ah=XoF2vptSg@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
Cc: Richard Hartmann <richih.mailinglist@gmail.com>,
	oss-security@lists.openwall.com,
	PrometheusMonitoring <prometheus-team@googlegroups.com>,
	Prometheus Developers <prometheus-developers@googlegroups.com>
Date: Sat, 8 Aug 2020 12:20:52 +0200
From: Julien Pivotto <roidelapluie@prometheus.io>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [prometheus-team] Voiding CVE-2020-16248
To: =?utf-8?Q?Bart=C5=82omiej_P=C5=82otka?= <bwplotka@gmail.com>

On 08 Aug 11:16, Bartłomiej Płotka wrote:
> Thanks for this work Richi, this is quite... interesting that someone might
> mark core functionality as CVE.

That is not that crazy. You could "ddos" someone and hide your own IP
address.

> 
> Kind Regards,
> Bartek
> 
> On Sat, 8 Aug 2020 at 09:49, Richard Hartmann <richih.mailinglist@gmail.com>
> wrote:
> 
> > Dear all,
> >
> > the Prometheus project[1] has received a public "vulnerability"
> > report[2] against what the reporter called SSRF, but what is the core
> > functionality of blackbox_exporter[3]: The ability to trigger network
> > probes over the network to monitor a target's availability. The
> > reporter stated that CVE-2020-16248 has been assigned. From context,
> > it seems to be a paid assessment of our software for an unnamed client
> > which increases motivation to get "results", in particular CVEs for
> > "zero days" - which are then promptly reported publicly with an
> > embargoed CVE.
> >
> > The reporter has not replied to our statement that this behaviour is
> > core functionality. I could not find out which organization has
> > reserved CVE-2020-16248 so I decided to send email to this list to
> > inform the organization, enabling them to update their records.
> >
> > Sorry for using this list for that purpose, I could not find a less
> > wrong place to inform the (hopefully) interested parties.
> >
> >
> > Best,
> > Richard
> >
> > [1] https://prometheus.io/
> > [2] https://github.com/prometheus/blackbox_exporter/issues/669
> > [3] https://github.com/prometheus/blackbox_exporter
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> > "Prometheus Team" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to prometheus-team+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> > https://groups.google.com/d/msgid/prometheus-team/CAD77%2BgR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8%2B8_%2Bdbw%40mail.gmail.com
> > .
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Prometheus Team" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to prometheus-team+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/prometheus-team/CAMssQwbxY-LY1FmuZUeLEp2etkj6poQc%2BMVzL-ah%3DXoF2vptSg%40mail.gmail.com.

-- 
Julien Pivotto
@roidelapluie
