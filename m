X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["875" "Monday" "22" "May" "2017" "18:51:12" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<b2da8b9c-d1f3-ff80-971f-86f8f032544c@redhat.com>" "22" "Re: [oss-security] How to request a CVE for open source projects" "^Cc:" nil nil "5" "2017052300:51:12" "[oss-security] How to request a CVE for open source projects" (number mark "        kseifried@re May 22   22/875   " thread-indent "\"Re: [oss-security] How to request a CVE for open source projects\"\n") "<903f93ca-afdc-cdce-66af-dab09b0136ca@framasoft.org>" ("<1495476334.15944.2@mail.igalia.com>" "<CANO=Ty2o9kXFFMmnDJu3hsY3G84CyJmA_Tnt3dR2-vHyxsdMfw@mail.gmail.com>" "<903f93ca-afdc-cdce-66af-dab09b0136ca@framasoft.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17470 invoked by uid 550); 23 May 2017 00:51:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17449 invoked from network); 23 May 2017 00:51:20 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=MNvEv8mORB3z1b6sRXyLMY1c7+MPXPQpun4h+1pgiYU=;
        b=JDOUgDZcVgcwXqudMEnkThpEk/qoBTiEnoFAjByMvLMCelEp8cuxqjlT0+SjK0I3Qw
         wkl2EeIXgZpbA8SMLjGTQuFDSXvauLVAqTJIHHgwKZM+diGGJVbW+k1gjpJfGU3j/1KD
         d5rQ24XKGru7lhgUHkABOzRSZpgJKZLV3mJJCJZ1/cGhDmaRfquGMYJjddLH9Mi9meN3
         i4ZYP6Xq41dqX3g951lfYxz5OJxkjzZ+v0OGgWnu9rd8O3AuXS56vQk2lc+LpvpN8mgV
         FiKnkBXfDvDDQRH+Nb77h1sexFG2oL8V/5V9Y+MAgAf7oxNTl3L1Iiu1oML+obYfPZJ6
         s2rg==
X-Gm-Message-State: AODbwcAQIDVaL6WEDFtWFXi1cCF3UP/vyyeRSWw/hq27u7G5LnexnEuo
	LcuG3IBmiYw4FT35zJOKsw==
X-Received: by 10.107.26.144 with SMTP id a138mr22846887ioa.72.1495500668629;
        Mon, 22 May 2017 17:51:08 -0700 (PDT)
References: <1495476334.15944.2@mail.igalia.com>
 <CANO=Ty2o9kXFFMmnDJu3hsY3G84CyJmA_Tnt3dR2-vHyxsdMfw@mail.gmail.com>
 <903f93ca-afdc-cdce-66af-dab09b0136ca@framasoft.org>
Message-ID: <b2da8b9c-d1f3-ff80-971f-86f8f032544c@redhat.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <903f93ca-afdc-cdce-66af-dab09b0136ca@framasoft.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
Cc: oss-security@lists.openwall.com
Date: Mon, 22 May 2017 18:51:12 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to request a CVE for open source projects
To: Martin <martin.gubri@framasoft.org>



On 2017-05-22 2:21 PM, Martin wrote:
> On 22/05/2017 at 15:16, Kurt Seifried wrote:
>
>> Ah, I recently did a large number of CVE assignments, I haven't emailed out
>> to the sequesters yet, yours was
>> https://github.com/distributedweaknessfiling/DWF-CVE-2017-1000000/blob/f2e15ac3468dd382d9ffa3d5acc032c106f3248c/CVE-2017-1000025.json
>> I believe.
> I was in the same situation than Michael. I found mine now.
> Is it normal that these CVE aren't accessible on MITRE?
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-1000025
>
We (MITRE, the CVE board and various CNAs) ar working on making that
faster (read: automated). So yeah, it's bormal, but hopefully as time
goes on it'll get better.

-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

