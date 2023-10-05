Received: (qmail 20102 invoked by uid 550); 5 Oct 2023 19:12:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20074 invoked from network); 5 Oct 2023 19:12:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696533123; x=1697137923; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I8xksK+lCFMFGbn1hEuP7tEiNXGsmkEm229QG87xD2w=;
        b=cLcycoXFe84xt8bV1JHTltnVggZUubPcoowPc1gsi1g2kcxjg0Iu5XTWQOYlvclKrp
         C/KJBPZJlHpFJDuaSnwr/g2AX2+lVu4LiS7/0xz4AHQEyko+u37NsPzpIH/nOKGXIB4w
         BaqKQ4EksEqbeIHOevL2oqJHAHF7FiD1uz/JPN/E+AaFcK2voz2lZ0CZlV6+AmT26flm
         DXhvldSu9caACD1dYL9tncUrsk0mqhYfHsSWAjzk20kXjCklBxhIO2ndFqsHwBqpzLQo
         hCWMFbhhDfka4vQFL2+bRN+EoaReGB2i2XDVtneR8yTaQoBH2pE5y6d2dJQSdLlLCn3g
         Lrog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696533123; x=1697137923;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I8xksK+lCFMFGbn1hEuP7tEiNXGsmkEm229QG87xD2w=;
        b=ISXGIfWzeu1lnc2kqkCYoTrsPM/X1hHMWMRR7ZOM4FFrRDj6K5b8jVyA3VjXOAAxBU
         Zs5EKGa5Pdtfn5yyznuP3mMT5W74eRjRIzfqTwD7whLxWwNybpISTDtS5HkEn0Kj6TEI
         tuqpL6a07658g+CcTKqSa5+CEFI7RbThbT9eDzuxajUACU4s4K+8glJC/SgMpG4GClKz
         +ltGHQzypap0+7F0fUsVLwCnVQUt5XOrSfqh047NXiWQSgc/d2ZUkgjVvsFKM2VSlL8m
         N9UWHLAtyNhkhztEbp5rZ402KZwTdi6GyaMYeKCGRHzytOXWSPPTePOnt3GiZQZiFoqR
         5Mug==
X-Gm-Message-State: AOJu0YwbGcfSelj8yTVL5JXtHIlR/L7pJPA7m1Ic95vN10uHiANvCn5p
	tA6G7GdJjSAOyOA6R91sVOnWAi8lONj9XQ==
X-Google-Smtp-Source: AGHT+IGbk0We8MHUGTuS8HIHqL5O2XqowGeuKyQZ60OnuQXH0IRL2IEVT8Kge4hddCHcSGLM+tQMIQ==
X-Received: by 2002:a17:906:7491:b0:9b9:f76f:9952 with SMTP id e17-20020a170906749100b009b9f76f9952mr670960ejl.37.1696533123010;
        Thu, 05 Oct 2023 12:12:03 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 5 Oct 2023 21:12:01 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: "zdi@trendmicro.com" <zdi@trendmicro.com>
Cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	Solar Designer <solar@openwall.com>
Message-ID: <ZR8KgeGG_jLN5n4a@eldamar.lan>
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
 <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
 <20230929165914.GA31245@openwall.com>
 <SJ0PR01MB7413CB07EDE457153C8C5C3CD1C0A@SJ0PR01MB7413.prod.exchangelabs.com>
 <ZR27jCirFcyI7smg@eldamar.lan>
 <SJ0PR01MB74130DAEAADAB8F76876E418D1CBA@SJ0PR01MB7413.prod.exchangelabs.com>
 <SJ0PR01MB7413C4BC552E1212F3BEDEC3D1CAA@SJ0PR01MB7413.prod.exchangelabs.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ0PR01MB7413C4BC552E1212F3BEDEC3D1CAA@SJ0PR01MB7413.prod.exchangelabs.com>
Subject: Re: [oss-security] Exim4 MTA CVEs assigned from ZDI

Hi ZDI team,

I do not want to land between fronts but here is my understanding:

On Thu, Oct 05, 2023 at 05:40:58PM +0000, zdi@trendmicro.com wrote:
> Apologies, We have not received any notifications from the
> developers that these issues have been patched. We will be happy to
> update our advisories once they do so.

So this feels like a locked situation. One one side I read from Exim
maintainers, that there was not much information provided to actually
determine where the issue is, neither if it is specific to Exim's use
of libspf2 or if the issue is actually in libspf2.

On the ZDI side I read that advisories will be updated once ZDI gets
notification from the Exim developers that the issue is patched.

And on a third front, there is the libspf2 report at
https://github.com/shevek/libspf2/pull/44 which *might* be related,
but nobody can tell if it's the same as ZDI-23-1472. 

Again, my interest is to see this situation unblocked, and just asking
as a member of a distribution which might have affected packages and
for which we would want to deploy updates covering the fixes.

Thanks in advance,

Regards,
Salvatore
