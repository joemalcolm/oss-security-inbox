X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1869" "Thursday" "22" "October" "2015" "17:37:49" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3BGrXMkocF2Vp-wXJVE_oo5K4dSA4+H-son_dzuMo4ZQ@mail.gmail.com>" "46" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015102223:37:49" "[oss-security] Prime example of a can of worms" (number mark "        kseifried@re Oct 22   46/1869  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<8737x2bjjp.fsf@alice.fifthhorseman.net>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<20151021170113.128d3a8e@silentmaxx>" "<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>" "<562869CF.3060106@internot.info>" "<CANO=Ty3ii2MXgtpxVx0w-Vqd+yVSppauA8Qt4xFa7+uKddybSg@mail.gmail.com>" "<8737x2bjjp.fsf@alice.fifthhorseman.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30175 invoked by uid 550); 22 Oct 2015 23:38:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30124 invoked from network); 22 Oct 2015 23:38:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat_com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=MbSm1Wck8AqLFrCBFbOQkOEg8tZ+yUiSTOyCyYyLXVc=;
        b=Ap7FoS3zBN63aamTgZ7LlKR3bfYMAj66oHEJJ/3i6aJ8RZ8yKSmTIcmE+cLCGl6dzM
         aeR05z/h5cpYz6iV4i5yhtmJIX9L/TkAwnfKiRTSWaM177mAoHQiCf5FpCUtGiH2Bilr
         i9N7L9sZGv/hiJDCLKVZ6ffhhWHqs8Hmz0fQ36c2T+ZCS6ny0XfA6cwhogcsjXdkCn0E
         c5wpjlanu4bSKOWQ9v/M7t9/T+SA0Q5dQ1mtULQQdOK78d9LbZFYH1Qr32zY/puSLfAW
         aWYWIJYkk1TJ6LEZLyYprF9kPdencPzLN+V2Ls5/0PyxrXA96UBolSXLabuErri+VzCd
         F6Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=MbSm1Wck8AqLFrCBFbOQkOEg8tZ+yUiSTOyCyYyLXVc=;
        b=JYgchI4l5+V0Zbi4uhWqeJkUSDtwXBJSe3Vo9T3puvuo5IdUxq8b++D2ODFbe2VaAZ
         DptGqbt932eoTJNnDyabfj6NpG1nPevx4IhfNl9x7OYwz1Rwo34XfEQgAWFTTAiwKF8L
         7K0+fOTFZbjVWle9JxS4ih4RI2Hpn4PIx+mNERBLQn7LUe4u1dmy9kXZAptbRhtUXJDu
         dQBwWswQFtSVnZN73/biqTxU7Z+pMl6zKROJRGyfgjXxYnLbqm4AJzlC10S+I+dvPkRa
         X3yg78ARdF3XbBlNBFqtR2sS/rYKxEzA4XnyZ8WVLOg+pmA7lvYqsa5YohHohm8itBPf
         ROLA==
X-Gm-Message-State: ALoCoQnYDNz1eDNV33Ea30lgVM+BFAlfwkAfu9oT7GMTd0W0ab2G57wpm/CtLKNBfc/szpM+9bHJ
MIME-Version: 1.0
X-Received: by 10.13.236.206 with SMTP id v197mr13566189ywe.20.1445557069646;
 Thu, 22 Oct 2015 16:37:49 -0700 (PDT)
In-Reply-To: <8737x2bjjp.fsf@alice.fifthhorseman.net>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
	<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
	<20151019193411.GA15710@hunt>
	<87eggqmta9.fsf@alice.fifthhorseman.net>
	<20151021170113.128d3a8e@silentmaxx>
	<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>
	<562869CF.3060106@internot.info>
	<CANO=Ty3ii2MXgtpxVx0w-Vqd+yVSppauA8Qt4xFa7+uKddybSg@mail.gmail.com>
	<8737x2bjjp.fsf@alice.fifthhorseman.net>
Message-ID: <CANO=Ty3BGrXMkocF2Vp-wXJVE_oo5K4dSA4+H-son_dzuMo4ZQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c0870f2a3c92b0522b9fb76
Cc: oss-security <oss-security@lists.openwall.com>
Date: Thu, 22 Oct 2015 17:37:49 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: Daniel Kahn Gillmor <dkg@fifthhorseman.net>

--94eb2c0870f2a3c92b0522b9fb76
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 22, 2015 at 4:55 PM, Daniel Kahn Gillmor <dkg@fifthhorseman.net>
wrote:

> On Thu 2015-10-22 01:09:16 -0400, Kurt Seifried wrote:
> > Having a large pool of known good primes would be easier for them to use
> I
> > suspect. Sadly we can't let perfect be the enemy of the good, or in this
> > case the "not completely terrible".
>
> a large pool of known-good primes doesn't help so much, particularly for
> the embedded case -- peers that are offered a group need to be able to
> easily verify that the group is strong.  embedded devices simply aren't
> going to carry around a large list of well-vetted primes of short
> length, but we could *maybe* convince them to carry around a shorter
> list of well-vetted strong primes.
>
> I'd rather see us increase the security margin for a set of well-vetted
> standard groups than ask people to make implementations that can't
> determine whether they're in a reasonable group or not.
>
>      --dkg
>

Sorry when I said a "large" pool I meant more then the current 5 or so that
seem to be in popular use, but certainly not more than a few hundred.

Basically we're in agreement, I think nothing under 2048 should even be
considered, and we probably need to bump that up in a few years anyways.

I've also been going through source code to see how people use dh
params/treat them, and I have some worrying results (basically what I
expected though, everything is terrible as usual)

I'm going to be writing this up as an article rather than a long email as I
have a few more sticky points to raise (security rabbit holes are so much
fun).

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c0870f2a3c92b0522b9fb76--
