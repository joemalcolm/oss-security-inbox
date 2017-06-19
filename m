X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["493" "Monday" "19" "June" "2017" "09:40:28" "-0600" "kseifried@redhat.com" "kseifried@redhat.com" "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>" "15" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017061915:40:28" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        kseifried@re Jun 19   15/493   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170619152843.GC7769@localhost.localdomain>" ("<20170619152843.GC7769@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3377 invoked by uid 550); 19 Jun 2017 15:40:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3352 invoked from network); 19 Jun 2017 15:40:42 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vrYKqERlAgQsCF6HQZTTMQyzCFEdBdcR2jgplX1Q3v8=;
        b=NDz+8Ete9aT+aOMXZZ9lwtSBfcArPWAh5cEzGeGzYyd/KmgrfXrpbf9XiDFhO1FJyq
         BbZoSFC8wiMCwM/ZhSMcz/o8YNojlpXNU7Ij4uQMlGxFJPEEnrhK3YjvPAC+gNUVSA7/
         Wj26k5BaRkB7uYa+jsnTCTKEUSABw3+Tz9ThjD76McbuVWkR2RnFM5IA4HR19YplN2zq
         aEC2wyFF2cq54LS3xqQHl9LJ4GaiiHxoI7C2QojeAMUSZsF71tu73k3oi0rj4y1jgzWk
         H2InfGU0K9EaZ3rTRDriD7eVEdbZsEp31/7+nNEPkv4iuAPU4uX+bZhYW64XMO4Uz+JA
         R3Nw==
X-Gm-Message-State: AKS2vOyAD4yMFw23cfJdJcSHvff00q1kFi/kqAhSfm/Gj1GIPyihPl7q
	61mFdMw9LnPMkLwm
X-Received: by 10.107.44.82 with SMTP id s79mr22863434ios.96.1497886830432;
        Mon, 19 Jun 2017 08:40:30 -0700 (PDT)
References: <20170619152843.GC7769@localhost.localdomain>
Message-ID: <2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <20170619152843.GC7769@localhost.localdomain>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Mon, 19 Jun 2017 09:40:28 -0600
From: "kseifried@redhat.com" <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com, Qualys Security Advisory <qsa@qualys.com>

On 06/19/2017 09:28 AM, Qualys Security Advisory wrote:
> 
> Qualys Security Advisory
> 
> The Stack Clash

I just want to publicly thank Qualys for working with the Open Source
community so we (Linux and *BSD) could all get this fixed properly.
There was a lot of work from everyone involved and it all went pretty
smoothly.

-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com
