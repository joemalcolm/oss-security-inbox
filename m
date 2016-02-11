X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["697" "Thursday" "11" "February" "2016" "22:56:36" "+0100" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQQfx9-dMHcLhiW87jFt=OGL=sLW4sFci_YKpq+R+m0ow@mail.gmail.com>" "30" "[oss-security] Re: use-after-free in tidy-html5" nil nil nil "2" "2016021121:56:36" "[oss-security] Re: use-after-free in tidy-html5" (number mark "U       gustavo.grie Feb 11   30/697   " thread-indent "\"[oss-security] Re: use-after-free in tidy-html5\"\n") "<CACn5sdRD=BJLkxwv5AGm+Nod_tNfkND9M0C6n3kr37ZDDywSjg@mail.gmail.com>" ("<CACn5sdSbgx9CwoHb6Cfd2mZNU8-+vtfaN4FW2MRM_bVBFFPOQQ@mail.gmail.com>" "<CACn5sdRD=BJLkxwv5AGm+Nod_tNfkND9M0C6n3kr37ZDDywSjg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22238 invoked by uid 550); 11 Feb 2016 21:56:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22180 invoked from network); 11 Feb 2016 21:56:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=CL3osqaY0w1ijiwkKWRvcQ9ojXf6kupO4xoP9rEiRIs=;
        b=l7pq4VXJdsuA6pAaqNR1rVft1cBR79UvVD5jELe82oRP9HMCUBlff7WfC/OqhwltKg
         YCPZxQMmdi4qV40HJMxgW1Mg3pOmxYZNs3H59hZymtv8YGAHsJ7qNp+ZAPzv+ZYTdztK
         sc0jcn3V55v/L5gMkXWBUbolfWPKVw6ecOHt2dC5P+K6BFsqROU3Jus2ZWe53N44eSo4
         ROjB0hz1rgnosbiaFCPHjVgrmqmP5KW39drj1UXJ3c7prAQIj9LRrtY321+X1W+ezK3Y
         AUYFjL+kQcsZGjNqhfz/5BWJ+oWSlfyyujPRRICL3tEHLBYggDvmZ4vUeFjsX1jNq4zv
         c0Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=CL3osqaY0w1ijiwkKWRvcQ9ojXf6kupO4xoP9rEiRIs=;
        b=DDiK50vGoehhF601UIBOF4W67d5740KbnydVH/eyMYAlyxKzmgOj7jyfhY6SeERt+p
         c+ax4ZYBljvIkHGKTSHeGN0UG8aH3J6WpIjd3QvOWNCd02WPsEXB4e16maxIj2CJ6M6k
         vsbr3YRx3swdOvhE3ef2KzYbLhQ0AI6iKWrK1gb2G33+NfoBfB56nFi38WHHqqX1WXjr
         vxXIDuig1/RnrEcRTGYi3sFLpfOEQzwSCrUSv5Nw4kHAB8Ou0HZr128RPil9v47Mq0rU
         Eb1SSnuhO1oqc21eVVFDoiHBh3/11qdShBXip6MJ+OMeAM4qo9wiR5PhEEu+aTwtaTtY
         9SYg==
X-Gm-Message-State: AG10YOSyhjuS19nItvY/Ywbom1bA4piQlzjUIYH3p+9kXF7wqPLYXZPazefypW1GpXhtrJOXS2NoPHh63cirjA==
MIME-Version: 1.0
X-Received: by 10.112.147.198 with SMTP id tm6mr19759537lbb.105.1455227796163;
 Thu, 11 Feb 2016 13:56:36 -0800 (PST)
In-Reply-To: <CACn5sdRD=BJLkxwv5AGm+Nod_tNfkND9M0C6n3kr37ZDDywSjg@mail.gmail.com>
References: <CACn5sdSbgx9CwoHb6Cfd2mZNU8-+vtfaN4FW2MRM_bVBFFPOQQ@mail.gmail.com>
	<CACn5sdRD=BJLkxwv5AGm+Nod_tNfkND9M0C6n3kr37ZDDywSjg@mail.gmail.com>
Date: Thu, 11 Feb 2016 22:56:36 +0100
Message-ID: <CACn5sdQQfx9-dMHcLhiW87jFt=OGL=sLW4sFci_YKpq+R+m0ow@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=047d7b3a8960db958b052b859fff
Subject: [oss-security] Re: use-after-free in tidy-html5

--047d7b3a8960db958b052b859fff
Content-Type: text/plain; charset=UTF-8

This issue was fixed. In case you are interested in the patch, it is here:

https://github.com/htacg/tidy-html5/pull/368

2016-01-25 14:57 GMT+01:00 Gustavo Grieco <gustavo.grieco@gmail.com>:

> Hi,
>
> The tidy-html5 developers are still not sure how to fix this security
> issue. Any feedback is appreciated.
>
> Thanks!
>
> 2016-01-03 20:24 GMT-03:00 Gustavo Grieco <gustavo.grieco@gmail.com>:
>
>> A use-after-free was discovered in tidy-html5 (5.1.25) using afl.
>> Technical details are available here:
>>
>> https://github.com/htacg/tidy-html5/issues/341
>>
>> Regards,
>> Gus
>>
>
>

--047d7b3a8960db958b052b859fff--
