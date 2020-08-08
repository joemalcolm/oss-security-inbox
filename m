X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1103" "Saturday" "8" "August" "2020" "14:17:04" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8mYOYPtSBf4Zd8oo=NKZiO2wbi6OdyTUZaBWBn5ONGuPg@mail.gmail.com>" "27" "Re: [oss-security] Voiding CVE-2020-16248" "^Cc:" nil nil "8" "2020080818:17:04" "[oss-security] Voiding CVE-2020-16248" (number mark "        noloader@gma Aug  8   27/1103  " thread-indent "\"Re: [oss-security] Voiding CVE-2020-16248\"\n") "<20200808152144.j5fatn23s6tgncsb@shell.thinkmo.de>" ("<CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>" "<20200808152144.j5fatn23s6tgncsb@shell.thinkmo.de>") nil nil nil nil nil nil nil "Re: [oss-security] Voiding CVE-2020-16248" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32510 invoked by uid 550); 8 Aug 2020 18:17:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32492 invoked from network); 8 Aug 2020 18:17:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=LNLXfYpUIf/uLdmV+gTZEydhN8Din4PZCd+SseqIs5g=;
        b=GOLkwR0xsvniDaOjoWTTTCDoqN5pxHARi2j223/i+TvhQq0TktJowiSVt5GgZmiIIe
         p6FkKL+sk88IKWUIFO8/igEO857CZQShfvKapb4zAKrp/5MIPHVdj8b1bBTeiLzLQFHf
         CAGXfIEg6krruW2M4ilVMVG4Qjx6JxPzGVAa0UMJBOlUMCcTWlwhE8G4ndTSQ+12qrBY
         jMneCDKzFLZzaWDwsUEZQu0Qn/7I858kdWtq4CMryth9MqaDbQhcfYSeFhm55C1QPTwZ
         1cik9vOiuKCKCBDRn2yrqjjR1qqBhfQ/adn9wlOpnXfuwdDjNb/TtOYVhsZO5kpD6DWX
         4Hig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=LNLXfYpUIf/uLdmV+gTZEydhN8Din4PZCd+SseqIs5g=;
        b=QMjCtcYrJ3nVreoci6j22BG6BD3gtascIiwTNYBmhaLVvg9ibt0Oln98RVz+r02rHM
         Vao3842Lxj+TcU+l7SrrQC9yDsF0fA4oRBlPbe7ViNTlSWN4ZYmmN4lFBZ5DFuTl30fT
         HspES5AUi+vtmiUUyanmkRXE46bBtCdWShZzANPH0rOelQsKUvq/4/h3jgNNEVXKa33f
         ai2SOVjgMovy0t4/L+aTNsEw7BwZYXu4rtuwpx60RDGaNJ6w/W8lB14o3Qf6Fxq8PJW0
         yesyTkdEz9htXeTAwusGSBCViKTqNLg+zVcAyJR05MbGaknLVxcnaru9IBQhNC759FdA
         pYPA==
X-Gm-Message-State: AOAM5328dPKXuX7iVz22AmzZhDS8ZSCPG9tjiASjwYGgrK8Iv0ml9W2d
	guvuSLNku8Yr4FWF42+PAKDyGt+VQdTAoHfyRGkVV7H4mgk=
X-Google-Smtp-Source: ABdhPJwIVXmiTRupNM/FaweQj2OZbqz3q8Qc4rTNInLS4MQ5hp7ajYO8EbcQklLaseaSBN/U+w7LprDKRpTMQIuBoAg=
X-Received: by 2002:a05:6638:2162:: with SMTP id p2mr11670409jak.17.1596910635141;
 Sat, 08 Aug 2020 11:17:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>
 <20200808152144.j5fatn23s6tgncsb@shell.thinkmo.de>
In-Reply-To: <20200808152144.j5fatn23s6tgncsb@shell.thinkmo.de>
Message-ID: <CAH8yC8mYOYPtSBf4Zd8oo=NKZiO2wbi6OdyTUZaBWBn5ONGuPg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: oss-security@lists.openwall.com
Date: Sat, 8 Aug 2020 14:17:04 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Voiding CVE-2020-16248
To: Bastian Blank <bblank@thinkmo.de>

On Sat, Aug 8, 2020 at 1:46 PM Bastian Blank <bblank@thinkmo.de> wrote:
>
> Hi Richard
>
> On Sat, Aug 08, 2020 at 10:49:14AM +0200, Richard Hartmann wrote:
> > the Prometheus project[1] has received a public "vulnerability"
> > report[2] against what the reporter called SSRF, but what is the core
> > functionality of blackbox_exporter[3]: The ability to trigger network
> > probes over the network to monitor a target's availability.
>
> Could you please explain yourself why you think this is not a
> vulnerability?  Even wanted functuality can constitute a vulnerability
> if looked on closer.
>
> The software allows to send pre-defined requests to arbitrary targets
> and extract at least parts of the response.  This is a typical SSRF.
> Would you require to specify the allowed targets, noone would ask.

ICMP and the root user requirement makes blackbox_exporter a good target.

It also looks like a confused deputy to me, which also makes it a
privilege escalation.

Naively, it looks like a feature that provides an attacker
reconnaissance capabilities and allows network enumeration.

Jeff
