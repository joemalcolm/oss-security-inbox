X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2046" "Monday" "14" "March" "2016" "09:31:38" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty066x7DZU+hsdKLLMbD-18h5Okza6T3G=udCKjggGfqfA@mail.gmail.com>" "57" "Re: [oss-security] Re: CVE-Request - GNU Awk." "^Date:" nil nil "3" "2016031415:31:38" "[oss-security] Re: CVE-Request - GNU Awk." (number mark "        kseifried@re Mar 14   57/2046  " thread-indent "\"Re: [oss-security] Re: CVE-Request - GNU Awk.\"\n") "<nc6fs4$ta1$1@ger.gmane.org>" ("<20160314063228.GA12829@steve.org.uk>" "<20160314132652.4530b528@redhat.com>" "<nc6fs4$ta1$1@ger.gmane.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21506 invoked by uid 550); 14 Mar 2016 15:31:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20461 invoked from network); 14 Mar 2016 15:31:50 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=J9YDuxOaWQbQWEvMuKHJLMF8oyrM3yl+0yyos69aZno=;
        b=KlAWygYwy9kFjPwT/oAhBWJvK0MjgLiO2jih7ZW2HZKkYD78NRxKknGRTYGmoyg01F
         ELGEx279+NkNMc7c9GFZnoTTpQz2HWWJ3SfLEjnoMNchSxV1xpof3Sf0RqFnRqZhKwff
         tq/xryW1flAaDGBAmwqO4RRJTOiU+eQpNH9trMlZ4NsaQ/Ny2BzCDG4VDvEfXY7X9uUk
         qX0w6YJQrXQDCAizH+uWZH2l7oaDlMiOjSEwUm13RPjCLNP/6XPPxE3EfasNBFomwCgM
         WFjEuNaGa172/ZvtG7JH2RIAF/os7kQxjqTQDvpvcaUyu2RmT2Aey6ZC3BLJKCORKOcF
         FOqw==
X-Gm-Message-State: AD7BkJJ/BIGEjW48hVYwrRQKkhjOnA1fDL+8l59QKxzCGXTQPW72fQxqyt6bKQ2Mk/6hDfLxTrWYFZhzL2mWnIai
MIME-Version: 1.0
X-Received: by 10.37.231.66 with SMTP id e63mr31174ybh.137.1457969499004; Mon,
 14 Mar 2016 08:31:39 -0700 (PDT)
In-Reply-To: <nc6fs4$ta1$1@ger.gmane.org>
References: <20160314063228.GA12829@steve.org.uk>
	<20160314132652.4530b528@redhat.com>
	<nc6fs4$ta1$1@ger.gmane.org>
Message-ID: <CANO=Ty066x7DZU+hsdKLLMbD-18h5Okza6T3G=udCKjggGfqfA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c0a7cba1529ab052e03faf8
Date: Mon, 14 Mar 2016 09:31:38 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE-Request - GNU Awk.
To: oss-security <oss-security@lists.openwall.com>

--94eb2c0a7cba1529ab052e03faf8
Content-Type: text/plain; charset=UTF-8

Is a SIGSEGV on it's own enough to justify a CVE? For some apps the answer
would be yes (e.g. a single threaded network service that crashes out). For
something like gawk I'm not so sure, it's a local utility that shouldn't
really be processing network data/untrusted data, but then I would have
said the same thing about bash (and then shellshock happened). I'm inclined
to err on the side of caution and give it an identifier, if nothing else
people using gawk on potentially dangerous input are more likely to see
this issue and check their scripts/etc. If Mitre doesn't give it a CVE I
can assign a DWF identifier to it.


On Mon, Mar 14, 2016 at 7:55 AM, Yuriy M. Kaminskiy <yumkam@gmail.com>
wrote:

> On 14.03.2016 15:26, Tomas Hoger wrote:
>
>> On Mon, 14 Mar 2016 06:32:28 +0000 Steve Kemp wrote:
>>
>>    I reported two DoS bugs against GNU Awk to the debian
>>>   bug tracker recently, both of which are denial of service
>>>   attacks causing NULL-pointer deferences.
>>>
>>>    It would be useful to have a CVE identifiers assigned.
>>>
>>
>> Why should these get a CVE?  As you state in one of your reports:
>>
>>    While I appreciate that passing untrusted code to gawk is not a
>>    common thing to do, I do not believe that it should be possible to
>>    trigger a segfault though.
>>
>> Why should that be considered a valid / safe use case at all?  If
>> something makes awk run untrusted programs, there's code execution
>> problem already:
>>
>>    echo | awk '{ system("id") }'
>>
>
> What if someone generates awk script using data from untrusted source, and
> avoids all theoretically-dangerous constructs (like system()), but their
> filter miss something theoretically-innocent that can trigger SIGSEGV (or
> worse) due to bug in gawk.
>
>


-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c0a7cba1529ab052e03faf8--
