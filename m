Received: (qmail 9819 invoked by uid 550); 26 Jun 2023 11:43:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10157 invoked from network); 26 Jun 2023 07:01:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687762870;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ceBNFsPUArIBCIThtx1IeB7WclRV0vJAcmZbDao+wXk=;
	b=ED6Z5ZpncrAG1bUIrRkjHfgwllGFEBfkhMkfCWgxi1tFhej83lnjUQcS9+t4ThAkTwn1YU
	8mZ5FxuAhEi+ydE8J3qdpPgbeCk/d0H1WpIfHZyw4Njgobe1haDOalB/dzLAXJ++PJSWBv
	vurUHD2ApvEMeabMEu6OySlW0te5IwM=
X-MC-Unique: 5WH8Fn5NM4G4BW_oVvmZfQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687762867; x=1690354867;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ceBNFsPUArIBCIThtx1IeB7WclRV0vJAcmZbDao+wXk=;
        b=kh2j/1KSn/ri8zrGHBs4Y9WNPxClHHCpLtayy56Xolgg+JzmavAsZ8yHA4/QlzjuZT
         WKmB95dLpkHRr79wh+uaonHEICA4+9MrlHtp9i7IjdxmFmckwd0A7oxBgH9OKQvNycbl
         2okRHbQyV27KHNztPOGSoDtns/+eHASJgmqDbY9O57/TSaZzkFRSrsww/INkcOHx7C1q
         TQ8TnVB5TG7+e48ml83xf+876m+3wLvusvUC5t3O1KeG+VLUsVS9IjV38kTPUETeKNEY
         GRuRvSKZGaGnJVbs96y35UmvLsrLV3i1qahkX5oP3TggCRmHgW6URwBXA6+Zp1Uc5bJz
         0YHw==
X-Gm-Message-State: AC+VfDxSWjmBmhKqI2QmyJPgQxhSZ2p9rOIpxZZnXOsgGw9Qu1rMl1aK
	u8N+B3qXg97dZbe1a7MbzzhMYmnWZ2+OvIXNdnuJzF8OuKyIqavj63r43q874j7errPz13curhd
	Nd6wVQV9LFcdGG74EYMiD4SBvDxLi
X-Received: by 2002:a05:6402:da:b0:518:7415:3b61 with SMTP id i26-20020a05640200da00b0051874153b61mr15674951edu.23.1687762867422;
        Mon, 26 Jun 2023 00:01:07 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5ojNBD5LBYceAuJJuNpOnOzo9hqQUWpbtXeUrtfMkQ88rfi720h9a7JYikyzqB1e/ZrmPy2w==
X-Received: by 2002:a05:6402:da:b0:518:7415:3b61 with SMTP id i26-20020a05640200da00b0051874153b61mr15674935edu.23.1687762867073;
        Mon, 26 Jun 2023 00:01:07 -0700 (PDT)
Message-ID: <0517227e-d2e6-cd57-55f7-ad089b34b17c@redhat.com>
Date: Mon, 26 Jun 2023 09:01:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
References: <c2d7a824-5122-e130-68c8-44ddc1ffd241@redhat.com>
 <20230623150242.GA10337@openwall.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
In-Reply-To: <20230623150242.GA10337@openwall.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2023-34241: CUPS: use-after-free in
 cupsdAcceptClient()

I'm sorry for the confusion :( - yes, the emails to oss-security were 
announcing the end of embargoes and that the fixes are already merged.

I've updated the guide I was following to prevent this in the future.


Zdenek

On 6/23/23 17:02, Solar Designer wrote:
> On Thu, Jun 22, 2023 at 12:02:39PM +0200, Zdenek Dohnal wrote:
>> there is currently the embargoed CVE-2023-34241 in CUPS project:
> Of course, this wasn't actually embargoed anymore at that time - Zdenek
> simply resent the exact same message he had sent to the distros list on
> June 13, when the issue was in fact still embargoed.
>
> Similarly, the previous CUPS vulnerability disclosure on June 1 was a
> copy of the distros message from May 23:
>
> https://www.openwall.com/lists/oss-security/2023/06/01/1
>
> Let's be updating these when posting them publicly going forward to
> avoid confusion - like "was this published inadvertently when still
> under embargo?" (luckily, no).
>
> Alexander
>
-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

