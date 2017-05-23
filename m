X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1365" "Monday" "22" "May" "2017" "18:53:42" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<6c663f3b-985d-083e-8b00-d428e34b2e29@redhat.com>" "32" "Re: [oss-security] How to request a CVE for open source projects" "^Date:" nil nil "5" "2017052300:53:42" "[oss-security] How to request a CVE for open source projects" (number mark "        kseifried@re May 22   32/1365  " thread-indent "\"Re: [oss-security] How to request a CVE for open source projects\"\n") "<20170522234408.GA7465@wopr>" ("<1495476334.15944.2@mail.igalia.com>" "<20170522185720.GA13059@suse.de>" "<20170522194526.GC63527@wopr>" "<0D4054EB-CA8D-4E33-9DFE-A83E253AA96B@redhat.com>" "<20170522234408.GA7465@wopr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28439 invoked by uid 550); 23 May 2017 00:53:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28421 invoked from network); 23 May 2017 00:53:51 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=uwP5stoSX/13+AmCeN5EoHCZJdRG51nou6mB4IpYZLA=;
        b=ieKo9KpY1uD+IZ5j0e4UeOng+jk+PkSETUW4dff9dXsKEJ2flBjJrnYlytjitCBeCp
         YboBQu886ldmkRLWxKF1bpl/z/Rdzgyk7nGVGES7Uhw1hwzA0siJzvV4uMTlgvxCJnEP
         nqQS+7V64WONdy5s6+pqQbcaJd4i41bFxOkGXq91OQa6HRawxHAf96Hw6I2ed1iwB+ni
         79v/8BkKlKAi4MeRBwDexnP+UPmxtBrUU9kL9AgelclIAE4n0IIE7d7/jFf3wjV6qRN6
         ef8Bybu3isiugr1q7reBp4k/5X5MmBFKOXqkRFzXsfVb2sjCLqiRHgCtO2fzc3tJKoMg
         tPsA==
X-Gm-Message-State: AODbwcDmxdaQq2V5EGL5qzbFSOD0Pt4wOma5oM3eRes3rDiQw1ip4P+C
	9oFAglhtTF9Kx4yS8Vn20w==
X-Received: by 10.36.123.137 with SMTP id q131mr482205itc.23.1495500819292;
        Mon, 22 May 2017 17:53:39 -0700 (PDT)
References: <1495476334.15944.2@mail.igalia.com>
 <20170522185720.GA13059@suse.de> <20170522194526.GC63527@wopr>
 <0D4054EB-CA8D-4E33-9DFE-A83E253AA96B@redhat.com>
 <20170522234408.GA7465@wopr>
Message-ID: <6c663f3b-985d-083e-8b00-d428e34b2e29@redhat.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <20170522234408.GA7465@wopr>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
Date: Mon, 22 May 2017 18:53:42 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to request a CVE for open source projects
To: oss-security@lists.openwall.com



On 2017-05-22 5:44 PM, Kurt H Maier wrote:
> On Mon, May 22, 2017 at 03:13:42PM -0600, Kurt Seifried wrote:
>> Well actually they can. Why do you think we (DWF) have an extensible Json format with the data hosted in git? Hint: so people can contribute.
> Is it the opaque Google Docs form that fosters contribution, or the
> gatekept pull-request process requiring a Github account that fosters
> contribution?
Neither, that's part of what I'm figuring out. Most likely it'll look
like a trusted pool of people (aka CVE Mentors) that can either
contribute or more easily gatekeep). Also the doc are out of date and
the process is evolving rapidly so I haven't really bothered updating
them since things keep changing.

> At what point in the DWF process is third-party input expected to occur?

Good question. What exactly is it you want to input? CVE requests? CVE
assignments? Modify existing CVE entries?
> The matter is not addressed in the documentation repository.  Feel free 
> to mail me offlist if the answers would induce excessive cognitive 
> dissonance.
Not really. the docs are out of date and I'm more concerned about
evolving this right now then updating documentation.

>
> khm

-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

