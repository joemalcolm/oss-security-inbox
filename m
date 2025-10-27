Received: (qmail 17915 invoked by uid 550); 27 Oct 2025 22:18:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17890 invoked from network); 27 Oct 2025 22:18:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761603516; x=1762208316; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dizsOqB2jtOvWktY8PSrkkRb+1/L6v2d8uDg6UD8/TU=;
        b=aplSaKl5NWOIg5fYLC+496A+H5V4gDAIqwDRwrhebiLGZ7ExUYBoG5nnqMVPNMxala
         iOe6ZLYCU31vgSaQq9A6DqPqiLN8D2eo8xSBTBW29CUslu3DXrTrcKUhZmZ+BqcCeDP0
         /BWLlWj7c8GZEVRwRqJn1MlYuJFiUQ4jM7Qy90nH3PA5C98bEj+uLn2WRR3AmEIOmJs5
         PMrim52w3+EqFXobhVTyW4ytqRIFZb7CKxZsJcenCuSzXqYwHCEOdEI5KK7eZUtmBM4w
         g2yPILI6sqbb6btInbJPdjKu2pigpkShdGqb82ymU81j1GlwkRvfUlbO5in2xr3K1fQu
         ZbFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761603516; x=1762208316;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dizsOqB2jtOvWktY8PSrkkRb+1/L6v2d8uDg6UD8/TU=;
        b=bLLoINxPFRDTcl48Nw0aqlNPZOctrXOfHrlbI+aGYHjtyCdaRFI1D6hF6SvPJvNNCx
         VQyexeRmCFQaiAoRxj9ui029v/uU6KKQDic8fKD8rxKtcKkEKRENxVBu1AgN6SffWm4L
         JZel7FKuVMBbceJCJyMzi4upJOGd2s3VIZLtM9TSPSCE2YlKaACojJVCRNEYi15eruyH
         eE6HMvGJlLYB4sQuD+A3tHPbxDWCjdMrT0/6uki2WsK4sYBx2excSlCPVqHjRwcFXtki
         8Lw6MkObeFjGRAS+Z3MT6CPo7fVZsRS/wnTZ2KhigIXEHHB9S9/+h8k+7Hy+9q+G4Su9
         +sYg==
X-Gm-Message-State: AOJu0YyH+afrePQQ1LrTRnQSU2IFG8F8bApvy+iSvp+0uDTIfySp4lrD
	JXM7b6EGscRh3BpOyYqx5fr749iasjcAWI8bIDXdZiE0QivHksaRqyxjTafa2t/U
X-Gm-Gg: ASbGnct/Xp9GfP6nhrng6LJCvwYOYj46oTddI5lmhzNDdFm2680M1YD25acP+cNdd++
	DQvIIwuRuAn4EXT7c+k7ZgskeNZDqe+EnWswJmZq18rlPzgR9/o5T9IBijGku+b+UxCAcb9h4Xc
	ykt/9vuDXTvZG6uzH8mpauwwBTok/VCTFUQ0KSuJlqPMwbkW4D8NDjLEaDZQlLlxoICIfmX3rm4
	ShF6oE+1U1dOj+w8O709vGD5RiwstrOKFLylSoks8bqVsHH2/eyL2zZD39kt5utreFVf6hMQw/d
	WzKa+O120wXOhcHiBK4UumvORHXYnua16sxiuGDZF9NxM1clweBt90QgndQ9lRr9HjKXXIxKAhF
	Fp21ADR7zZhGhBox2XBBP9VigeLIpzPdEXEsNbo9/iCn5AJBSNAz1QkIXnyoYtHldZTw/tt2IGQ
	51x/9aEmwsx8dRp0FffLVtYgGaCLKZeGaZ/tbIILFmXAE842S5vsGh0g==
X-Google-Smtp-Source: AGHT+IG67Na3Tp1mlBKbHKkS50yZ7okP2tQ4v4vJ0Al/9IbK3EU8obZdoQZGZgAAEpXSt+USqXwKsA==
X-Received: by 2002:a05:6a20:2583:b0:2af:65aa:4eef with SMTP id adf61e73a8af0-344d441fe3emr1260924637.47.1761603515785;
        Mon, 27 Oct 2025 15:18:35 -0700 (PDT)
Message-ID: <cf80acf8-29a3-4da9-a4a5-9dc11f4aa142@gmail.com>
Date: Mon, 27 Oct 2025 15:18:34 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
 <aP-rxft9ra58z9EZ@yuggoth.org>
 <CA+qj4S-=TtjPN5Us5tva1TUo7a2MJKzpXweiQCM=QLMwcq5Xjw@mail.gmail.com>
 <6c9a4094-6af3-4aa3-940d-0d19505da3b1@pipping.org>
 <aP_L7mY0OXB2iDmk@symphytum.spacehopper.org>
 <9eefb12f-5de8-4638-a4e8-b0c309e81cec@pipping.org>
Content-Language: en-US
From: Matthew Fernandez <matthew.fernandez@gmail.com>
In-Reply-To: <9eefb12f-5de8-4638-a4e8-b0c309e81cec@pipping.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

Hi Sebastian,

On 10/27/25 13:40, Sebastian Pipping wrote:
> Hello Stuart,
> 
> 
> On 10/27/25 20:45, Stuart Henderson wrote:
>> On 2025/10/27 19:51, Sebastian Pipping wrote:
>>> Also, fixes without a CVE will not be backported downstream.
>>
>> That depends on the downstream.
> 
> I'm happy to learn which downstreams backport security issues
> without a CVE, in practice. Do you have an example or two?

E.g. the Graphviz 2.40.1-3 update in Debian¹ appears to have cherry 
picked bd97cff688f7a7b85b6f1262e14eb1cac0862fcd² that went into upstream 
release 2.42.0. AFAIK the underlying issue never received a CVE.

Speaking as one of the upstream maintainers, there seems very little 
logic to me as to which Graphviz patches get backported and which do 
not. I suspect it is just whatever users file requests for.³ Ubuntu has 
also started carrying some modified versions of Graphviz components 
under the category “Ubuntu Pro”. The changes there seem to be 
exclusively backported CVE fixes, so this supports the point that CVEs 
carry some weight. OTOH as the Graphviz project is not a CNA nor 
requests CVEs, the actual CVEs against Graphviz are just an arbitrary 
subset of bugs fixed, so not really a useful thing to index on.

¹ Scroll down in 
https://metadata.ftp-master.debian.org/changelogs//main/g/graphviz/graphviz_2.42.4-3_changelog
² 
https://gitlab.com/graphviz/graphviz/-/commit/bd97cff688f7a7b85b6f1262e14eb1cac0862fcd
³ E.g. https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1075904
