X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2418" "Tuesday" "8" "September" "2020" "20:54:57" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8n5AkLT-90ZDTyGSp4Y4FXc59254aiTuYEFutMpiuRmsA@mail.gmail.com>" "54" "Re: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" "^Date:" nil nil "9" "2020090900:54:57" "[oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" (number mark "        noloader@gma Sep  8   54/2418  " thread-indent "\"Re: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework\"\n") "<20200908024135.GA70954@wopr>" ("<CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>" "<20200905054704.1d90da6a@jabberwock.cb.piermont.com>" "<CALv8orEzf_P79a6gqk8cKL=Ow7ymmXdQY_qBfmL-t7enSn5SsA@mail.gmail.com>" "<20200907165101.38058373@jabberwock.cb.piermont.com>" "<CAH8yC8ms56V7hAVKz1VQ7wX01H+ZC78GAPnNbd7tXRQgRxBt6A@mail.gmail.com>" "<20200908024135.GA70954@wopr>") nil nil nil nil nil nil nil "Re: [oss-security] Open Source Tool | vPrioritization | Risk Prioritization Framework" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3382 invoked by uid 550); 9 Sep 2020 00:55:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3364 invoked from network); 9 Sep 2020 00:55:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to;
        bh=9DZxnDfcGutohomZAcghgA0cpZQ8P5oJUHAdQ6MNGsY=;
        b=fsYiF2PYCTY41aMqOVtwT7gGsI14unO2pi0nQWFjn/KAHtgnOkPgcNDnmg5+HnQTbH
         qnGzX3bhjVS9/nOUhb5GsBSTRNsV6WZFMxQpdjDk7xHsPsZvSiyNjuLLwl9y7A+/bAbU
         9+VDGFkbz1Cn2RWVEJ5hUayKgFJL0kr6rZTw0qV8HOFSt8+7JNNT5xsIBRl1wmegoyq/
         4s7U+ZaIrJD7F1j7q2oulJeDVOf0bC/IW+aTIrEFuL6K3foOG58D/gTbvklcjqNw50iT
         QuFRiaejv1S6cAem3a5v1zGvwJ7ZsAt0TnnDdtrcD9FrlHB3gqQPLI37/teYItwEO+7D
         KfOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to;
        bh=9DZxnDfcGutohomZAcghgA0cpZQ8P5oJUHAdQ6MNGsY=;
        b=lbv0nJdoXOMmF2bB36dwFvBrSB/4RsF5JKSFVt0IP0kMxjbbUCRiQdAXPRVF9yHwv6
         HN3tK9GWjGEWHCAbEzF6lSPLF2if4Kovyd2VcTXS61dNt1Xke/S0i02kOWQ9CAEzVfGQ
         B6CIWqodwWxyNvzn4PkqmTyY5qLGAhxzK9V955MGIOYQgKr/WSGA5jyVsKiEqafhTwzs
         mn/Q8rjLQ1Bf3UPnOSeSg6EPFI2xqctkhdqzRN+IimNrphW9rNYIvZTXbBeOtM3yL+/D
         pSjOVJsJp/RFVUMfQvzy0yXtWjmVGa0a0LkD2oa5wLFarBJ2Cwk+AD1w9eFMEK6TWmdz
         KK9g==
X-Gm-Message-State: AOAM531Ea7OEW5VNFNfh+6TySyLnefEuZ+INERlAxJbRFkaCmENlyMHV
	bDpPteZsfh0Enz1G4mhOOpaQt8mtVyJZ9xMJx0nzZTped+BRvQ==
X-Google-Smtp-Source: ABdhPJwHtUiTIz4eJJIue8ufWtTUS7EIDKhTk6waXLkseGBIA0BohJB9iFKxC/hPsXeNh8fajeaW0N75ZC/3PMdizCY=
X-Received: by 2002:a02:7785:: with SMTP id g127mr1748630jac.27.1599612908612;
 Tue, 08 Sep 2020 17:55:08 -0700 (PDT)
MIME-Version: 1.0
References: <CALv8orGS3m5i=WihK7PAfJLwNuCd9bMxcs7UVTYy1s3MSc5PRQ@mail.gmail.com>
 <20200905054704.1d90da6a@jabberwock.cb.piermont.com> <CALv8orEzf_P79a6gqk8cKL=Ow7ymmXdQY_qBfmL-t7enSn5SsA@mail.gmail.com>
 <20200907165101.38058373@jabberwock.cb.piermont.com> <CAH8yC8ms56V7hAVKz1VQ7wX01H+ZC78GAPnNbd7tXRQgRxBt6A@mail.gmail.com>
 <20200908024135.GA70954@wopr>
In-Reply-To: <20200908024135.GA70954@wopr>
Message-ID: <CAH8yC8n5AkLT-90ZDTyGSp4Y4FXc59254aiTuYEFutMpiuRmsA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 8 Sep 2020 20:54:57 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Open Source Tool | vPrioritization | Risk
 Prioritization Framework
To: oss-security@lists.openwall.com

On Mon, Sep 7, 2020 at 10:42 PM Kurt H Maier <khm@sciops.net> wrote:
>
> On Mon, Sep 07, 2020 at 09:11:00PM -0400, Jeffrey Walton wrote:
> > Every US Federal agency I have worked with patches. The Social
> > Security Administration does it within 30 days, and the Treasury
> > Department does it in a matter of days. SSA is one of the largest
> > networks in the world with over 100,000 hosts. Treasury had over
> > 40,000 hosts.
>
> I've worked with US Federal agencies that did not patch.  I was able to
> change some minds, and it was productive work of which I'm proud.  My
> success rate is significantly below 100%, although my current employer
> is largely sympathetic to this effort.

I'd be interested to know which agencies don't have a comprehensive
patch policy in place. And how they passed their SP800-53A audits.
SI-2, Flaw Remediation, is part of all baselines.

> I would love to patch every computer with the latest available software,
> but there remains a gulf between 100k data-entry terminals and computers
> that must interact with the physical world.

> Machines that are hooked up
> to scientific or manufacturing equipment can be extremely difficult to
> patch without breaking things and no amount of haughty lecturing seems
> to fix the problem, despite same being readily available from multiple
> sources as far back as I can remember.

I usually encounter this as a one-off problem (and not a farm of
specialized machines). In my experience, there will be 500
workstations and servers that can be updated, and one machine that
cannot. The one machine is the damn fax server with some custom board.

> > Microsoft did a study years ago and found most hosts that are
> > compromised failed to install vendor patches.
>
> "Software vendor finds that everything would improve if everyone
> listened to software vendors" fails by a considerable distance to meet
> with my interest.

:)

But it's hard to debunk facts like a new server will experience a
break-in attempt within 3 minutes of being hung off the internet. It's
a very repeatable experiment. And all the evidence is in the log
files. (I think I have half of China and Europe banned through
iptables).

> "Software vendor stops breaking the driver ABI on
> supported operating systems" would get a lot farther.  Suggesting this
> generally results in an earth-shattering avalanche of excuses about how
> hard programming is.

Jeff
