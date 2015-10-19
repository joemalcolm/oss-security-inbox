X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2047" "Monday" "19" "October" "2015" "00:24:40" "-0400" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "59" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015101904:24:40" "[oss-security] Prime example of a can of worms" (number mark "        alex.gaynor@ Oct 19   59/2047  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26166 invoked by uid 550); 19 Oct 2015 04:24:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26146 invoked from network); 19 Oct 2015 04:24:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=EbF/hiKgMLNCzNFeQ32rof1J7zivPvDUg9wm3Fv7t48=;
        b=Gux41OGDoec2njZnWfsPWKkpjodMJxt1oJgqVVzlP2f/9G2B3Bm8DOeaLAlP2tglMw
         Pd1z6cRb9/NUib19ekK53b7GcFc7ZMNhLp2+bGMzZygUokOL/dhWqDm5XH93Pyw+vG9j
         U/2IK7R0vWU4eC6SO0yhTZZm7ks8b+U18vofHOLaNmliSaYFonJqrlQKfu7P/n9oqqjW
         acbfMtoPGALWsQse2wcW4qf4/fNjW391oH7NUPGXnpqcVsZ7ajKLh47SYhkZ4s0WqGLr
         s3iADfas5xoMji/g645ypC1u6tsycfH0OoTwe5C0JP96lifQ92RJkI85OBdeM5BaW6hY
         pPSA==
MIME-Version: 1.0
X-Received: by 10.202.71.72 with SMTP id u69mr16371785oia.102.1445228680201;
 Sun, 18 Oct 2015 21:24:40 -0700 (PDT)
In-Reply-To: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
Message-ID: <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113e51c21a4bb605226d86db
Cc: CVE ID Requests <cve-assign@mitre.org>
Date: Mon, 19 Oct 2015 00:24:40 -0400
From: Alex Gaynor <alex.gaynor@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--001a113e51c21a4bb605226d86db
Content-Type: text/plain; charset=UTF-8

I think we can have a far simpler rule: use of DH at <= 1024 bits gets a
CVE, the same way 512-bit RSA, or DES would.

Alex

On Mon, Oct 19, 2015 at 12:06 AM, Kurt Seifried <kseifried@redhat.com>
wrote:

> So in light of:
>
> https://weakdh.org/imperfect-forward-secrecy-ccs15.pdf
>
> and
>
>
> https://www.eff.org/deeplinks/2015/10/how-to-protect-yourself-from-nsa-attacks-1024-bit-DH
>
> I would suggest we minimally have a conversation about DH prime security
> (e.g. using larger 2048 primes, and/or a better mix of primes to make
> pre-computation attacks harder). Generating good primes is not easy from
> what I've seen of several discussions, my fear would be that people try to
> fix this by finding new primes that turn out to be problematic.
>
> Secondly I would also suggest we seriously look at assigning a CVE to the
> use of suspected compromised DH primes. Despite the fact we don't have
> conclusive direct evidence (that I'm aware of, correct me if there is any
> conclusive evidence) I think in this case:
>
> 1) the attack is computationally feasible for an organization with
> sufficient funding
> 2) the benefit of such an attack far, far, FAR outweighs the cost for
> certain orgs, from the paper:
>
> A small
> number of fixed or standardized groups are used by millions
> of servers; performing precomputation for a single 1024-bit
> group would allow passive eavesdropping on 18% of popular
> HTTPS sites, and a second group would allow decryption
> of traffic to 66% of IPsec VPNs and 26% of SSH servers.
>
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> Red Hat Product Security contact: secalert@redhat.com
>



-- 
"I disapprove of what you say, but I will defend to the death your right to
say it." -- Evelyn Beatrice Hall (summarizing Voltaire)
"The people's good is the highest law." -- Cicero
GPG Key fingerprint: 125F 5C67 DFE9 4084

--001a113e51c21a4bb605226d86db--
