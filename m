X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2220" "Monday" "8" "May" "2017" "11:34:18" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0BX4m57asPzCzr2mcKP96VjYc2j12FxwrOy28ggbapGg@mail.gmail.com>" "50" "Re: [oss-security] Re: remote DoS via CPU exhaustion in anon FTP server glob expansion" "^Date:" nil nil "5" "2017050817:34:18" "[oss-security] Re: remote DoS via CPU exhaustion in anon FTP server glob expansion" (number mark "        kseifried@re May  8   50/2220  " thread-indent "\"Re: [oss-security] Re: remote DoS via CPU exhaustion in anon FTP server glob expansion\"\n") "<CADSkJJU9JJ--uWnYD0yTMXuK3EHvpcCUC9GSxzq4X7f3Ogd0dA@mail.gmail.com>" ("<CADSkJJWpn3Z6VermSdq9f2ckxQ59BUXDZ4y=_A0gSQKv7YZ+zg@mail.gmail.com>" "<CADSkJJU9JJ--uWnYD0yTMXuK3EHvpcCUC9GSxzq4X7f3Ogd0dA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15882 invoked by uid 550); 8 May 2017 17:34:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15857 invoked from network); 8 May 2017 17:34:31 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=FlgK+ijYPBWQ/L1LbHTz8aL6RVgpC+8EbIbrLJCPihM=;
        b=XScajpnzw0zWzwsmFs9YEVExQBCiNZd+UUyTiS7dgI5qEa02HMbDC4YWu9ZfZGejCl
         AykYzX7ws4bGDGek8sd84GxMX1tPH46uGhxLabaUkSubURnt9b7mLUQO8I2wewq4ahzF
         dDyuKrNk2jUdVusBmcozmQIYeHxE+CR5ISKNUz8+KMxO7Fv83o1/7O7oZFgyl2eOLGLD
         o1X388+SOhOovkrcY5mSfS7mlz96LNVQ/cDsS/zUS7AEo0uLXe1oglIkkDvST36LUHsi
         9G1gbctWMKf3DoODiuZ8g8BTJbKA/NUCGMjjHcIjAK7MIZYWkSnaoGnDHEs37pPshPfU
         Wc6g==
X-Gm-Message-State: AN3rC/5xkE+899C8C76lTj5Ab7z08S+zuOCy52mbZ8V8hiZyvEorfIAk
	hNZXJsa842P8jqRKxZebwRxXOYlLl405bIw=
X-Received: by 10.157.6.80 with SMTP id 74mr15840671otn.93.1494264859444; Mon,
 08 May 2017 10:34:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CADSkJJU9JJ--uWnYD0yTMXuK3EHvpcCUC9GSxzq4X7f3Ogd0dA@mail.gmail.com>
References: <CADSkJJWpn3Z6VermSdq9f2ckxQ59BUXDZ4y=_A0gSQKv7YZ+zg@mail.gmail.com>
 <CADSkJJU9JJ--uWnYD0yTMXuK3EHvpcCUC9GSxzq4X7f3Ogd0dA@mail.gmail.com>
Message-ID: <CANO=Ty0BX4m57asPzCzr2mcKP96VjYc2j12FxwrOy28ggbapGg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c0934b625e0f5054f06a6fa
Date: Mon, 8 May 2017 11:34:18 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: remote DoS via CPU exhaustion in anon FTP
 server glob expansion
To: oss-security <oss-security@lists.openwall.com>

--94eb2c0934b625e0f5054f06a6fa
Content-Type: text/plain; charset=UTF-8

Just a note on how CVE works: CVE is for specific vulnerabilities. E.g. If
you find a specific XSS in a product for example, or a globbing problem in
an FTP server that allows someone to crash it by ls */*/*....*/*/*.
Alternatively there can be CVE's for protocol level flaws (e.g. where the
specification itself was flawed), or for security technologies that aren't
secure anymore (e.g. DES, 56bit keyspace just isn't big enough anymore with
a modern laptop, let alone access to cloud GPU systems) to name a few more
general cases.

Also for DoS type attacks it can be a gray area, e.g. "send a ping of
death, system crashes" is clearly a problem, but "open X Million
connections and system gets slow" is... well... normal behavior for most
things. In the case of globbing where do we go from "it simply takes a long
time for a complicated request" to "this is pathological behavior and needs
to be fixed" (it takes 1 second? 100 seconds? 100 minutes?).

In any event if there are specific instances of a given FTP server (or
whatever) that can be crashed/made really non responsive by this class of
attack then that is appropriate to ask for a CVE and would be given one.

On Mon, May 8, 2017 at 7:10 AM, Russ Cox <rsc@swtch.com> wrote:

> On Mon, Apr 24, 2017 at 10:06 AM, Russ Cox <rsc@swtch.com> wrote:
> > > Due to the widespread but limited ("only" CPU exhaustion) nature of
> > the problem, I have not attempted any embargoed prenotification.
> > I will forward this note directly to product-security@apple.com and
> > bugs@pureftpd.org. I filled out the "DWF Open Source Request Form v2"
> > for a CVE number for the generic problem, and I will reply here when
> > I receive the number.
>
> FYI, over the weekend I received notification (two weeks after applying)
> that DWF has declined to issue a CVE number for this general problem.
> Interested parties will have to obtain their own CVE numbers for specific
> products.
>
> Russ
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c0934b625e0f5054f06a6fa--
