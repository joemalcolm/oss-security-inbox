X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2639" "Wednesday" "21" "October" "2015" "22:27:33" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>" "70" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015102204:27:33" "[oss-security] Prime example of a can of worms" (number mark "        kseifried@re Oct 21   70/2639  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<20151021170113.128d3a8e@silentmaxx>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<20151021170113.128d3a8e@silentmaxx>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19926 invoked by uid 550); 22 Oct 2015 04:27:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19908 invoked from network); 22 Oct 2015 04:27:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat_com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=aynFaLprCIybcsxZhej3cwuKrYuV7C/58ZEhdi2rOII=;
        b=ZDrPOee2x6/zrwuTLJ2cYBfPYXsidVNEK9eY0yQKVpkCdBZhG3iWkhFT/mPuqjHMRY
         eGb9upsfIzM2H6fhn0zZrBm/2kG0BEW6xAFqUI0naR4z9icxgWDwrGg4AhvhouB0sHMZ
         tzfuloTl0F7Q+x1l0hfxZAHHPPz/FJMtobfmDXi1/VW89leht4qsRZV5SVmqaB9sA51W
         WOutbgdQ7AJzTapcbBcpY+i4Bpo6t7U3c6Bef1bZNCjav2VXsED40Vyj/+Ob6dNURbhU
         /fIhbj0od+REIsfsgyml7Nvm2hsCSVGOIqr2VTB0kZqHoBF+J7wNnU09R/NW/kIpTcZE
         stkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=aynFaLprCIybcsxZhej3cwuKrYuV7C/58ZEhdi2rOII=;
        b=e4IFkoeqPhp1W5B6Dx8+E7Rp8U/8Veo56SatiRAN5IJH0D7SbJWfq/kW8yd+PN9puW
         UGo6Q8pA2rwfwtZ3RgMBCyKAJqkDeHFoy3WclqMhlzMFR4ddsI+PJAFdtQUYRn03xSOU
         4xijvcfzOofxaJ0ahR9A/59B89qmZouvEr48IWkX4WUF/ekJ+wGp6xqxGben29dRvAFJ
         DmWj3Bb+gPWPR6p2T+2KSv3SQKWUD3D47bZCGIWyDM+rN8UWSm7d5TfRXx75E+3SaXWL
         KGyT3epOjF6juAwmGRlNDFpjocYIS1x+fSsS7FDNRtUkZhXI1P5HKf06TSnZVE6G4+ow
         JRvw==
X-Gm-Message-State: ALoCoQk53roTu/+4112caIDOTKc8SpPXpWFcLhq+SfiodYATIf1PsVhFgX+apa5446zIviL1Ul1g
MIME-Version: 1.0
X-Received: by 10.129.0.8 with SMTP id 8mr10570201ywa.218.1445488053627; Wed,
 21 Oct 2015 21:27:33 -0700 (PDT)
In-Reply-To: <20151021170113.128d3a8e@silentmaxx>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
	<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
	<20151019193411.GA15710@hunt>
	<87eggqmta9.fsf@alice.fifthhorseman.net>
	<20151021170113.128d3a8e@silentmaxx>
Message-ID: <CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1140c11af6e07f0522a9e94f
Date: Wed, 21 Oct 2015 22:27:33 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security <oss-security@lists.openwall.com>

--001a1140c11af6e07f0522a9e94f
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 21, 2015 at 9:01 AM, Matthias Weckbecker <
matthias@weckbecker.name> wrote:

> On Mon, 19 Oct 2015 17:40:14 -0400
> Daniel Kahn Gillmor <dkg@fifthhorseman.net> wrote:
> [...]
> > On the flip side, saying "use only strong (>=2048bit today in 2015?),
> > well-known, well-structured, publicly-vetted groups" is very simple
> > guidance: clear and easy to follow.
> >
>
> Interestingly I noticed OpenSSH bumped their 'DH_GRP_MIN' to 2048 bit
> just a few days ago to account for precomputation attacks:
>
> http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/usr.bin/ssh/dh.h.diff?
> r1=1.13&r2=1.14
>
> RFC4419 seems to recommend 1024 bit minimum, but the document appears
> to be from 2006.
>
> [...]
> >
> >       --dkg
>
> Matthias
>

So one of my initial thoughts was "easy, just have systems generate some
primes, even if we have systems with bad primes we have 10 billion unique
primes in use, good luck brute forcing that!", but then I realized I had no
idea how long this takes to generate. I generated 1000 2048bit primes on a
hardware AMD 3ghz or so system (6 cores, one dedicated  for running the
openssl prime search), they took anywhere from <1 second to just over 10
minutes,

50% in 58 seconds,
77% at 2 minutes
89% at 3 minutes
94% at 4 minutes
97.3% at 5 minutes
and the last at 10 minutes and 9 seconds

overall average was 80.9 seconds, with a good 6% taking 4-10 minutes. I
can't even begin to think how slow this would be on hardware limited
systems like $20 routers and whatnot (in theory you could have systems
taking tens of minutes), which would not be popular with consumers (turn
the unit on and wait from 0 seconds to an hour or so for the web interface
to come up!).

With this data in mind I think we need to generally encourage everyone to
go to a minimum of 2048 bit primes (which should last a few more years
assuming quantum computers don't suddenly make factorization easy) and
establish some safe methods of creating them, much like generating CA
encryption keys we need to ensure the systems/software in use are correct,
the entropy is available (and not manipulated) and so on. Ideally we'd like
to see people using different primes (e.g. hardware manufacturers not using
the same primes as everyone else) and where possible people needing more
security (e.g. a VPN hosting provider) should generate their own keys
securely.


--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a1140c11af6e07f0522a9e94f--
