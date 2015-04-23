X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3326" "Wednesday" "22" "April" "2015" "20:49:27" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+wOFLeOFtLyrzrw_DdRsOeVDQFoxowzFyPNqUkbQ7_0A@mail.gmail.com>" "73" "Re: [oss-security] Re: USBCreator D-Bus service" nil nil nil "4" "2015042303:49:27" "[oss-security] Re: USBCreator D-Bus service" (number mark "        taviso@googl Apr 22   73/3326  " thread-indent "\"Re: [oss-security] Re: USBCreator D-Bus service\"\n") "<55385A44.2030509@canonical.com>" ("<CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>" "<20150423000423.GA31439@openwall.com>" "<20150423002746.GD3854@hunt>" "<CAJ_zFk+xFe+BoS-gGabAhkzcbqNxaJF6=S78vn9PfZY+6sq3XA@mail.gmail.com>" "<55385A44.2030509@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13527 invoked by uid 550); 23 Apr 2015 03:50:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13509 invoked from network); 23 Apr 2015 03:50:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=WLtK/zNTNYkpr3EUcF7WVGJnoCfi0t789VNdw/HxVzk=;
        b=LbsNESS5hYN7GzgFA+QjHfFb/EcrWUIZcQP+8hTvSe8cCN8z3jTHy6cvTSqHM1jRJm
         nizBhYTaeQqZTJ04hZHC/kAFkif8gU84Ff84wNGK5bSbLkp/ukP1mB9OfKkwN1ttfc2n
         3ZfT3ytUxUOuSUc1Yz022FKKkzez/TlkWiiGg9m0pJo4SrGj2ujs7BCYefMQ6xDq8S9O
         boNQm4jL57Tq7KCUvxlSOHYTcGO6bj9vnNuOH+QzBZsdQfEFYqIAPqsye8aoC92HpmlA
         RTRwbbg6HL+EkJRl8C4lb5+8uW2/XX5k7vvmsw1wp3bB6aFLqagoLslugVL86mb0m7xZ
         83PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=WLtK/zNTNYkpr3EUcF7WVGJnoCfi0t789VNdw/HxVzk=;
        b=a5pONEB8SX6EH/kNFz5xDQoWuZBhatPd360nEDQjuqWq2+j3aDQP306ecDPKKP5udO
         6Zyb/fQLsxVI2e8QGgD/2e63zABFvehWc522EeCkAzMj3d7piEWruewqXX3al1e2xz6d
         Sib5MkFE1TcOn47QcEq2Xv3yRr4yl/0AYzfv3g68uVtxDcvbdHuVodMzEprFNXbkc+gS
         tQzhDtVEY5YywP7AXS7sbz7fvOKk2CyN5iI0PrS+YJx3Y0kdmbMgJGs3kYAUx/x5lfDE
         aTs1S95qDuIhy1CqNu/O0l5Eb21VIwTIRpyBESs3n9nRkv68aP+FTenuq3UcjSf1eZoB
         Nl8w==
X-Gm-Message-State: ALoCoQnHzGg3ztXE+tbj/IqL1iayBauupJv5GjYWZ4xb1frtLfdgbuP+Cp2qaRQU9uliQNRol9xP
X-Received: by 10.140.109.8 with SMTP id k8mr823381qgf.53.1429760988536; Wed,
 22 Apr 2015 20:49:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <55385A44.2030509@canonical.com>
References: <CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>
 <20150423000423.GA31439@openwall.com> <20150423002746.GD3854@hunt>
 <CAJ_zFk+xFe+BoS-gGabAhkzcbqNxaJF6=S78vn9PfZY+6sq3XA@mail.gmail.com> <55385A44.2030509@canonical.com>
Message-ID: <CAJ_zFk+wOFLeOFtLyrzrw_DdRsOeVDQFoxowzFyPNqUkbQ7_0A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 22 Apr 2015 20:49:27 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: USBCreator D-Bus service
To: oss-security@lists.openwall.com

On Wed, Apr 22, 2015 at 7:34 PM, Marc Deslauriers
<marc.deslauriers@canonical.com> wrote:
> On 2015-04-22 08:50 PM, Tavis Ormandy wrote:
>> On Wednesday, April 22, 2015, Seth Arnold <seth.arnold@canonical.com> wrote:
>>> On Thu, Apr 23, 2015 at 03:04:23AM +0300, Solar Designer wrote:
>>>> Either way, it sounds weird to keep a low severity issue private.  Low
>>>> severity usually means not needing an embargo in the first place.  But I
>>>> guess it was the vendor's preference?
>>>
>>> In this case, no, Ubuntu would have preferred several days embargo for
>>> this issue. Hypothetically speaking, Monday would have been ideal, as
>>> we prefer to not release updates on Friday, Saturday, or Sunday.
>>>
>>> We treat local root escalation vulnerabilities with a high priority[1].
>>
>> I wish you had spoken up during the previous discussion. It was my
>> impression that embargoes for local privilege escalations were universally
>> considered deprecated.
>
> Nonsense, embargoes for local or remote privilege escalations are still
> considered to be high priority and should be handled with an embargo.
>
> Making this type of information public without giving the vendor a chance to
> publish updates within a reasonable timeframe is a great disservice to users and
> exposes them to great risk.

Well, that's your opinion Marc, and I'd disagree!

Working in the shadows and keeping secrets does everyone a far greater
disservice.

>>
>>> Please do inform us privately of further local root escalations in the
>>> future, either via security@ubuntu.com or filing "private security"
>>> bugs against the corresponding package in Launchpad.
>>>
>>> Thanks
>>
>> Embargoes tend to make things worse, see your apport patch developed during
>> embargo or shellshock for examples. However, if you're sure, I'm willing to
>> do so for Ubuntu specific bugs in future.
>
> No they don't. They allow vendors time to develop a proper fix without exposing
> users to unneeded risk.

Sure, that's the theory. It doesn't work that way in practice!

The history of Zardoz, vendor-sec and others are littered with doing
more harm than good. Frankly, they usually end up being secret feeds
of free exploits for attackers while their victims sit in blissful
ignorance.

> Yes, sometimes the fix is inadequate and needs to be
> fixed, but publishing an exploit without a few days notice just makes matters
> unbearable for users and encourages vendors to keep security issues secret.

Naturally, I think it makes things better. There are only two possible
states during an embargo, vulnerable and ignorant or vulnerable and
aware. I certainly prefer the latter, and I'm quite sure I'm not
alone. Information allows action to be taken, where as secrecy
requires hoping and praying that only one person is smart enough to
discover the problem.

There are so many advantages to discussing and developing software in
the open that it's tough to enumerate them all! Presumably you agree
this is true for software development in general (or why would you
care about free software?), but dismiss it when security is involved.
You get peer review, and you get to mitigate bugs as early as possible
- this is more important than ever when security is involved!

Nevertheless, I'm willing to do as you wish in future for other Ubuntu bugs.

Tavis.
