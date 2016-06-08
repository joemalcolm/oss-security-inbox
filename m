X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4172" "Wednesday" "8" "June" "2016" "17:33:35" "+0200" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com>" "117" "Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" "^Date:" nil nil "6" "2016060815:33:35" "[oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" (number mark "        gsunde.orang Jun  8  117/4172  " thread-indent "\"Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations\"\n") "<CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>" ("<20160608085431.GA4278@openwall.com>" "<CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com>" "<CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21763 invoked by uid 550); 8 Jun 2016 15:33:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21745 invoked from network); 8 Jun 2016 15:33:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=hTl2HGJI2kjB86aNFRfDFNXYqAx15o4dUJjJRdoRO44=;
        b=owg7TanSNXMoA4hfokUQ2djnlJP/lHyofkFKnkYDRaBLH83RTGkjD9xdtm87d2RUoc
         vdgjOih1h+eyM52uaU0Uj7vTefV+eItUEEyGmvp0zsk44vkTgOXOhbWF3NYKRQjXA9o4
         FaEaddGxGhma3CFIRMQSoIVbra9Ng279HpNNbQVo6a3BQKgGEaYWhWJ4eqd/KDkx5itY
         eA5amOhH1pUNWcujxxrgYNWXJa/8HZotIhRqC5hvLCEZeWl/D1h7n1wPJHlnBJNFhgEu
         Ijx4WkybmQVTc5V0hFJACYbEFa3txLZMjFq4Q44AAp0FWGDobeYNC/MmDKqVWMj6fVhp
         SJ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=hTl2HGJI2kjB86aNFRfDFNXYqAx15o4dUJjJRdoRO44=;
        b=FTx2COIxaIlvYKKQuDXhFCRUObWK5tG6bGFavTwHd9Dm8aFIh+a5Gc5ydB6xzDJX5J
         S5Uvz/Qwt2KxgC6/NLY7eJnn5QoZYGAUsJoErAcat2WVs2TGO0jP31SNMWEPDWNJ6kIe
         WU+7u6jNL//2N3BFPO42oaY3DNHNAg/JkDQNg32QXseI0+moB0ed0S/+VWsFnixcK9ZT
         jkhPtSu5PFUPBYTJdRptw8y9WWDpCPps0W/MpgBfbcatjbm8hBjFRWO38xlNHMOkhjs9
         6gbn7dA77+YCoKpr81FfFDzNVYf/31mVua8uwqwiJEMqt4dPTueiJgoPedwgmhSn8EUn
         ncZA==
X-Gm-Message-State: ALyK8tIiOhSNmTfnwG3tix9DeQzEb2AykIFEXLetBR30pVZFsQU0s/IaBoEs9HyjQJRWq8JdQtqI0m5p0GQF8w==
X-Received: by 10.157.15.230 with SMTP id m35mr3035214otd.80.1465400015659;
 Wed, 08 Jun 2016 08:33:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>
References: <20160608085431.GA4278@openwall.com> <CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com>
 <CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>
Message-ID: <CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1147246e63297f0534c60700
Date: Wed, 8 Jun 2016 17:33:35 +0200
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant
 time codepath for certain operations
To: oss-security@lists.openwall.com

--001a1147246e63297f0534c60700
Content-Type: text/plain; charset=UTF-8

... which would be a different rating to the "moderate" that the RedHat
team ended up with: https://access.redhat.com/security/cve/CVE-2016-2178
I agree that both ratings are reasonable; so still awaiting for the OpenSSL
announcement at least in the vulnerability section (
https://www.openssl.org/news/vulnerabilities.html#y2016).
(Could be that I am just too impatient ;-)

2016-06-08 17:18 GMT+02:00 Alex Gaynor <alex.gaynor@gmail.com>:

> I assume the OpenSSL team considers this vulnerability to be LOW severity:
> https://www.openssl.org/policies/secpolicy.html
>
> Alex
>
> On Wed, Jun 8, 2016 at 11:15 AM, Gsunde Orangen <gsunde.orangen@gmail.com>
> wrote:
>
> > Whilst there is a commit in openssl and a CVE ID, I wonder why this
> hasn't
> > been announced yet by OpenSSL.org and why there are no official fix
> > releases (yet).
> > What made this issue different to the usual coordinated disclosures being
> > practiced with the OpenSSL team?
> >
> > 2016-06-08 10:54 GMT+02:00 Solar Designer <solar@openwall.com>:
> >
> > > Hi,
> > >
> > > Just off Twitter:
> > >
> > > <mjos_crypto> Out today: This is the OpenSSL side-channel
> vulnerability I
> > > mentioned last week; now on ePrint. Also CVE-2016-2178.
> > > http://eprint.iacr.org/2016/594
> > > <@mjos_crypto> @mjos_crypto Currently unfixed in essentially all
> distros.
> > > <mjos_crypto> Note that CVE-2016-2178 /
> > > http://eprint.iacr.org/2016/594.pdf most severely actually impacts
> > > OpenSSH, which uses the OpenSSL library.
> > > <mjos_crypto> Cesar's CVE-2016-2178 patch for the OpenSSL library from
> > > Monday.
> > >
> >
> https://git.openssl.org/?p=openssl.git;a=commit;h=399944622df7bd81af62e67ea967c470534090e2
> > >
> > > http://eprint.iacr.org/2016/594
> > >
> > > | "Make Sure DSA Signing Exponentiations Really are Constant-Time''
> > > |
> > > | Cesar Pereida Garca and Billy Bob Brumley and Yuval Yarom
> > > |
> > > | Abstract: TLS and SSH are two of the most commonly used protocols for
> > > securing Internet traffic. Many of the implementations of these
> protocols
> > > rely on the cryptographic primitives provided in the OpenSSL library.
> In
> > > this work we disclose a vulnerability in OpenSSL, affecting all
> versions
> > > and forks (e.g. LibreSSL and BoringSSL) since roughly October 2005,
> which
> > > renders the implementation of the DSA signature scheme vulnerable to
> > > cache-based side-channel attacks. Exploiting the software defect, we
> > > demonstrate the first published cache-based key-recovery attack on
> these
> > > protocols: 260 SSH-2 handshakes to extract a 1024/160-bit DSA host key
> > from
> > > an OpenSSH server, and 580 TLS 1.2 handshakes to extract a 2048/256-bit
> > DSA
> > > key from an stunnel server.
> > > |
> > > | Category / Keywords: applied cryptography; digital signatures;
> > > side-channel analysis; timing attacks; cache-timing attacks; DSA;
> > OpenSSL;
> > > CVE-2016-2178
> > > |
> > > | Date: received 6 Jun 2016, last revised 7 Jun 2016
> > >
> > >
> > >
> >
> https://git.openssl.org/?p=openssl.git;a=commit;h=399944622df7bd81af62e67ea967c470534090e2
> > >
> > > | author        Cesar Pereida
> > > |       Mon, 23 May 2016 12:45:25 +0300 (12:45 +0300)
> > > | committer     Matt Caswell
> > > |       Mon, 6 Jun 2016 13:08:15 +0300 (11:08 +0100)
> > >
> > > | Fix DSA, preserve BN_FLG_CONSTTIME
> > > |
> > > | Operations in the DSA signing algorithm should run in constant time
> in
> > > | order to avoid side channel attacks. A flaw in the OpenSSL DSA
> > > | implementation means that a non-constant time codepath is followed
> for
> > > | certain operations. This has been demonstrated through a cache-timing
> > > | attack to be sufficient for an attacker to recover the private DSA
> key.
> > > |
> > > | CVE-2016-2178
> > >
> > > Alexander
> > >
> >
>
>
>
> --
> "I disapprove of what you say, but I will defend to the death your right to
> say it." -- Evelyn Beatrice Hall (summarizing Voltaire)
> "The people's good is the highest law." -- Cicero
> GPG Key fingerprint: D1B3 ADC0 E023 8CA6
>

--001a1147246e63297f0534c60700--
