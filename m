X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1701" "Monday" "19" "October" "2015" "14:49:55" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2oadzojzOgaYEGKJUC9HoKeLdGHfKyVjipUHJXFSpapg@mail.gmail.com>" "48" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015101920:49:55" "[oss-security] Prime example of a can of worms" (number mark "        kseifried@re Oct 19   48/1701  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<20151019193411.GA15710@hunt>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17420 invoked by uid 550); 19 Oct 2015 20:50:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16377 invoked from network); 19 Oct 2015 20:50:06 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=JvrNReD3iJR9KoFUwv+ILF1qFul/+YPi5szbycmKY/g=;
        b=gZSySHqvtP0Q2HJ5SwXJkCWC186WsZdQjxtIO9Iekyp01tiajY/JMBp6+5LjxmZvcT
         /TOcqYx4cTaYhAxOsI4Ct/PdPKhbFnglxbT3rT6D+SkkLao5xKDVhO0Spm4ITyq8wbVa
         vf/nN7iMu2BiuC1QfeXhuHXmdFXx6yRRypSmYbSZen3A5AS8sFKrsNmkiyfYLqKppPe4
         eyk+gozD59s3TyXMc0f4ZKXSDQxcPyHQNa0v3XAcK5jcTROdmUnyrZ5Pcn7T/0i5n/Ou
         nhmSmy+soadFb7cdVKtMQf1nF9cKrlbFO+GoKtuydCjI0mRtE3UlXnxvt9sGHE44rIFQ
         TmCg==
X-Gm-Message-State: ALoCoQlPqLGnI6Cgu3hukU+7LMyRqCMedqpALzOmayNvRcVELY9wjns9PZ/OKj91T35bVRUboUI8
MIME-Version: 1.0
X-Received: by 10.13.236.206 with SMTP id v197mr15721546ywe.20.1445287795240;
 Mon, 19 Oct 2015 13:49:55 -0700 (PDT)
In-Reply-To: <20151019193411.GA15710@hunt>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
	<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
	<20151019193411.GA15710@hunt>
Message-ID: <CANO=Ty2oadzojzOgaYEGKJUC9HoKeLdGHfKyVjipUHJXFSpapg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c0870f2a2749a05227b494a
Date: Mon, 19 Oct 2015 14:49:55 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security <oss-security@lists.openwall.com>

--94eb2c0870f2a2749a05227b494a
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 19, 2015 at 1:34 PM, Seth Arnold <seth.arnold@canonical.com>
wrote:
>
>
> Should there be any middle-ground for how much use a specific value gets?
> Part of the weakdh gift is the reconition that randomly generated 1024 bit
> primes might be fine for one router or website to use but is terrible when
> used by millions and might repay the cost to crack it.
>

I would say applying similar rules as encryption, e.g. strong encryption
for file encryption and weaker crypto may be ok for e.g. session data.
Where those dials get set is currently anyones guess (since we have no real
public data to support decisions strongly).


>
> Do we allow 1024-bit dhparams when they are randomly generated? Or do we
> also want to move these to e.g. 2048 out of abundance of caution?
>
> (I don't share Kurt's pessimism on generating DH primes, though that does
> come with the caveat that they should only be generated on systems that
> have been running long enough to collect enough entropy for random number
> generation to work well.)
>
> Thanks
>

It's not as easy as that. Assuming people follow
http://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.186-4.pdf and get it
correct (and optionally certified) then yes it is "not hard" but one thing
that continues to worry me:

We have AFAIK no good test suites to ensure random numbers/primes are
cryptographically secure.

If we did we wouldn't have issues like CVE-2008-0166.


--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c0870f2a2749a05227b494a--
