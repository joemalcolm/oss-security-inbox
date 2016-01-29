X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2222" "Friday" "29" "January" "2016" "17:45:27" "+0000" "Scott Herbert" "scott.a.herbert@googlemail.com" "<CAEmCSgmmuLYpNLdz_vg3-NH_f8Psfj7PxgN7b5S9UCLbKzvO9A@mail.gmail.com>" "62" "Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" "^Date:" nil nil "1" "2016012917:45:27" "[oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" (number mark "        scott.a.herb Jan 29   62/2222  " thread-indent "\"Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes\"\n") "<1528e110c5f.11ff2dddc43704.3865822946264713459@fsck.pl>" ("<2413003.GtkKFizscD@chimera>" "<CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com>" "<CAJMyd9Yje0QY+Th_QUYuO6JspRvysKqkkxtXq-xgANBASM_Nrw@mail.gmail.com>" "<1528e110c5f.11ff2dddc43704.3865822946264713459@fsck.pl>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9870 invoked by uid 550); 29 Jan 2016 17:45:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9852 invoked from network); 29 Jan 2016 17:45:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type:content-transfer-encoding;
        bh=77BbgzbZ/2LutTTVacwt8ScrUTIPc4YcltnyDxAWnxw=;
        b=qNpAyJrY8GM2AMfl2FwcMSG3ea+vWx1Lvo6Y5AQINUM7F0iYVrgXirv1RNORoSINdN
         4HINnPVF2GTuGEoS/q6vpVuQSivQAIdc4Q8yCeWRTUfjRq40VJdSXmN1qKKOZQcxLmoI
         PaQJ8DKxUqSn78V7mUiylg80qIe1unR9oXtASb/5cdqYMpb+/q8ZHHDTRxE//7XyPx5J
         Xrf/DdM1gyk+NEsePTqy3aJJEfNKwQut0MtKTXjbChHkMzLilBwz6pZlD3+nm49fhc9H
         FQ81YfGS9QuzxZP06llx3EjJTWrYeUVHsQ0u/Cqd9VDfcJET/TqLGFihuyi9KVedWPTq
         6ClA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type:content-transfer-encoding;
        bh=77BbgzbZ/2LutTTVacwt8ScrUTIPc4YcltnyDxAWnxw=;
        b=d4NHM4Pjjhj8nvO3W/Abl8/jN04hT6+iLDIMSQqDMkoKhnJ4VoikVDeT21Dqb7UULp
         juot8htJdLx+3UAD+ZyidpEd6msMeRay6crzd4qAT642J215zgQEYlP1IfH6gVcP/xSM
         nLIT4rBFMrm0MnzkYewIRLeFR+0E4J7WY1TvXlXpFCi9CKeD+ARPOo54LN3Z1M1CAwph
         y0JsAFp83UKz/VA947+aS8PxcW+99e6UEEkAZwXUJmgLxibt/K04rhe1sWgDeREKNu+R
         LFnxFDiSMIvm3GWrRAuRym13nGNrWWQNEkgR0rdHlUHKLvA01rpQFKOjQ7WtrZfKops8
         5UPA==
X-Gm-Message-State: AG10YOTfAshPJJ78CbbImybZIjTOUxbaz76iTZEjq1T9/wgm+b545KLBYixiqyLNZ7SzIv9hO3cEsb/JiFTpKg==
X-Received: by 10.28.49.4 with SMTP id x4mr10870207wmx.63.1454089547043; Fri,
 29 Jan 2016 09:45:47 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1528e110c5f.11ff2dddc43704.3865822946264713459@fsck.pl>
References: <2413003.GtkKFizscD@chimera> <CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com>
 <CAJMyd9Yje0QY+Th_QUYuO6JspRvysKqkkxtXq-xgANBASM_Nrw@mail.gmail.com> <1528e110c5f.11ff2dddc43704.3865822946264713459@fsck.pl>
Message-ID: <CAEmCSgmmuLYpNLdz_vg3-NH_f8Psfj7PxgN7b5S9UCLbKzvO9A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 Jan 2016 17:45:27 +0000
From: Scott Herbert <scott.a.herbert@googlemail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools
 for scanning purposes
To: oss-security@lists.openwall.com

That would be nice sure, but given that IoT vendors are rushing so
fast to market that their doing things like sending login credentials
via http, I think we're a long way from having them secure their
products from scanning let alone anything else.

On 29 January 2016 at 15:47, enki <enki@fsck.pl> wrote:
> ---- W=C5=82. Pt, 29 sty 2016 15:21:01 +0100 Hazel  napisa=C5=82(a) ----
>>On 27 January 2016 at 14:43, Kurt Seifried <kseifried@redhat.com> wrote:
>>> On Wed, Jan 27, 2016 at 4:24 AM, Luca BRUNO <lucab@debian.org> wrote:
>>> > For oss-sec crowd: is there anything we can do to improve the situati=
on
>>> > and avoid
>>> > similar cases in the future? Should crowd-sourced and fundamental ser=
vices
>>> > like this
>>> > be encouraged to move to a stronger WoT?
>>>
>>> [...]
>>>
>>> Sadly we can't really rely on the IoT device makers to fix this, they h=
ave
>>> basically 0 incentive to prevent scanners from hitting their products
>>> (they're already sold, to late for the customer to make an informed
>>> decision).
>>
>>I hope you'll forgive me making a modest proposal here, but it seems
>>to me that there might be an opportunity here for Linux distributions
>>that are upstream of IoT vendors to modify their default configuration
>>to address this.
>>
>>My somewhat off-the-cuff suggestion would be to...
>>
>>1. Add an *additional, secondary* IPv6 address to external interfaces tha=
t is:
>>-> a. generated in accordance with the IPv6 Privacy Extensions (i.e. RFC =
4941)
>>-> b. firewalled by default against all traffic except NTP in either dire=
ction
>>
>>2. Configure the NTP *client* to use this secondary address as the
>>source for outgoing NTP traffic, instead of the default address?
>>
>>...thereby avoiding revealing the primary address of the host to
>>would-be scanners?
>>
>
> I'd go even further and use the IPv6 privacy-enhanced address for all out=
going connections, not only NTP. It's only a matter of time before someone =
sets up a debian mirror for example that logs source addresses and launches=
 scans against them.
>
> --
> enki@fsck.pl
>



--=20
--
Web:  http://cryptonot.es/
Twitter: http://twitter.com/Scott_Herbert
Linkedin: http://www.linkedin.com/in/scottaherbert
