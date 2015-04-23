X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1510" "Wednesday" "22" "April" "2015" "17:50:35" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+xFe+BoS-gGabAhkzcbqNxaJF6=S78vn9PfZY+6sq3XA@mail.gmail.com>" "37" "[oss-security] Re: USBCreator D-Bus service" nil nil nil "4" "2015042300:50:35" "[oss-security] Re: USBCreator D-Bus service" (number mark "        taviso@googl Apr 22   37/1510  " thread-indent "\"[oss-security] Re: USBCreator D-Bus service\"\n") "<20150423002746.GD3854@hunt>" ("<CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>" "<20150423000423.GA31439@openwall.com>" "<20150423002746.GD3854@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5181 invoked by uid 550); 23 Apr 2015 00:50:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4093 invoked from network); 23 Apr 2015 00:50:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=K8XOS9jj8jYRoJVT/1ccvgeBf8nzWkqDyB+gvcRqoHE=;
        b=dqC/PAv3LcTU7wtVvF7QF0Mw1a6qsAibLudt/cHY842tx/CDvnbEtQdogR6dzgBmOg
         3dzJbqDZ+2Wuawvj0iKW9M23xgfYapu2HSjuTlzMYBdHaLd/Nhwv53fZFjiQhwg7j8d9
         +uucoq2MMFtuuESZT2ZQJzf+1wlYT1o2Ik+QCUnDTyaBCJ5OVBaVvWYaStLu/cZ3kq9O
         UpXq38GpdUdjy76jgniQh8oJGGlQdI/vrPZYk3FrVQpdLcljpHwxwJrHUmTxcgVspyL8
         ROm6Th6qQ0G/O6juRiYKXNNp74gSLL/sLxIfPEbgbZLScJ5/I3w4IjGAMgRc/NwqxAT3
         8CbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=K8XOS9jj8jYRoJVT/1ccvgeBf8nzWkqDyB+gvcRqoHE=;
        b=axTe6oYKy85Gg5gmquVH9TVWt2oasOo56Yh3pdPNp92gJOV8rZn8AeP7N8allejxzs
         ZKtlAGvqYbdANU1TW2qtn9l4hcknXgw/+Kf6RkBk42Sma6HkFv5Mw4shfNQJoxWaBfw8
         DH0YUwrRTXq5Q/CuGaqzUnD4lJFVGfHaqqQYFZuC95Qa7xYhgCRMwl4o4/q0FZpfwL5Z
         Fqz9N+aknBgSmI9Kb5hiEMo1OVMw3eWriHjRzWMQAoXsK24Yv9VyTh6ysFjkmxARHkbw
         0/jKtgNlv4zdSq5c8RcIxSnjd1/arn5ydni2h6vWksCTOxyBgW6IcyExdhlEAXt1PlrC
         etWg==
X-Gm-Message-State: ALoCoQlw/6Cuj1qhedT5cB455iVpDIMbTG35A6AZR0eg7XaW/iWeVXF2EMzZHk0LpAQcElVaHrVr
MIME-Version: 1.0
X-Received: by 10.229.4.200 with SMTP id 8mr339631qcs.0.1429750235835; Wed, 22
 Apr 2015 17:50:35 -0700 (PDT)
In-Reply-To: <20150423002746.GD3854@hunt>
References: <CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>
	<20150423000423.GA31439@openwall.com>
	<20150423002746.GD3854@hunt>
Message-ID: <CAJ_zFk+xFe+BoS-gGabAhkzcbqNxaJF6=S78vn9PfZY+6sq3XA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11330510ecd333051459aaba
Date: Wed, 22 Apr 2015 17:50:35 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: USBCreator D-Bus service
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--001a11330510ecd333051459aaba
Content-Type: text/plain; charset=UTF-8

On Wednesday, April 22, 2015, Seth Arnold <seth.arnold@canonical.com> wrote:
> On Thu, Apr 23, 2015 at 03:04:23AM +0300, Solar Designer wrote:
>> Either way, it sounds weird to keep a low severity issue private.  Low
>> severity usually means not needing an embargo in the first place.  But I
>> guess it was the vendor's preference?
>
> In this case, no, Ubuntu would have preferred several days embargo for
> this issue. Hypothetically speaking, Monday would have been ideal, as
> we prefer to not release updates on Friday, Saturday, or Sunday.
>
> We treat local root escalation vulnerabilities with a high priority[1].

I wish you had spoken up during the previous discussion. It was my
impression that embargoes for local privilege escalations were universally
considered deprecated.

> Please do inform us privately of further local root escalations in the
> future, either via security@ubuntu.com or filing "private security"
> bugs against the corresponding package in Launchpad.
>
> Thanks

Embargoes tend to make things worse, see your apport patch developed during
embargo or shellshock for examples. However, if you're sure, I'm willing to
do so for Ubuntu specific bugs in future.


> 1: Our priorities don't directly map to issue severities, but local root
> escalations are treated highly:
>
http://bazaar.launchpad.net/~ubuntu-security/ubuntu-cve-tracker/master/view/head:/README#L215
>

--001a11330510ecd333051459aaba--
