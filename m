X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3267" "Tuesday" "9" "January" "2018" "11:33:48" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0aVUpdVJGer0XaoWyKJ97px6sycxms67MpXv2CVO7oDg@mail.gmail.com>" "68" "Re: [oss-security] Own on install. How grave it is?" "^Cc:" nil nil "1" "2018010918:33:48" "[oss-security] Own on install. How grave it is?" (number mark "U       kseifried@re Jan  9   68/3267  " thread-indent "\"Re: [oss-security] Own on install. How grave it is?\"\n") "<20180109164643.GA26974@perpetual.pseudorandom.co.uk>" ("<20180109134207.GI869@sivokote.iziade.m$>" "<CANO=Ty070FkdfSVcz35pYXsa+BBbgoN7zWheAO-XudbD34n1Kw@mail.gmail.com>" "<20180109164643.GA26974@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3167 invoked by uid 550); 9 Jan 2018 18:34:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3097 invoked from network); 9 Jan 2018 18:34:01 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=bx5t2LBVwQBe37iZ7KApWX/InIEpz720Q5FiQBphON0=;
        b=bBNW33JJ1RSomG4dM87MsS+Hoj7gU85tDA7CU0cHB2J9ROQuYKo/13NY2QnHmxADf2
         qOoI/9ZKbzdDjQsrjKqP5oBrJvezaqqdXOzDzq575HLY8rXy0Y48BSCuRCObMvhm/LEi
         7jG55wiliVcTmHhr/H4B1p/HpATtb/qxonW/MyObkibtnf4BRtyxGC/cO52a2mrBWuLu
         e17WtyQwq4mh07sszvy93wUCpY0OAzJm9KzE3CtxmvlkxHOI+DAUqgIRfs/5JZkbbILM
         prC5B80TP4//V+Vtmj/thkRh6b3nIm95AIzOkRGcfJdG1QTFtalD1iaEa6oKXxbg0kuP
         HxkQ==
X-Gm-Message-State: AKwxytfIk/lbrJlc1bj5CO2K4s14aB4KGAmMW9uTCaiSLIVO/GCcqtGa
	+QAmLhYCFNkFFyymjdvXmH3Z+bj02AH0sx+hO/R96j3a
X-Google-Smtp-Source: ACJfBouC6tsIUEQZPg0kG107pL+oaljc3qobWe1jQdPsKmhcpx7WEAZSdwgh3JXZf7ENE/sEh/ZewN0UC1KZPaOxMqQ=
X-Received: by 10.202.72.143 with SMTP id v137mr1227822oia.358.1515522828929;
 Tue, 09 Jan 2018 10:33:48 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20180109164643.GA26974@perpetual.pseudorandom.co.uk>
References: <20180109134207.GI869@sivokote.iziade.m$> <CANO=Ty070FkdfSVcz35pYXsa+BBbgoN7zWheAO-XudbD34n1Kw@mail.gmail.com>
 <20180109164643.GA26974@perpetual.pseudorandom.co.uk>
Message-ID: <CANO=Ty0aVUpdVJGer0XaoWyKJ97px6sycxms67MpXv2CVO7oDg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Georgi Guninski <guninski@guninski.com>
Date: Tue, 9 Jan 2018 11:33:48 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Own on install. How grave it is?
To: oss-security <oss-security@lists.openwall.com>

One thing to keep in mind: most operating systems can have their
install media updated, e.g. Windows slipstream where you make an
install media with all available updates, or you can install updates
without a network trivially (e.g. for RPM/DPKG based systems just have
a USB key with a copy of the updates and install them). To say nothing
of using orchestration tools that essentially can take care of it
themselves, or generating master images that are up to date
(containers/Docker are a good example here, you want to deploy up to
date containers and then refresh the entire container for updates, not
run yum update inside of it, cattle not pets and all that).

Obviously things that don't support this add risk (e.g. you MUST
connect to the internet to get updates), and if the update tools
themselves have a problem, you have a major problem.



On Tue, Jan 9, 2018 at 9:46 AM, Simon McVittie <smcv@debian.org> wrote:
> On Tue, 09 Jan 2018 at 08:37:08 -0700, Kurt Seifried wrote:
>> Many OS installs/etc take a password during install
>
> I think Georgi was more concerned about the installation having a secure
> design, but an insecure (vulnerable) implementation appearing on the
> installation media due to either unfixed vulnerabilities, or
> vulnerabilities that were fixed elsewhere but not on the installation
> media?
>
> For instance, the Debian installer installs packages from the install
> media (CD, USB stick, whatever), then immediately updates them
> from the Internet if possible; but there's a chicken-and-egg
> problem here, because that update has to be done with whatever
> version of apt was on the media. If that version happens to suffer
> from a vulnerability that can be exploited at that time (such as
> https://security-tracker.debian.org/tracker/CVE-2016-1252 in apt itself,
> or a vulnerability in the http or signature verification code that it
> uses) then there's an opportunity for attack.
>
> The same is true for the kernel and network-device firmware used to boot
> the installer. Debian mitigates this by releasing updated installation
> media at every point release (about 1 per 2 months for stable, somewhat
> slower for oldstable).
>
> I don't see any way to prevent that class of attack completely. Releasing
> updated installation media sooner would mitigate it, but preparing
> installation media is far from being a rapid process.
>
>> On Tue, Jan 9, 2018 at 6:42 AM, Georgi Guninski <guninski@guninski.com> wrote:
>> > Debian jessie (old stable) is vulnerable to malicious mirror attack.
>
> Assuming you're referring to CVE-2016-1252, whether this is true depends
> what you mean by jessie. Installs from older media (up to and including
> 8.6) will be vulnerable to CVE-2016-1252 during the first upgrade run,
> whereas installs from newer media (8.7 or newer, with the current version
> being 8.10) are not vulnerable.
>
> It's true that there was a window (in this case it happens to be 1 month)
> during which Debian offered an update for CVE-2016-1252, but the newest
> available installation media still suffered from it.
>
>     smcv



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com
