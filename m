X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1036" "Wednesday" "8" "June" "2016" "23:24:44" "+0300" "Billy Brumley" "bbrumley@gmail.com" "<CAFeDd5a0aBM-wafxZu7m7NFPcOZyMBV-2ufbiDi_7MLWyqm-Eg@mail.gmail.com>" "25" "Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" "^Date:" nil nil "6" "2016060820:24:44" "[oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" (number mark "        bbrumley@gma Jun  8   25/1036  " thread-indent "\"Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations\"\n") "<7067CF16-30A5-4EE8-B2C0-18262D355B14@schaltsekun.de>" ("<20160608085431.GA4278@openwall.com>" "<CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com>" "<CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>" "<CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com>" "<20160608153856.GH3711@suse.de>" "<4CC7C148-7BCC-4D6D-88D0-ED2BADD124BF@schaltsekun.de>" "<7067CF16-30A5-4EE8-B2C0-18262D355B14@schaltsekun.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7364 invoked by uid 550); 8 Jun 2016 20:24:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7342 invoked from network); 8 Jun 2016 20:24:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=EUVadVo/Ugr4D6WAo/kDYX9ZACoipx1rYSQ89rPDYqU=;
        b=GBbDa1spVI1PxEkkyqWIZF6NM+qdGNwjivqgCJ4O2Agtm6uO7rnN7HdR0kaYIM6zuT
         amAPrUNs8GSv7TP63AIA6KDBt3LoVxbGg05aRrpr9Mn4THD/zYHyfX+98yza1bnnPsoS
         zFTYADsI58KmtaULtW0ab8WAcwF4tE/0b9UDrpJMbN8XIksraItsvfwphtroi7sWp43R
         9GIhoR58QdDHSVyGlYIUZeupjtp2FB+aYLlp8HCn+PZNRHdxctEkxUb1LZYlKC4f9c7Y
         kCwS4zqtj3+tj0s6NFvsDQEIRbdhFqVztXrezvbm0gYr520dLE9grwX5u7MZLVz3oehx
         FO+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=EUVadVo/Ugr4D6WAo/kDYX9ZACoipx1rYSQ89rPDYqU=;
        b=JIYKiOTXbMUzOsah0j76ia5SPDcoE3TKY0AyM3pXTIMZKBhODOIoZevyPa2p2SmDw2
         hVdJc4ktoD2HaKwMtVSIiDFlC1mqIjE8Ra4bdJKkUx/tarLtaue+lvS+Uo5LAT5HOQfc
         zxXEk1Wu/mlnkV13zKVqBYEpbAIUmAygvskadAS0GwN9zFRS4ERi214EnjuDE+UiA8Yj
         wF+IAchPv8FdWbytgkTq9wantk+G20GsoXTRHhAC6oQ1f/fRcQKlkeT1UBqkpMWMZD1L
         R9MN9dvqDFFgAwjKYpUkRTTRcD4m3V0G5PsY40bXz/jzwKqdeBPbG8GVwaTs1HS+Rww0
         rbIA==
X-Gm-Message-State: ALyK8tJcV6oZvozbymdHoFsvCeppxFFYcUqbYXBhNzVmRa5NebmoqacyEDgSdZdh0baCvQ2DdCySMpnGzUvBeg==
X-Received: by 10.200.55.115 with SMTP id p48mr3595267qtb.15.1465417485481;
 Wed, 08 Jun 2016 13:24:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <7067CF16-30A5-4EE8-B2C0-18262D355B14@schaltsekun.de>
References: <20160608085431.GA4278@openwall.com> <CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com>
 <CAFRnB2UaY54U2VdmXR=dRSU7HtjgfjQMgOZ0w55jL4AYTng5oA@mail.gmail.com>
 <CAOTQaXH7_L469A-AWkMUDYe_ByetxuHdWHnhpTaXyGGaAOhcoA@mail.gmail.com>
 <20160608153856.GH3711@suse.de> <4CC7C148-7BCC-4D6D-88D0-ED2BADD124BF@schaltsekun.de>
 <7067CF16-30A5-4EE8-B2C0-18262D355B14@schaltsekun.de>
Message-ID: <CAFeDd5a0aBM-wafxZu7m7NFPcOZyMBV-2ufbiDi_7MLWyqm-Eg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 8 Jun 2016 23:24:44 +0300
From: Billy Brumley <bbrumley@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant
 time codepath for certain operations
To: oss-security@lists.openwall.com

>> Are we sure that a "low" rating is justified?
>> DSA is basically dead, until the constant time switch is flicked. The
>> only countermeasure so far is turning it off.
>
> Maybe I should be a little more verbose on this:
> 1) attacker recovers the DSA host key.
> 2) attacker mitm-attacks client connections to the server and recovers the user's private key by exploiting the vulnerable openssl on the client side
> 3) ...
>
> The same principles apply when the computational burden is reversed for client auth, aren't they?

Are you talking about the SSH target?

If so, the realistic scenario is a user with legitimate credentials
logging into a server to steal the DSA host key locally with cache
timings.

I don't think client-side enters into the equation for this vuln. You
need an active attacker initiating handshakes. That's my 2c -- we
didn't consider client-side victim much in this work.

If it's the TLS target, you need local access or manage to co-locate
in cloud scenarios. Not as realistic as the SSH case IMO.

BBB
