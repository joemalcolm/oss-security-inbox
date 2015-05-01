X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2843" "Friday" "1" "May" "2015" "14:36:52" "-0700" "Dean Pierce" "pierce403@gmail.com" "<CAFOKM3pkdQBDpyJHau-HQ0DhppVRp=JP1BgHZUJ4BmP=yVnvcw@mail.gmail.com>" "65" "Re: [oss-security] On sanctioned MITMs" nil nil nil "5" "2015050121:36:52" "[oss-security] On sanctioned MITMs" (number mark "        pierce403@gm May  1   65/2843  " thread-indent "\"Re: [oss-security] On sanctioned MITMs\"\n") "<5543DDB5.7030900@redhat.com>" ("<20150501191522.GA18039@zoho.com>" "<5543DDB5.7030900@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32047 invoked by uid 550); 1 May 2015 21:37:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32029 invoked from network); 1 May 2015 21:37:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=Qt1oawJuwQ82Of1kpYEbO7qSvqHalGmDnTfpIvCWsBg=;
        b=GAofWY2qa1p6/ZyR/XuoyA3edFbeSZOpC2cX5fnQkxuFuQkatR8+JLnjVS5OTw8HBa
         O19IMtLvLx1M7qBOYVT3HC4SI5lmkefoToA+MmMo6t3npa//fuQyrr//5E/NkHfu1873
         +1a4ejb/aSOa9GKSLzIo2P9RdgfV8EuGSgjpjCuMP92PmMTo1CTwEM3d77xxVlhdw7ZA
         IzjzfuNxOrwdfXU3N8U+CneuIoOYzdcryQWpM8cbabiQSyLtJarQ6PRS6EmmhHWIRY2S
         UWG1gvbBbu5FDOUKRddvZyT1t71RbgDfwoglqlNE7sDyNhozGQ+UuhlPXHK8Z2poryVf
         pM8Q==
MIME-Version: 1.0
X-Received: by 10.107.166.203 with SMTP id p194mr14906185ioe.30.1430516212210;
 Fri, 01 May 2015 14:36:52 -0700 (PDT)
In-Reply-To: <5543DDB5.7030900@redhat.com>
References: <20150501191522.GA18039@zoho.com>
	<5543DDB5.7030900@redhat.com>
Message-ID: <CAFOKM3pkdQBDpyJHau-HQ0DhppVRp=JP1BgHZUJ4BmP=yVnvcw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Fri, 1 May 2015 14:36:52 -0700
From: Dean Pierce <pierce403@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] On sanctioned MITMs
To: oss-security@lists.openwall.com

My understanding was that one of the "features" of hushmail is that
it's in Canada, so somewhat less beholden to US law enforcement.
Piping all the data through Cloudflare in San Francisco seems to not
only open them up for National Security Letters, but it 100% guarantee
that all the data is crossing an international border, making the
traffic fair game to a number of government intelligence agencies.  Of
course Hushmail has been considered fully compromised since 2007, so
maybe none of this matters.  It also fails pretty miserably on the
EFF's "Secure Messaging Scorecard" :
https://www.eff.org/secure-messaging-scorecard

  - DEAN

On Fri, May 1, 2015 at 1:10 PM, Kurt Seifried <kseifried@redhat.com> wrote:
> On 05/01/2015 01:15 PM, mancha wrote:
>> Though Hushmail email credentials, for example, can't be sniffed in the
>> segment connecting the client to CloudFlare, they are available to
>> CloudFlare's infrastucture. Moreoever, there is no way for the client to
>> verify that the segment connecting CloudFlare to the destination server
>> is similarly encrypted (i.e. it might be in the clear as would be the
>> case when using CloudFlare's "Flexible SSL" product).
>>
>> Hushmail's CloudFlare usage serves as an example that brings me to my
>> general point.
>>
>> How should the security community view this growing use of sanctioned
>> MITM in light of the ever-increasing amount of sensitive content sent
>> over SSL/TLS encrypted channels (e.g. email, electronic banking, medical
>> records, etc.)?
>
> This is me speaking personally:
>
> This is nothing new. Front end load balancers that handle SSL/TLS and
> then do HTTP on the backend have been around for decades. This is simply
> outsourcing it to a trusted (hopefully, because I use them!) party
> rather than doing it in house.
>
> We have had outsourcing of far more sensitive things for literally
> centuries, e.g. legal and accounting firms, my lawyer and accountant
> both have literally all my personal info and could easily destroy me
> financially if they wanted to. But they don't because we have contracts,
> and more importantly contract enforcement in the form of a civil legal
> system (as does most of the world). The same applies for CloudFlare,
> Google (my email), and so on.
>
> So in my opinion this is really nothing new, like any outsourced
> activity pick your partners carefully.
>
> This is me speaking on behalf of the Cloud Security Alliance:
>
> Make your partners/vendors/etc. fill out at least the self attestation
> level of STARS, which is free:
>
> https://cloudsecurityalliance.org/star/self-assessment/
>
> If they refuse to do so that might be a good hint as to how secure they
> really are.
>
>> --mancha
>
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
>
