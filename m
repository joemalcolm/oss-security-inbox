X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2396" "Monday" "26" "June" "2017" "15:26:46" "-0600" "Kurt Seifried" "kseifrie@redhat.com" "<6AE321DE-812B-4EA1-807F-3C36B6E077D0@redhat.com>" "60" "Re: [oss-security] civilized discussion (Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method)" "^Date:" nil nil "6" "2017062621:26:46" "[oss-security] civilized discussion (Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method)" (number mark "        kseifrie@red Jun 26   60/2396  " thread-indent "\"Re: [oss-security] civilized discussion (Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method)\"\n") "<20170626205012.GA17038@openwall.com>" ("<20170624005003.GB27479@grsecurity.net>" "<CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com>" "<20170624151504.GA25902@grsecurity.net>" "<CA+55aFyZpWutYKccn1eZBV5Lj_bF7gEZqy=LgjDOBqHk4poeTA@mail.gmail.com>" "<20170625013537.GA21637@grsecurity.net>" "<CALogXGW++8_OVkE_hyREa_fYjK1eDkinZQfBDVYVJ=vA0Nw-dg@mail.gmail.com>" "<20170626205012.GA17038@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9788 invoked by uid 550); 26 Jun 2017 21:27:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9742 invoked from network); 26 Jun 2017 21:27:00 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:references:in-reply-to:to;
        bh=o1w94+a5usrjKzvrF5Z7jroExfWtj1f/l5MU3xQtHPU=;
        b=fWJ4JqHD1M0DoL97z51m5ICYzxFvsBPSTnNKUdJKxBqm17oSHyAHDmVyduHhrmkENc
         u8YwHfRQHBaM+g0HrntkKo0rNEVb4sPnHSQ6lxtQfTxwfAPD30+eJB0CoBo5QwgxE8mX
         vL2Bqi/iB/agXt8aTk6pm/GtyHp1QJm7RsyNr3TC3hVuDIhR8stS8apJV4cBnkqRX/Nx
         3frcLz8l4DUx1mObUbiUUf1/U2bXvyXQbcHmVgaLDH82eCLD75UcYDgklvQr3OwnKzKD
         OtrJYyWExIpEQWWe/UJgNiN4eFqPOIIhBq81CTWGyqUn3ZPW7nXsb36CJBnqr18fiQNE
         yn4w==
X-Gm-Message-State: AKS2vOy8/1tlUGTKjXMjho3SXwzZzW1osGKPDrfNL0u4rWBheWZAKgdy
	KZ/2L07gaTQYwrKPs44vVw==
X-Received: by 10.98.74.194 with SMTP id c63mr2013287pfj.58.1498512408593;
        Mon, 26 Jun 2017 14:26:48 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (1.0)
Message-Id: <6AE321DE-812B-4EA1-807F-3C36B6E077D0@redhat.com>
References: <20170624005003.GB27479@grsecurity.net> <CAADWXX8JYe-AewtzoY6VBVLPTs+UvnfZst76vL4tccf6x9cY=g@mail.gmail.com> <20170624151504.GA25902@grsecurity.net> <CA+55aFyZpWutYKccn1eZBV5Lj_bF7gEZqy=LgjDOBqHk4poeTA@mail.gmail.com> <20170625013537.GA21637@grsecurity.net> <CALogXGW++8_OVkE_hyREa_fYjK1eDkinZQfBDVYVJ=vA0Nw-dg@mail.gmail.com> <20170626205012.GA17038@openwall.com>
In-Reply-To: <20170626205012.GA17038@openwall.com>
X-Mailer: iPhone Mail (14F89)
Date: Mon, 26 Jun 2017 15:26:46 -0600
From: Kurt Seifried <kseifrie@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] civilized discussion (Re: More CONFIG_VMAP_STACK vulnerabilities, refcount_t UAF, and an ignored Secure Boot bypass / rootkit method)
To: oss-security@lists.openwall.com

To be clear solar has always been a sane and polite person, but I don't kno=
w what the list policy is, in part because I don't think this has really co=
me up before(that I can remember).


-Kurt





> On Jun 26, 2017, at 14:50, Solar Designer <solar@openwall.com> wrote:
>=20
> Hi all,
>=20
> Yes, I too would like the discussions in here to stay civilized.
>=20
> Brad wrote to Linus:
>=20
>> On Sat, Jun 24, 2017 at 9:35 PM, Brad Spengler <spender@grsecurity.net> =
wrote:
>> With no technical content coming from your end, there's no need to discu=
ss
>> anything further -- don't waste your time because I won't reply.
>=20
> and I hope that Linus won't reply (as far as I can see, he did not so
> far) and this does in fact end that thread.
>=20
>> On Mon, Jun 26, 2017 at 03:16:06PM -0400, Mansour Moufid wrote:
>> Is there another mailing list for discussions of Linux security? Or foru=
m?
>=20
> At Openwall, we also host the kernel-hardening mailing list, but we
> currently moderate it similarly - that is, we're not preventing
> occasional/infrequent threads like this right away, letting a sensible
> number of messages to pass through, even if with insults and such.
> Usually those threads end on their own.  In fact, I only recall one very
> recent thread in there where I intervened and technically shut it down.
> If the pro-grsecurity and/or anti-grsecurity folks try much harder,
> we'll probably have to start moderating the lists much stricter.
>=20
> There are probably other suitable mailing lists and forums as well.
> Maybe someone else would share some.
>=20
>> I have been thinking of sharing a few patches for the last couple months.
>> I don't think this is the right place after the kind of insults I saw th=
is week.
>=20
> This sounds weird to me: you've been sitting on those patches for "the
> last couple months" and now a thread "this week" finally made you decide
> not to post them in here.  Anyhow, if those patches would be on-topic in
> here or on kernel-hardening, please feel free to reconsider.
>=20
> Off-list, someone else also explained to me that the recent dirt in here
> discouraged them from posting certain reasonable content.  So this is
> probably happening, and that's a pity.  I ask that anyone who thinks
> they have higher quality content than what we see in this thread does
> post that.  Let this be your response.
>=20
> Alexander
