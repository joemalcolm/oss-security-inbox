X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2104" "Monday" "19" "October" "2015" "22:16:19" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2ffi_iLEzRzX4rBi-7xLg8p8BmbfxZZVPZdh1ORmPFsw@mail.gmail.com>" "57" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015102004:16:19" "[oss-security] Prime example of a can of worms" (number mark "        kseifried@re Oct 19   57/2104  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<87eggqmta9.fsf@alice.fifthhorseman.net>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5492 invoked by uid 550); 20 Oct 2015 04:16:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5474 invoked from network); 20 Oct 2015 04:16:31 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=e5s6kmd0IuUecYrRZzI+P3gKA5QxpyEAum22n249McE=;
        b=TJjcvf/ZolVX9qFwdompKTLPd35dYTLOY5AGj3NEVlGua/lOrl+H0MPGGmU8kziOWk
         dZjinPvPqgYQJndX2WfgfPneh8jHfsE0WdkAGnv8x5qUObg+q3/fKWxgivxRG8LO2Wlw
         eeKWXLMTLYSSaw+kPX4a+PEcgUtHGMQ3X1dqLG2ty+RiiP/y0Y9Wmn1wb5m3l50gNzWB
         8GzK7aslsMq0CMOobj08+E93naztj+bz8Y2KUeCwcw7dXjFsYQbhkfFcfCgo821U3RAV
         2vRJPGhzgLHk7Vo893psp+ngZxifNZ1knpVvDObPGwv+iPP7iIxXwHosAm9F+6m2whSf
         I3SQ==
X-Gm-Message-State: ALoCoQkXQEZFA4MylVNJV2DWk9xzkB6cTJCmbYll7a2LAXIs0CfY40/aOiHaEHanHLNolxiWz9PI
MIME-Version: 1.0
X-Received: by 10.129.125.212 with SMTP id y203mr645464ywc.182.1445314579472;
 Mon, 19 Oct 2015 21:16:19 -0700 (PDT)
In-Reply-To: <87eggqmta9.fsf@alice.fifthhorseman.net>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
	<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
	<20151019193411.GA15710@hunt>
	<87eggqmta9.fsf@alice.fifthhorseman.net>
Message-ID: <CANO=Ty2ffi_iLEzRzX4rBi-7xLg8p8BmbfxZZVPZdh1ORmPFsw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1149262c196d9f0522818665
Cc: Seth Arnold <seth.arnold@canonical.com>
Date: Mon, 19 Oct 2015 22:16:19 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security <oss-security@lists.openwall.com>

--001a1149262c196d9f0522818665
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 19, 2015 at 3:40 PM, Daniel Kahn Gillmor <dkg@fifthhorseman.net>
wrote:
>
> On the flip side, saying "use only strong (>=2048bit today in 2015?),
> well-known, well-structured, publicly-vetted groups" is very simple
> guidance: clear and easy to follow.
>
> A move to well-known, large safe primes seems simpler/saner than trying
> to work with an environment where peers are generating new primes which
> may or may not be well-formed.  (similarly, we're converging on a world
> where there are a few trusted, well-vetted, well-optimized DH groups for
> elliptic curve DH, because encouraging arbitrary ECDH groups ends up
> being sketchier for everyone)
>
>       --dkg
>

So it occurs to me that we have no corpus of data on Diffie Helman primes.
With this in mind I would like to create one. Openssl command line can
easily create them, using either the 2 (default) or 5 generator (explained
at
http://security.stackexchange.com/questions/54359/what-is-the-difference-between-diffie-hellman-generator-2-and-5
)

For example the following code:

#!/bin/bash
for i in `seq 1 100`;
do
    openssl dhparam 2048 -text >> $i
done

will generate 100 2048 bit primes. If you can ideally simply commit the
files to the following github repo:

https://github.com/RedHatProductSecurity/Diffie-Hellman-Primes/

simply create a directory in the root with your name/whatever you want to
call it (nothing rude please) and have a "2048" directory for the 2048 bit
primes and a "4096" directory for the 4096 bit primes I would appreciate
it. If you use a tool other than OpenSSL command line to generate the
primes please make a note of it (especially any command line options used)
in a .txt file in the root of your data directory. My goal is to collect a
few million primes of each size so we have some real data to work with.




--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a1149262c196d9f0522818665--
