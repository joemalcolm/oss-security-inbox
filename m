X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3372" "Tuesday" "8" "September" "2020" "21:03:52" "-0400" "Alex Gaynor" "alex.gaynor@gmail.com" "<CAFRnB2VYNrfRJKUv3TApDidJNgBQwOGS=M2Yt1+Y87ajuQ6zKA@mail.gmail.com>" "79" "Re: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" "^Date:" nil nil "9" "2020090901:03:52" "[oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" (number mark "        alex.gaynor@ Sep  8   79/3372  " thread-indent "\"Re: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework\"\n") "<CAH8yC8n5AkLT-90ZDTyGSp4Y4FXc59254aiTuYEFutMpiuRmsA@mail.gmail.com>" ("<CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>" "<20200905054704.1d90da6a@jabberwock.cb.piermont.com>" "<CALv8orEzf_P79a6gqk8cKL=Ow7ymmXdQY_qBfmL-t7enSn5SsA@mail.gmail.com>" "<20200907165101.38058373@jabberwock.cb.piermont.com>" "<CAH8yC8ms56V7hAVKz1VQ7wX01H+ZC78GAPnNbd7tXRQgRxBt6A@mail.gmail.com>" "<20200908024135.GA70954@wopr>" "<CAH8yC8n5AkLT-90ZDTyGSp4Y4FXc59254aiTuYEFutMpiuRmsA@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19604 invoked by uid 550); 9 Sep 2020 01:04:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19586 invoked from network); 9 Sep 2020 01:04:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=RT3erPBvmIu6vS/QaxVACcLEK/hh06VURGfhfC+jR/s=;
        b=SzB/Sda0j4QBmr9/Y1v+9IsdJW/108z8YUb2q20dPBJQf2F+p/jKwN14B82knTkT6w
         lMFqeKK9cMxaFie3B8YQWMGW9ADdnD+2yTMJt/hUU4Fuw75AJQbK15jnqQzJ/zaEBiIN
         y3hzfjDk15ruajYlGqurTjwxCs+OSaWZZRxCUKvGlVH1AzI8ZZwNA2o7QLU1BDfkEuSF
         3Cx6IIKhUt1VsoJ7CcE1RIbji4MtS8OB+bv1DNdikV6e+ftuA/dBw7bIuWl6+GYbyCve
         JWtSYrdxH95AqX2Ew8DJYWelw+pZckWzLaGXRBuU8goylMflfBUY/e6vJ2fL3bytzkPG
         sAyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=RT3erPBvmIu6vS/QaxVACcLEK/hh06VURGfhfC+jR/s=;
        b=H1XSCP4741/tchkU2LLxksrxsfVCHgPx5VAicw2h/xw5cvubMGF8KHEr8sM/Qh8veF
         NgfGoHpvJFKpSqknOPUKO5SHCi+MOv70fvsl/DmS8g5RMnwBDZ85EFDbqxbTjlYwNiWu
         upX2rjc7STLpRGbkk3dBeiIyMgy+gxhTstCu9aTi0HikwjJD7M0tqgq7XAG+7xLynGb+
         Gt1vyktCX5xQhLgOrWLLdP5mbji3nd6cjWGtLjO7FTFkz9rWqd1USOirjU6NujUReTZO
         29F60ny7z//Pp9nxX6dgxiZQ5DbEpp/HCysqTDKwCq7ta2j0VRWfjyoeMRRyzqAIW8Cm
         vu6A==
X-Gm-Message-State: AOAM5312vs1j/fBjZwPC4slGQ5VuS7YLiH/rS2m8uvG5rrZalrq4XlGt
	nrZfNC2kqJob0ddU7+OsHKhd3ITH//+GsnSSXUuY4wgjkp0=
X-Google-Smtp-Source: ABdhPJziEDAilRHk+jt0sevgJR7HSLl/5g5zvZ7BU6zSjwtYY3+ZU13MDgkkQQ0hK16L1FC73LKVlE/GNLRjvQVpYDk=
X-Received: by 2002:aa7:9f04:0:b029:13e:d13d:a13b with SMTP id
 g4-20020aa79f040000b029013ed13da13bmr1537422pfr.35.1599613443771; Tue, 08 Sep
 2020 18:04:03 -0700 (PDT)
MIME-Version: 1.0
References: <CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>
 <20200905054704.1d90da6a@jabberwock.cb.piermont.com> <CALv8orEzf_P79a6gqk8cKL=Ow7ymmXdQY_qBfmL-t7enSn5SsA@mail.gmail.com>
 <20200907165101.38058373@jabberwock.cb.piermont.com> <CAH8yC8ms56V7hAVKz1VQ7wX01H+ZC78GAPnNbd7tXRQgRxBt6A@mail.gmail.com>
 <20200908024135.GA70954@wopr> <CAH8yC8n5AkLT-90ZDTyGSp4Y4FXc59254aiTuYEFutMpiuRmsA@mail.gmail.com>
In-Reply-To: <CAH8yC8n5AkLT-90ZDTyGSp4Y4FXc59254aiTuYEFutMpiuRmsA@mail.gmail.com>
Message-ID: <CAFRnB2VYNrfRJKUv3TApDidJNgBQwOGS=M2Yt1+Y87ajuQ6zKA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000018109c05aed70761"
Date: Tue, 8 Sep 2020 21:03:52 -0400
From: Alex Gaynor <alex.gaynor@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Open Source Tool | vPrioritization | Risk
 Prioritization Framework
To: oss-security@lists.openwall.com

--00000000000018109c05aed70761
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 8, 2020 at 8:56 PM Jeffrey Walton <noloader@gmail.com> wrote:

> On Mon, Sep 7, 2020 at 10:42 PM Kurt H Maier <khm@sciops.net> wrote:
> >
> > On Mon, Sep 07, 2020 at 09:11:00PM -0400, Jeffrey Walton wrote:
> > > Every US Federal agency I have worked with patches. The Social
> > > Security Administration does it within 30 days, and the Treasury
> > > Department does it in a matter of days. SSA is one of the largest
> > > networks in the world with over 100,000 hosts. Treasury had over
> > > 40,000 hosts.
> >
> > I've worked with US Federal agencies that did not patch.  I was able to
> > change some minds, and it was productive work of which I'm proud.  My
> > success rate is significantly below 100%, although my current employer
> > is largely sympathetic to this effort.
>
> I'd be interested to know which agencies don't have a comprehensive
> patch policy in place. And how they passed their SP800-53A audits.
> SI-2, Flaw Remediation, is part of all baselines.
>
>
Oh they have a policy. It says that systems will be patched in a timely
manner. And then the kind accountants who perform the audits say, "Great
policy, this is fully compliant, have an ATO and a gold star". And then
random things all over the place are not patched at all because federal IT
departments have astonishly poor automation practices, extremely limited
reuse of systems across distinct projects (contracts) within the agency and
there is nothing approaching a comprehensive way for a federal agency to
answer "did we deploy the updated struts for all of our stuff".

Alex


> > I would love to patch every computer with the latest available software,
> > but there remains a gulf between 100k data-entry terminals and computers
> > that must interact with the physical world.
>
> > Machines that are hooked up
> > to scientific or manufacturing equipment can be extremely difficult to
> > patch without breaking things and no amount of haughty lecturing seems
> > to fix the problem, despite same being readily available from multiple
> > sources as far back as I can remember.
>
> I usually encounter this as a one-off problem (and not a farm of
> specialized machines). In my experience, there will be 500
> workstations and servers that can be updated, and one machine that
> cannot. The one machine is the damn fax server with some custom board.
>
> > > Microsoft did a study years ago and found most hosts that are
> > > compromised failed to install vendor patches.
> >
> > "Software vendor finds that everything would improve if everyone
> > listened to software vendors" fails by a considerable distance to meet
> > with my interest.
>
> :)
>
> But it's hard to debunk facts like a new server will experience a
> break-in attempt within 3 minutes of being hung off the internet. It's
> a very repeatable experiment. And all the evidence is in the log
> files. (I think I have half of China and Europe banned through
> iptables).
>
> > "Software vendor stops breaking the driver ABI on
> > supported operating systems" would get a lot farther.  Suggesting this
> > generally results in an earth-shattering avalanche of excuses about how
> > hard programming is.
>
> Jeff
>


-- 
All that is necessary for evil to succeed is for good people to do nothing.

--00000000000018109c05aed70761--
