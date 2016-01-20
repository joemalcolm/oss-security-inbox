X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["615" "Wednesday" "20" "January" "2016" "08:45:07" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>" "18" "Re: [oss-security] Prime example of a can of worms" "^Date:" nil nil "1" "2016012015:45:07" "[oss-security] Prime example of a can of worms" (number mark "U       kseifried@re Jan 20   18/615   " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<20151023145631.GA21048@gremlin.ru>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<20151021170113.128d3a8e@silentmaxx>" "<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>" "<20151023145631.GA21048@gremlin.ru>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27995 invoked by uid 550); 20 Jan 2016 15:45:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27975 invoked from network); 20 Jan 2016 15:45:19 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=Ar0kkXEoAiRt1KNayw++l07bkYTJ5bAypfg4Pr/CA8U=;
        b=BpttW01+/qHQ4fMsWPPI2lUcu/1yruUo4h8yTNgKDvokaUiVqNO5V7mGpf5mI/lBJc
         K5zJs3rqgFoNYiLRgHzjWq0Ig3bhXBT7RzGFqjjFqU9aZO6n2EX7cW9VQMKY562fJ5OH
         rXMbIO5b5unfE3r0PxBoV2QeiZIzZ04q4XiBtZgVow0KBSs6Qv6yVCkCNn91x/i68eH1
         jQ8LjlhuAFVGw/m2yhglzh3ai20n5PYC+7y4fA572sMzt/6j7xts7Eiu2GJ7SMVICtC/
         SV+ztiCHsNBW9PSFQ/56MkEETlsMHfse/r5hZSv52hRZKDs6/ujMXZhkAI97uuGNM2Nx
         n7tw==
X-Gm-Message-State: ALoCoQlipfw4RSgChLF+LtMqk5fPuAVU6ewIMeDDP3MtUh5VI7CrNgiVMjFxPTpW4KN200yjC0Qu2/lXcsbnMINfH9qvHXsjLslIutOubwBBNKfJHiwL2kA=
MIME-Version: 1.0
X-Received: by 10.37.29.194 with SMTP id d185mr11205569ybd.109.1453304707619;
 Wed, 20 Jan 2016 07:45:07 -0800 (PST)
In-Reply-To: <20151023145631.GA21048@gremlin.ru>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
	<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
	<20151019193411.GA15710@hunt>
	<87eggqmta9.fsf@alice.fifthhorseman.net>
	<20151021170113.128d3a8e@silentmaxx>
	<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>
	<20151023145631.GA21048@gremlin.ru>
Message-ID: <CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11428d0ed959f80529c5de8d
Date: Wed, 20 Jan 2016 08:45:07 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security <oss-security@lists.openwall.com>

--001a11428d0ed959f80529c5de8d
Content-Type: text/plain; charset=UTF-8

I finally got the article written and published, it's at:

https://securityblog.redhat.com/2016/01/20/primes-parameters-and-moduli/

TL;DR: I found a lot of messy problems and no really good solutions. But
ultimately we need to start using bigger keys/primes or this is all just a
waste of compute time (might as well go back to clear text).


--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11428d0ed959f80529c5de8d--
