X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3235" "Friday" "4" "March" "2016" "18:09:21" "-0800" "mark@curphey.com" "mark@curphey.com" "<1C0D6550-6BC4-48B9-9DCB-1B8B98028045@curphey.com>" "75" "Re: [oss-security] RE: Concerns about CVE coverage shrinking - direct impact to researchers/companies" nil nil nil "3" "2016030502:09:21" "[oss-security] RE: Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "U       mark@curphey Mar  4   75/3235  " thread-indent "\"Re: [oss-security] RE: Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<56DA3A44.8030001@trylinux.us>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<56D9DD1F.1030302@cert.org>" "<6C149CB0AE53E944A358EC6730D07C7442EC599128@TUS1XCHEVSPIN35.SYMC.SYMANTEC.COM>" "<CAFJuDmNWWkHoh5brvTgZNYzNeH3ZbueHDBYC=WG7P1H7fJbKOA@mail.gmail.com>" "<20160305000740.GB1250@sentinelchicken.org>" "<56DA3A44.8030001@trylinux.us>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17989 invoked by uid 550); 5 Mar 2016 09:01:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23748 invoked from network); 5 Mar 2016 02:09:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=curphey-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=IRMKgZnPn55V27TB0GHv0ZqgtfBNV4fBOfzHJtC6I9k=;
        b=jMB/vC+JUZCbGS7a3QMYCPXPsy4xK+bXFSX0WVsYIGxR+FlcOHcAP8m7/Vt0dvlpCU
         kT9lo+PrnYHjL7RkmdgfCDOaT3tlZaxxsI6Q3jhqYlFHoB5W8KsM6fyoWmtl1ZGMtckZ
         359Mw46m7AjxqyX5d19+Z2KprSaBhbbY5HTuLs7HP8xhz5w3TRvJCk/PvSs/WqtxMGC4
         CfAqh3gQPLpgM64jHiL0R/IbWYDv08sVtA/4EQ02rThNKtN5ls4xd9EDHaHQSQcJyyhP
         wrVXB4ba38GJM2S//biOIkroNM57g2ZAsatH0SWETbkMdvCRozrRxSAeiFYPGWRMfhaL
         AtNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=IRMKgZnPn55V27TB0GHv0ZqgtfBNV4fBOfzHJtC6I9k=;
        b=dj4XA0epn32JuP6ZaoCE9NTqhbsM9xiTuvs0jcr9Tq3hNusfmnAcBH9/xtEWD4hxUd
         XqLmcYJeWUfLI8SSFagWJYl7wraYvPWVLvlrQPzjwK5dXq7+LmKfMGO/7H20U9TFcsGe
         5amsA/u2v4UMJ6mFlVsWjRvm/aaR8h2GOE/o9lpOOeG0V+HKq0J5KK5eBbElZrY1a8io
         Eqyg3udH2pG7m61eiecmsi0VTPO+FA8j/IWl7oqiPBZIY7KsSNyj+DxoY1VWlZ5FR8MZ
         H+1gVOiwwAMceJtSwJ78N0YqF6P2jYyTV3EqFtVdfnD/wB/HfxuvCeD/47nDTU1gdUNc
         Nokw==
X-Gm-Message-State: AD7BkJLF3kMA3CGaC0BNqLTRP6sIwmOV70Gh9Em9TQfaaoD6qiLMt1dkCRW8D0wPycI+/Q==
X-Received: by 10.98.14.67 with SMTP id w64mr16867105pfi.154.1457143762613;
        Fri, 04 Mar 2016 18:09:22 -0800 (PST)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (13D20)
In-Reply-To: <56DA3A44.8030001@trylinux.us>
Content-Transfer-Encoding: quoted-printable
Message-Id: <1C0D6550-6BC4-48B9-9DCB-1B8B98028045@curphey.com>
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com> <56D9DD1F.1030302@cert.org> <6C149CB0AE53E944A358EC6730D07C7442EC599128@TUS1XCHEVSPIN35.SYMC.SYMANTEC.COM> <CAFJuDmNWWkHoh5brvTgZNYzNeH3ZbueHDBYC=WG7P1H7fJbKOA@mail.gmail.com> <20160305000740.GB1250@sentinelchicken.org> <56DA3A44.8030001@trylinux.us>
Cc: Art Manion <amanion@cert.org>, Kurt Seifried <kseifried@redhat.com>,
 cve-editorial-board-list <cve-editorial-board-list@lists.mitre.org>
Date: Fri, 4 Mar 2016 18:09:21 -0800
From: mark@curphey.com
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] RE: Concerns about CVE coverage shrinking - direct impact to researchers/companies
To: oss-security@lists.openwall.com

Long time listener, first time caller.....

I stated OWASP.org in 2002. I am happy to put some skin in the game and set=
up a 503c with the right open-source governance structure (read: for the ri=
ght reasons) and financially bootstrap (build a site and pay for one dedica=
ted full time employee for at least the first year) to get this off the gro=
und. Not what will be needed long term but enough to  start the journey ...=
..

Experience with OWASP was you need a few "mavens" so Kurt, Hanno and others=
 would need to step up and be on a 'founders board' to make it successful e=
tc but ..

If that's of interest let me know, if not someone needs to do it....too imp=
ortant not to.=20

Sent from my iPhone

> On Mar 4, 2016, at 5:45 PM, Zach W. <kestrel@trylinux.us> wrote:
>=20
> I agree. I've been in the same boat as Hanno. In one case, I even sent a
> request to both oss-sec and cve-assign about an open source platform
> called OSMC, and got a response off-list that was just like the one seen
> in Kurt's original email. I asked for clarification and for them to
> address both me and the list and I never got a response. That was over a
> month ago.
>=20
> I'm sure Hanno and I are not the only ones. Thank you Kurt for bringing
> this up.
>=20
> Zach W.
>=20
> On 3/4/2016 4:07 PM, Tim wrote:
>>> The level of frustration in the research community has been growing,
>>> with steady calls for a new CVE-like solution that is designed to
>>> address these needs in a more effective way. I greatly appreciate the
>>> work that has been done, but at this point CVE is becoming less
>>> useful, less relevant - if this isn't addressed, my expectation is
>>> that a CVE-like solution will be adopted by the community, and
>>> researchers will begin moving away from requesting CVEs.
>>=20
>> The CVE system is clearly breaking down.
>>=20
>> I think we need a system that is less moderated and more content
>> driven.  I imagine a simple site, which looks like a stripped-down bug
>> tracker.  Let's suppose it acts like this:
>>=20
>> * Any researcher can post "claims" about vulnerabilities.  This
>>  assigns an identifier immediately.
>>=20
>> * Claims about vulnerabilities may be reviewed, eventually, by an
>>  authority whose job it is to be sure the claim is associated
>>  properly with a real product/version and that the product owners are
>>  notified through an automated process (e.g. "security@...").
>>=20
>> * Product owners can respond to claims, which will appear along side
>>  the claim.  Links to patches or refutations can be included.
>>=20
>> * No moderation required.  Let the public decide if they believe the
>>  researcher or vendor.  If a moderator does bother to look over the
>>  content, they could deduplicate/link issues together and address any
>>  confusion, but beyond that, it isn't their job to decide what is a
>>  vulnerability and what isn't.
>>=20
>> * All information posted in this system exists publicly forever.
>>  Links to external content (that isn't well represented in the
>>  posting) are frowned upon, since the Internet Archive clearly can't
>>  keep up with everything.  We need an archive that doesn't go away.
>>=20
>>=20
>> Ok, beat it up.
>>=20
>> tim
>=20
>=20
