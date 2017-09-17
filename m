X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1193" "Sunday" "17" "September" "2017" "15:25:53" "-0600" "Kurt Seifried" "kseifrie@redhat.com" "<D1EB28A9-7BC2-49FF-96F0-4C6309839864@redhat.com>" "29" "Re: [oss-security] Podbeuter podcast fetcher: remote code execution" "^Cc:" nil nil "9" "2017091721:25:53" "[oss-security] Podbeuter podcast fetcher: remote code execution" (number mark "        kseifrie@red Sep 17   29/1193  " thread-indent "\"Re: [oss-security] Podbeuter podcast fetcher: remote code execution\"\n") "<20170917162344.GA10837@openwall.com>" ("<20170916180518.GB28963@curry>" "<20170916190543.GA6340@openwall.com>" "<20170917115512.GA11577@curry>" "<20170917152143.GA10498@openwall.com>" "<CANO=Ty2OcX_fGqfShcWzGA4h=-UPkN-KhN58a382VgkFWQEuFw@mail.gmail.com>" "<20170917162344.GA10837@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12090 invoked by uid 550); 17 Sep 2017 21:26:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12072 invoked from network); 17 Sep 2017 21:26:09 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=qKEyrmSsSNo/BqfdQZbbRtA10NlWNlL9XDZVP6lbGxs=;
        b=b08NxflnVCazcuN+07ANby/Wwxc/f/GBuVqf/+H3lw9fBH/k4CteC+8NRkjtjNRRqI
         nfbPCbk9isd2eaWSgo21MCqZgwuBBAbT3Qvf9Z45RPAZHKXOGj3F0taEpgvIvv+aOcEe
         yUAIwoPJ4JlioVsVrlUJTIobNZr+3yeZNuHR9pF1GjmeNa14K1t3KnykP0DO4zr9opU0
         tV9qZmA3aJKaCLqUdgCZjXhWihu4m1IZwDl/kfIz07xbkXr0a777zjkSYAk50qfKVEPb
         kdDRo2qDRMcHIB/8AhFg8jyGwmURV7eOQokfmyD3taLPE7h3d43FEeNqmW0NeAbm8SlH
         Vjcg==
X-Gm-Message-State: AHPjjUiVeUMLr8cKdzv7a/57M0l5qXGLyULAcj16gjzK5L5sYnVq5gqG
	gtSIdGUbYkCdCZYm
X-Google-Smtp-Source: AOwi7QDXJZBpr5W/DA3xC9XvERsITvwvJSMlQUYHu6z/pYIxJbs+LirGuzRJBt3APRNS8bo5WF50IA==
X-Received: by 10.107.200.84 with SMTP id y81mr2418500iof.271.1505683557991;
        Sun, 17 Sep 2017 14:25:57 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (14G60)
In-Reply-To: <20170917162344.GA10837@openwall.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <D1EB28A9-7BC2-49FF-96F0-4C6309839864@redhat.com>
References: <20170916180518.GB28963@curry> <20170916190543.GA6340@openwall.com> <20170917115512.GA11577@curry> <20170917152143.GA10498@openwall.com> <CANO=Ty2OcX_fGqfShcWzGA4h=-UPkN-KhN58a382VgkFWQEuFw@mail.gmail.com> <20170917162344.GA10837@openwall.com>
Cc: Alexander Batischev <eual.jp@gmail.com>
Date: Sun, 17 Sep 2017 15:25:53 -0600
From: Kurt Seifried <kseifrie@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Podbeuter podcast fetcher: remote code execution
To: oss-security@lists.openwall.com

I never spoke or advocated about delaying things or timelines and CVEs exce=
pt in the sense I'd like to make it easier and get CVEs attached to things =
fast so that issues can be disclosed ASAP, ideally with a CVE. I want to ha=
ve my cake, and eat it, and share it with everyone else.


-Kurt





> On Sep 17, 2017, at 10:23, Solar Designer <solar@openwall.com> wrote:
>=20
>> On Sun, Sep 17, 2017 at 09:59:11AM -0600, Kurt Seifried wrote:
>> many orgs (probably not open source distros run by
>> volunteers, but more big corps) literally do have a clock start ticking
>> when a CVE comes to light
>=20
> I think that's not a reason to delay disclosing an issue to everyone
> else until there's a CVE ID.  If those orgs have such poor, limited, or
> maybe cost-saving processes (saving on not needing to bother with issues
> lacking CVE IDs, no matter how serious), it's their problem and their
> users'.  They deliberately put themselves at a competitive disadvantage.
> So be it.  This only reaffirms me in my suggested approach: public
> disclosure first, CVE next.  So those big corps will have a reason to
> fix the issues anyway, just with their self-imposed delay.
>=20
> Alexander
