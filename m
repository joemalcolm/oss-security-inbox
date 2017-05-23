X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3293" "Monday" "22" "May" "2017" "20:04:41" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<66f867c6-a0da-52da-657b-b7ca4a8ee07d@redhat.com>" "64" "Re: [oss-security] How to request a CVE for open source projects" "^Date:" nil nil "5" "2017052302:04:41" "[oss-security] How to request a CVE for open source projects" (number mark "        kseifried@re May 22   64/3293  " thread-indent "\"Re: [oss-security] How to request a CVE for open source projects\"\n") "<20170523011349.GA10335@wopr>" ("<1495476334.15944.2@mail.igalia.com>" "<20170522185720.GA13059@suse.de>" "<20170522194526.GC63527@wopr>" "<0D4054EB-CA8D-4E33-9DFE-A83E253AA96B@redhat.com>" "<20170522234408.GA7465@wopr>" "<6c663f3b-985d-083e-8b00-d428e34b2e29@redhat.com>" "<20170523011349.GA10335@wopr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21730 invoked by uid 550); 23 May 2017 02:04:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21711 invoked from network); 23 May 2017 02:04:55 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=bI2pWks7PP6Cnf+FJfGn+ZOKEL3qN2RrhUC5L/4TcX0=;
        b=oss0kvd7bTTJpyObIopDNq61ypsILB92alNFe5ZCXBO8zVaTGf2njg9Pje0hthEsaM
         ySQgQXJ2NoEjdMIUTjAxQdvUn99e8nMJCDwFMJSpojunAkm2KV9ACYNNzVt3QmE0VA8M
         hc2w2dE8QyDonecjCymsVqp1Hnpo9Od8iTlnB4SYExn/U76Y3lASfIhJdtxV+OAF2VFf
         PuIg5oJncL3/NMdZqvrHLAOtuj+pDtaYw730iu8OZinR8mSQAfuXtpvYayVXbXC/zmNl
         8UkcgFZ8LYuHUDj95QKHHXEc0YXwV1b+Ck7RI8ME+CUFd4K5aZOpxs54x2mQpMFxaebx
         EUCw==
X-Gm-Message-State: AODbwcBkPZk2UWpaEcEYVifpF/M6i9Uhk1sbO9kl4Q2FXb+G4858rGeA
	W0/AMzA7ubIDNjn1DBB2+A==
X-Received: by 10.36.178.1 with SMTP id u1mr685461ite.12.1495505083477;
        Mon, 22 May 2017 19:04:43 -0700 (PDT)
References: <1495476334.15944.2@mail.igalia.com>
 <20170522185720.GA13059@suse.de> <20170522194526.GC63527@wopr>
 <0D4054EB-CA8D-4E33-9DFE-A83E253AA96B@redhat.com>
 <20170522234408.GA7465@wopr>
 <6c663f3b-985d-083e-8b00-d428e34b2e29@redhat.com>
 <20170523011349.GA10335@wopr>
Message-ID: <66f867c6-a0da-52da-657b-b7ca4a8ee07d@redhat.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <20170523011349.GA10335@wopr>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
Date: Mon, 22 May 2017 20:04:41 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to request a CVE for open source projects
To: oss-security@lists.openwall.com

On 2017-05-22 7:13 PM, Kurt H Maier wrote:
> On Mon, May 22, 2017 at 06:53:42PM -0600, Kurt Seifried wrote:
>>
>> On 2017-05-22 5:44 PM, Kurt H Maier wrote:
>> Neither, that's part of what I'm figuring out. Most likely it'll look
>> like a trusted pool of people (aka CVE Mentors) that can either
>> contribute or more easily gatekeep). Also the doc are out of date and
>> the process is evolving rapidly so I haven't really bothered updating
>> them since things keep changing.
> It might be worth noting that in the README file on the documentation
> repo.  It wouldn't take long and may prevent confusion in the meantime.
>
>> Good question. What exactly is it you want to input? CVE requests? CVE
>> assignments? Modify existing CVE entries?
> Primarily, freeform discussion of the sort that occurred on this list as
> a natural outcropping of the CVE request process led to people linking
> to verification code, temporary mitigations, highlighting of incomplete
> fixes, and the sort of information that was requested earlier in this
> thread.  This ability to easily chip in to ongoing situations wasn't
> just useful for mitre staff doing CVE work, it was also useful for the
> "community of practice" looking for the latest information regarding
> self-defense.  I've prevented more than one attack thanks to a one-off
> reply from someone in response to a CVE request.  

You can still do this. oss-security is a list run by Solar Designer
(openwall.com). I happen to be a long time poster/moderator, but I have
no official control/etc (I don't even block posts, that's up to solar, I
just allow stuff or ignore it when it's up for moderation).

The DWF will not be taking CVE requests on oss-security (ditto for
MITRE/etc.), why? They're way to messy. We need well structured requests
i we want this to scale (I should know, I've done over 5000 CVE
assignments). One goal is to get CVE assignments down to minutes with
minimal latency (e.g. a large pool of assigners so timezones aren't a
problem). This stuff can then be posted to oss-security WITH a CVE.

Or you can post it to oss-security WITHOUT a CVE (like you did in past)
and still have all the discussion. The only change is if you want a CVE
you hav to fill out a simple form and wait a bit. You had to wait when
you posted here so the waiting part hasn't changed much. (well ok, right
now the DWF is slow, but again I'm working on that).

>
> The CVE assignment process was more than just a collaborative
> database-population effort.  With the shift to webforms and javascript
> the natural environment which promoted that discourse is being removed.
I disagree. If not assigning CVE's on the list kills this list, then...
wow. Good to know I personally kept this list up and running for a few
years.
>
>> Not really. the docs are out of date and I'm more concerned about
>> evolving this right now then updating documentation.
> Again, I strongly suggest you note on the README that this is the case.
> As matters stand the documentation represents itself as accurate.
Which README specifically (there's a bunch), feel free to reply offlist.

>
> khm

-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

