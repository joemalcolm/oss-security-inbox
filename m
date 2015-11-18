X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2789" "Wednesday" "18" "November" "2015" "07:31:47" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty06HaUSu8K6PD2KfPqJCc71=2=1HC1xrnR4fXfHVhkapQ@mail.gmail.com>" "63" "Re: [oss-security] Data on Linux attacks (was Re: [oss-security] Re: Fwd: x86 ROP mitigation)" nil nil nil "11" "2015111814:31:47" "[oss-security] Data on Linux attacks (was Re: [oss-security] Re: Fwd: x86 ROP mitigation)" (number mark "U       kseifried@re Nov 18   63/2789  " thread-indent "\"Re: [oss-security] Data on Linux attacks (was Re: [oss-security] Re: Fwd: x86 ROP mitigation)\"\n") "<1066672844.15713138.1447852432638.JavaMail.zimbra@redhat.com>" ("<20151117153951.GA28672@openwall.com>" "<564B52D6.9090205@t-online.de>" "<564B54BA.6090203@redhat.com>" "<564B6536.2030908@redhat.com>" "<20151118021008.GB31188@openwall.com>" "<564C582B.6080803@redhat.com>" "<1066672844.15713138.1447852432638.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19682 invoked by uid 550); 18 Nov 2015 14:32:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19663 invoked from network); 18 Nov 2015 14:32:00 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=G6iQPgiSs7nhH8+ENVslO+GGXK7DtAu8BMkPKcDxtdw=;
        b=iswwNvAU0mdVwyBvEsoub5uMgkjckZzxUKP26XnR6SQBCrKG/NlGDPdS+zLkpkrRsP
         DrzMzboUEHWBUDtXr6ATxeGzo+BRlZQNKP5I6ykJuvmQSRdWGGyuLhd+mKYmneRG8ppG
         3denkxxcEyBgah9x/ohAPWQ1f4EMv6XS/OGkbwjKJr529UcbeDj0m3LVNLzWfAd/xoqG
         gEPcXaJrubltRApWLPeDXWdg8K7iz1E84zH+72gtF/+cH6CTjlREO2jovEPwDBG/YWA6
         ijfZbKbzmMLcMA7Yh84PTd9Nwqvcdvvo7mCWS0Rcx6zgPaW9pY1Uyqe9HFYpWwRRup1M
         MKWw==
X-Gm-Message-State: ALoCoQnKWwY5OaJMdfj8mBMdeticxqvBviQtLLDpxDTKHEonhe1mqClnRXRinf8MoHUnOmqg6igq
MIME-Version: 1.0
X-Received: by 10.129.77.67 with SMTP id a64mr2214343ywb.47.1447857107750;
 Wed, 18 Nov 2015 06:31:47 -0800 (PST)
In-Reply-To: <1066672844.15713138.1447852432638.JavaMail.zimbra@redhat.com>
References: <20151117153951.GA28672@openwall.com>
	<564B52D6.9090205@t-online.de>
	<564B54BA.6090203@redhat.com>
	<564B6536.2030908@redhat.com>
	<20151118021008.GB31188@openwall.com>
	<564C582B.6080803@redhat.com>
	<1066672844.15713138.1447852432638.JavaMail.zimbra@redhat.com>
Date: Wed, 18 Nov 2015 07:31:47 -0700
Message-ID: <CANO=Ty06HaUSu8K6PD2KfPqJCc71=2=1HC1xrnR4fXfHVhkapQ@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a1140c36c9810fd0524d18046
Subject: Re: [oss-security] Data on Linux attacks (was Re: [oss-security] Re:
 Fwd: x86 ROP mitigation)

--001a1140c36c9810fd0524d18046
Content-Type: text/plain; charset=UTF-8

On Wed, Nov 18, 2015 at 6:13 AM, Josh Bressers <bressers@redhat.com> wrote:

> >
> > We face the problem that I and my immediate colleagues (on the Red Hat
> > tools team) do not have access to information about successful
> > compromises, and what attackers actually do today, on GNU/Linux systems,
> > both to achieve initial access and to maintain a presence afterwards.
> > Under these conditions, anything we implement is, to some degree,
> > arbitrary and a shot in the dark.  We can still use our best judgment to
> > set priorities, but we are very far from being guided by empirical
> evidence.
> >
>
> This is a place I think we could all stand to work together on. If anyone
> has any information on Linux attacks it would be very useful for planning
> future projects.
>
> There is a lot of evidence against some other platforms, but I've not seen
> anything great around Linux specifically.
>
> If anyone has ideas or comments, I'm all ears.
>
> --
>     JB
>

I know a lot of cloud providers use various indicators (e.g.
memory/cpu/network/disk usage), or straight up IDS to detect
compromised/suspicious hosts, but due to the nature of the cloud market
they simply inform the account, they do not look into the data in the
account directly (e.g. with a human) under any circumstances due to privacy
policy/etc. So this removes a huge set of potential data. Same problem as
Red Hat faces, we can't simply harvest huge amounts of customer data due to
privacy and legal concerns.

We would have to rely upon the compromised users coming forth with
details/forensic results, so anecdotal, self selected data at best. I know
in my experience I had seifried.org hacked many years ago due to a
combination of known web based vuln (which I was going to patch as soon as
an update came out) and a Kernel local escalation vuln (which I was
planning to patch on Monday, but it was a weekend). I also had a full SSH
trust setup for all the hosts because I was super lazy, so once they got
into the web host they got into all the hosts. Needless to say I don't do
things like that anymore.

I know the CloudSecurityAlliance.org is working on a platform to provide
anonymized information sharing of incidents/attacks, and various other
organizations like Infragard have similar programs setup, maybe we can ask
nicely for meta data from them.

Another alternative is to setup enough honeypots that we get meaningful
data, but again this would be self selecting to some degree as we wouldn't
see as many APT attacks.

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a1140c36c9810fd0524d18046--
