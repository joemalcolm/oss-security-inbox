X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1452" "Wednesday" "21" "October" "2015" "23:09:16" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3ii2MXgtpxVx0w-Vqd+yVSppauA8Qt4xFa7+uKddybSg@mail.gmail.com>" "47" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015102205:09:16" "[oss-security] Prime example of a can of worms" (number mark "        kseifried@re Oct 21   47/1452  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<562869CF.3060106@internot.info>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<20151021170113.128d3a8e@silentmaxx>" "<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>" "<562869CF.3060106@internot.info>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22208 invoked by uid 550); 22 Oct 2015 05:09:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22167 invoked from network); 22 Oct 2015 05:09:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat_com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=7lSgKPiNQSbaIpVRsOsrCsPlf0+Vyuje1onwhSg9E8U=;
        b=T+1TkbRxQ4WfQzwSXZbZLpSP+S0hsSv/rMp4gouEDkqpzFWTvhSmjNYT8NT1cFD657
         k3PR/I4W0Ub1yWp0fLvpeYecTEgw7ohA2E/sFN9FGVJ3hNYpotuG/uKgpXWJIYhdpTew
         EbyffWsBnZyfZqf/2GI43ngnQtpppoGmkVEaATAJJChowJ0yWNsaxsRwnA9PIUOcSc7Y
         T5PiBdGU5rbdpsuzHAeKm2jSemuZqMKKFnU5mqPVCeMcpkWnK9opLhWaY7WBwF9Ry8rZ
         JE/L80YSpALFO8PEwUC21FhfbasS3wI+1v+iSSS5cvz+6ZBKps36arNtnuiIwMzRvcPw
         HBgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=7lSgKPiNQSbaIpVRsOsrCsPlf0+Vyuje1onwhSg9E8U=;
        b=exku29oGQBSSltFVP4mSqg+ZSswkasJQwn5zxXGIQ41BSQW4ifFUPn/hpbm+njDYVR
         Sjzh7OGgmou6Dqy73Dii1rqyHohgzu5Pxqi3hL4l13Tz0uFrfTyWddX352n+JMq/nJ8t
         me7GGkU1J5qEBvAKhm/4YKPMUuDzzMPOsXcPS2s7GEjW9dJceC4AW8lLRWoDuJuMO/xh
         SGxDZ/yDG3+9gwtkBajEoFrxJqedS4HvRd2F7ryGex4zmTjpxAM4V8W82KrnwTBujmyO
         7GpwQtntQ7h66buqWgwZqHjhIlWV6qcuQE/quxf/JLzm7ZCHsQ/PmLI0VFiY7dibfOVP
         t/iA==
X-Gm-Message-State: ALoCoQlQG18+CyWcS03mAZ6/1HcAMHI2GyhQ+IImnKlH53CqE8pRml0erRYz4n63D1dO0oDVEXDN
MIME-Version: 1.0
X-Received: by 10.13.204.65 with SMTP id o62mr4186256ywd.303.1445490556763;
 Wed, 21 Oct 2015 22:09:16 -0700 (PDT)
In-Reply-To: <562869CF.3060106@internot.info>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
	<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
	<20151019193411.GA15710@hunt>
	<87eggqmta9.fsf@alice.fifthhorseman.net>
	<20151021170113.128d3a8e@silentmaxx>
	<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>
	<562869CF.3060106@internot.info>
Message-ID: <CANO=Ty3ii2MXgtpxVx0w-Vqd+yVSppauA8Qt4xFa7+uKddybSg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114f275629bfec0522aa7f40
Date: Wed, 21 Oct 2015 23:09:16 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security <oss-security@lists.openwall.com>

--001a114f275629bfec0522aa7f40
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 21, 2015 at 10:45 PM, Joshua Rogers <oss@internot.info> wrote:

> On 22/10/15 15:27, Kurt Seifried wrote:
> > Ideally we'd like
> > to see people using different primes (e.g. hardware manufacturers not
> using
> > the same primes as everyone else) and where possible people needing more
> > security (e.g. a VPN hosting provider) should generate their own keys
> > securely.
> Could it be possible to generate a new prime in the background, and when
> it has been generated, on the next reboot use that one instead? And if
> there is not enough time for the new prime to be generated, it falls
> back to the old one?
>
> I agree that manufacturers should be using a different prime per, at
> least, batch of products.
>
>
My fear would be device makers getting it horribly wrong on the devices in
question. E.g.:

http://www.theregister.co.uk/2015/10/21/german_govt_mulls_security_tests_of_sohopeless_routers/

Having a large pool of known good primes would be easier for them to use I
suspect. Sadly we can't let perfect be the enemy of the good, or in this
case the "not completely terrible".


>
> Thanks,
> --
> -- Joshua Rogers <https://internot.info/>
>
>


-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114f275629bfec0522aa7f40--
