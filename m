X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1408" "Tuesday" "20" "October" "2015" "10:22:40" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2kaJ3cyiq=-QAoSK3+0cw9QXdnam0H3Mqx6gNHVAcKrQ@mail.gmail.com>" "32" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015102016:22:40" "[oss-security] Prime example of a can of worms" (number mark "U       kseifried@re Oct 20   32/1408  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<76804C86-B1DC-44C1-9CD8-65A9A3915EB7@shub-internet.org>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<CANO=Ty2ffi_iLEzRzX4rBi-7xLg8p8BmbfxZZVPZdh1ORmPFsw@mail.gmail.com>" "<76804C86-B1DC-44C1-9CD8-65A9A3915EB7@shub-internet.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11655 invoked by uid 550); 20 Oct 2015 16:22:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11633 invoked from network); 20 Oct 2015 16:22:52 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=VA+rGT3RqunopKTIMw0m2teb6ZM7EBTNfNN1qt+QhB0=;
        b=AJ0gF6c1zj/NZUZnE20z1JOmbLxxwW4LIhGfZdxzp6Hpbw3UKnmhf4Uw/vrBZfFQp3
         Tt2LCWgXv3MKi00VR8SLi03mmlxbdXhx9fpNQlFl9W0Fbo7MYkSLGf4NOv3UfQWWPxP4
         /Er/6SrEs2oyDLQbeHDwEjQJblfkqMNwVa5wxqT9s5eFyhessSWl0iguKhWhYOyLQCXO
         A72IPTJg1VXPi3FqHQds4N0fOhcXzmcw+skdVXZytOw94HXWqwJFgtD+b7UV5stID5Vd
         E/bbOyTcEKD6J28RmRO4LVKNgCcw03zWR3QWjmENIJ/Ozq+JjSVMwXedaRWv5gKhHs0i
         TBMQ==
X-Gm-Message-State: ALoCoQkwK0qvPqVa++ibpiSKaoQamYZ5vxTFVg31L5KoNBda4IHq/djabXA664UFIkDpSEv2yifM
MIME-Version: 1.0
X-Received: by 10.13.206.7 with SMTP id q7mr3367618ywd.47.1445358160216; Tue,
 20 Oct 2015 09:22:40 -0700 (PDT)
In-Reply-To: <76804C86-B1DC-44C1-9CD8-65A9A3915EB7@shub-internet.org>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
	<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
	<20151019193411.GA15710@hunt>
	<87eggqmta9.fsf@alice.fifthhorseman.net>
	<CANO=Ty2ffi_iLEzRzX4rBi-7xLg8p8BmbfxZZVPZdh1ORmPFsw@mail.gmail.com>
	<76804C86-B1DC-44C1-9CD8-65A9A3915EB7@shub-internet.org>
Message-ID: <CANO=Ty2kaJ3cyiq=-QAoSK3+0cw9QXdnam0H3Mqx6gNHVAcKrQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114da68ab6f66005228bab82
Date: Tue, 20 Oct 2015 10:22:40 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: oss-security <oss-security@lists.openwall.com>

--001a114da68ab6f66005228bab82
Content-Type: text/plain; charset=UTF-8

So some new questions arise:

1) in openssl does the -2/-5 option matter with respect to security? I read
http://security.stackexchange.com/questions/54359/what-is-the-difference-between-diffie-hellman-generator-2-and-5
and some other things and I have no idea if there is a real impact on
security. I bet the other tools have similar switches for which very few
people seem to understand what they actually do, and if they actually
impact security meaningfully.

2) Openssl/gnutls (and likely others) all apparently have slight variations
on how they generate/test primes. E.g.
http://nmav.gnutls.org/2011/12/generating-diffie-hellman-parameters.html
this worries me, diversity is good, but if not implemented correctly. Do
any best practices actually exist?

3) in testing for primeness how sure are we? Reading
https://en.wikipedia.org/wiki/Miller%E2%80%93Rabin_primality_test and so on
these tests are all "probably prime" but I can't find any data to show that
e.g. given this set of large primes, tested against the various traditional
primality methods, and then brute forced to confirm they are prime/not
prime, what % failed?


--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114da68ab6f66005228bab82--
