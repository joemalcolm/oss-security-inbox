X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5822" "Thursday" "31" "May" "2018" "19:57:02" "+0100" "Pete Batard" "pete@akeo.ie" "<4fbe30e1-0bcd-f0f3-f0b1-0801ca9b7ab9@akeo.ie>" "121" "[oss-security] Re: CVE request: rufus" nil nil nil "5" "2018053118:57:02" "[oss-security] Re: CVE request: rufus" (number mark "U       pete@akeo.ie May 31  121/5822  " thread-indent "\"[oss-security] Re: CVE request: rufus\"\n") "<678AB44AD82642D6993A19E3C8ADCB9E@W340>" ("<77B308CE34E747C3AE00239F60DBAEE4@W340>" "<6d79aec1-dd2e-a18e-6a4e-d9105f740d64@akeo.ie>" "<678AB44AD82642D6993A19E3C8ADCB9E@W340>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11705 invoked by uid 550); 31 May 2018 19:06:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30192 invoked from network); 31 May 2018 18:57:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=akeo-ie.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mCAmQLBoSuI0Ti/k1U9wdmA74N1bt4TYPBt5+sRunls=;
        b=pVax0wFRxzPouRP/iQraP2lf77fqwOMQxzLhwbGX+TEqPBFpuZ7kjbud+9wQDKDkiW
         ik9tvAwjbtkIC97OyVkEYgambIZfABvQnYVQ7G/FU3oEARX/zp0+R8i4SDSW4fsosWhO
         J/+l5SkYyl/8recJ0vJKAXw+2UtM3F7MHiOL3NKq2tHqvprALB2WinxrEyGolbYK5hJV
         9iB8FpKQZPhRe8C6TEGN9GCC0WKwvvKF+uHKv/2hwbAn0R9otUj+M2FEL2stQuAQ0wlt
         lLHvNwt6x3FuKJZD27JlIaO2Dj9Ms6N+OspPX7SCxgzgHaKCj9eIOT+M5Rs8M6PbhM0K
         KsnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mCAmQLBoSuI0Ti/k1U9wdmA74N1bt4TYPBt5+sRunls=;
        b=sJ+HaBIIRxJxTs0SFbKknZCAkhcgqWKR/BalmX8JD7F9/YI0n3GNRl2iA6R0Kiabwr
         2ZNC+d2MAz24EZu1FOkaCn8LUV2isad7dA5a75z6JUSOAPpB/XTc/vvr8DQ86lNGiiRA
         UCzz5/hxtdOzKvY5wSLbEaqHtpA/UcOthE9iGJL/lXv5FmfTM0c7zc0i6yOc5hmOYUuf
         OJHdl+LW47qnPcRq00cVR8lhxSZ/9wQBx/wpuM7gFfUq26hl0zQijGXQTBKjyaRf9ioh
         URo9Khu41s3I68cN/AQQ2XDq9R9dajIoeIoKzeFbK4Lo/oJ2rQyjDN1I4QYwYVD83CLz
         Yt3w==
X-Gm-Message-State: ALKqPwd3wb4pOlbV8YrWZddNed+qoruUGFpx+WBRoqCZ8OTE+K6sm9zm
	BMOvdDbAMIwto4nkaJR38ZckGTS7r98=
X-Google-Smtp-Source: ADUXVKILHEQNRKrSdSUPU3Er6F7Gf0E70WXt0gzvU/fcblX07TklV0PKeAhDcjJ3LD9YIw7mcZN4/g==
X-Received: by 2002:a50:d88f:: with SMTP id p15-v6mr8896134edj.62.1527793025096;
        Thu, 31 May 2018 11:57:05 -0700 (PDT)
To: Stefan Kanthak <stefan.kanthak@nexgo.de>
Cc: oss-security@lists.openwall.com
References: <77B308CE34E747C3AE00239F60DBAEE4@W340>
 <6d79aec1-dd2e-a18e-6a4e-d9105f740d64@akeo.ie>
 <678AB44AD82642D6993A19E3C8ADCB9E@W340>
From: Pete Batard <pete@akeo.ie>
Message-ID: <4fbe30e1-0bcd-f0f3-f0b1-0801ca9b7ab9@akeo.ie>
Date: Thu, 31 May 2018 19:57:02 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <678AB44AD82642D6993A19E3C8ADCB9E@W340>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: CVE request: rufus

On 2018.05.31 19:04, Stefan Kanthak wrote:
> As always, your poor reading skills perfectly match your poor programming
> skills.

Ad hominem.

> "We" wait until the requested CVEs are assigned for both well-known
> vulnerabilities.

Again, what happened to responsible disclosure?

> DLL spoofing was VERY well known long before 2016, and it is neither restricted
> to the CWD nor to runtime linking:

You are deliberately misinterpreting what I said.

In 2016 there was a new DLL side loading vulnerability that made the 
rounds, and that we mitigated against.

Your interpretation that our response means that we believe that no 
other DLL spoofing vulnerabilities can exist, or that a "mitigation" 
step is a last stop is incorrect, especially was we clearly mentioned 
applying "some mitigation" factors (emphasis on "some").

But considering that you have clearly chosen to (mis)interpret anything 
we might say in the manner that will fit your pre-planned narrative, I'm 
not going to ask you to re-read what I wrote, because your judgement 
appears to be irremediably clouded.

> Until then, to protect your users, remove Rufus from the net!

I will only say this once: Unless you stop acting like an asshole, and 
act in a professional manner by treating the people you are dealing with 
with courtesy and respect (regardless of your *personal* views of 
whether they deserve it or not), I have exactly zero interest on 
following up with you.

I've long been trying to deal with people behaving in a disparaging and 
less than courteous manner to know that it is simply not worth anybody's 
time to try to humour them with maintaining communication.

So either you start behaving in the professional manner one is entitled 
to expect when developer and security people interact when trying to 
improve on software security, or this is the very last communication you 
will receive from me.

>> And of course, with proper non disparaging involvement of security
>> researchers, who subscribe to the established responsible disclosure
>> policy of their profession, we are always eager to improve on our
>> mitigation fixes, if it turns out they aren't adequate.
>>
>> However, we would appreciate if you refrained from jumping to erroneous
>> conclusion about Rufus development being conducted by "bloody
>> beginners", when it is clear that some of the "beginner's"
>> vulnerabilities you list have long had some mitigation factors applied.
> 
> I recommend to read the advice other people gave you on
> <https://github.com/pbatard/rufus/issues/1009>: SOME mitigations are
> clearly NOT sufficient, especially if you choose to apply the WRONG
> and IMPROPER mitigations.

Ah, yes, good old #1009.

The same one where, if you do your research, you'll find that a 
reputable security researcher did not apply responsible disclosure, but 
instead opened a super generic issue about not using SSL, and then, 
because they were dissatisfied with the initial response they got, did 
the very unprofessional thing of not following up by demonstrating the 
vulnerability (which they had allegedly uncovered *before* they created 
the issue tracker report, but curiously chose not to report then), but 
instead took to twitter to show a pseudo-vulnerability (where a clear 
message was issued by Windows that the payload they were trying to 
execute should not be trusted), to rally a bunch of followers, and, 
because of a position they could abuse, created a CVE request just to 
show this puny developers that we are how they should not try to mess 
with security people... Yup, another prime example of professional 
behaviour if I may say so.

But of course, once the mob is leaning one way, inconsistencies with the 
original narrative of one of the parties is a lot more difficult to put 
into light...

I really have to to wonder what the heck happened to responsible 
disclosure. Or are security researchers no longer interested in helping 
developers fix their applications in a professional manner, if they can 
demonstrate a vulnerability, but only in publicly pointing the finger at 
someone to boost their ego?

Oh, and all of #1009 had to do with the update mechanism (not DLLs or 
tmp files vulns), for which we applied proper mitigation as soon as they 
were disclosed to us (rather than a blanket "We'll just switch to SSL, 
that'll fix everything", which is the wrong approach). So your 
hyperboling its limited scope to try to fit your narrative falls a bit 
flat. But nice try in using WRONG and IMPROPER in all caps, without 
providing factual information to back these claims up.

> PS: I might even show you that pasting the string "rufus.com" to the
>      window which has the focus yields interesting effects.

You might do whatever you want. But until you are prepared to cooperate 
in a professional and courteous manner, I am not interested with 
anything further you have to say. So either you get off your high horse, 
stop this ego trip, and agree to collaborate in a responsible manner in 
the issues you think you have uncovered, or you hand them over to 
someone who will, because, as much as I care about Rufus users having 
the most secure application I can produce, I genuinely have no interest 
in trying to pursue further communication with you.

So, at this stage then, the ball on demonstrating that you truly care 
about protecting the security of application users is entirely in your camp.

And for those who may disagree with that last statement, and think that 
I should just ignore the abuse and look into the technical aspects 
(still none of which have been provided in a *specific* attack scenario 
against Rufus that can be both investigated and analysed), please be 
mindful that all I am asking here is common professionalism, courtesy 
and respect.

Regards,

/Pete
