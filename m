X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["677" "Friday" "17" "August" "2018" "06:33:12" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8mk=9pj20AUcDuCgJ7aabf+2chHhknS5=pjQF5LSq7Ptw@mail.gmail.com>" "17" "Re: [oss-security] spice CVE-2018-10873: post-auth crash or potential heap corruption when demarshalling" "^Cc:" nil nil "8" "2018081710:33:12" "[oss-security] spice CVE-2018-10873: post-auth crash or potential heap corruption when demarshalling" (number mark "        noloader@gma Aug 17   17/677   " thread-indent "\"Re: [oss-security] spice CVE-2018-10873: post-auth crash or potential heap corruption when demarshalling\"\n") "<691585808.22602192.1534499038268.JavaMail.zimbra@redhat.com>" ("<20180817005105.GB3712@sin.redhat.com>" "<a53a29d0-183a-490b-561b-f2ce4033c2ba@redhat.com>" "<691585808.22602192.1534499038268.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17875 invoked by uid 550); 17 Aug 2018 10:42:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11701 invoked from network); 17 Aug 2018 10:33:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=X5BEC20aElecseUfLQpoNUpgq3tesQtg25U4y8o5/k4=;
        b=Uip7LUaz2uIbUFeWVFo4fyaC3JVimonh2l716dlBVIQycWw9u2nMwZHhwyt/wilMRV
         RmJSUdFKdViwKziG+9pBfndNsxt8Qnpo0X3OPXvbGc0m1iEO7tidO2No4n1O2HvhswX0
         pZZPQLqmHDFoa6bL+HmLB10dNAjf3vDeigj5+WUG9WB5ARIyfbpVGRTo69OWanQ1Z+8z
         9HwVf0yDnmVYv027/FnQL0dDhKjgeFLHB0cakq/3oDYM3gRveZU5jy9i/Kl9VS4bIiP3
         TGYmvhc+FT76VuA8KA6DX7XsicjPjwHRegnjB56Ju6g5iSqJRn7VfF6jgew6OsLp97vB
         28Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
         :from:date:message-id:subject:to:cc;
        bh=X5BEC20aElecseUfLQpoNUpgq3tesQtg25U4y8o5/k4=;
        b=PstYyGnUf5IZefy9Z8rEysknRbQmQbG2RmXKBQVN+aiioTk6/BdvSp1byLzkWL2+vG
         +UKobeskfrhWsPi+LnjJKWGAls7fATAah8MWzJCHQuLQkhccn2cxGiJwAjYccWY8HSkb
         IDcftgfxVl6Ov+SJa0Tv0JTiMQVaWETrvPEhJTv91GU2vYzjOAP4UJRiIOSgJTaKeMjZ
         lPL6hiYLgVLtZRL7wB2r7Lo6vyRo9Dyo8FFCh0uZ6QuXBCWlFnvgOe4aVoane1cqBu1X
         TJbBILzvK1iyH4P/6kO60uIw9HmUKP3XFvHnjKS2ylc2iQEW96v+gk5k5dQ/g94+QAFr
         6K4g==
X-Gm-Message-State: AOUpUlEgEnSh3SndZFOPddj4gzNYr89YaVY5Xe8CxoDw2kv4tNt5uB0v
	Bcb1tOKV06SORSrFQBu4OPutyXLRsRrxPhDfss5RuSZi
X-Google-Smtp-Source: AA+uWPwmgQh8VDglCiZmWrp4QYma67yHIyZgamQa46iuNGz+ykIR/37YgCaKgk0c1+iYANgRIEZA6JhU2bBvaeBFH0M=
X-Received: by 2002:aca:3e03:: with SMTP id l3-v6mr1930629oia.54.1534501993241;
 Fri, 17 Aug 2018 03:33:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <691585808.22602192.1534499038268.JavaMail.zimbra@redhat.com>
References: <20180817005105.GB3712@sin.redhat.com> <a53a29d0-183a-490b-561b-f2ce4033c2ba@redhat.com>
 <691585808.22602192.1534499038268.JavaMail.zimbra@redhat.com>
Message-ID: <CAH8yC8mk=9pj20AUcDuCgJ7aabf+2chHhknS5=pjQF5LSq7Ptw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Florian Weimer <fweimer@redhat.com>, Doran Moppert <dmoppert@redhat.com>, 
	Christophe Fergeau <cfergeau@redhat.com>
Date: Fri, 17 Aug 2018 06:33:12 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] spice CVE-2018-10873: post-auth crash or potential
 heap corruption when demarshalling
To: oss-security@lists.openwall.com

On Fri, Aug 17, 2018 at 5:43 AM, Frediano Ziglio <fziglio@redhat.com> wrote:
>> On 08/17/2018 02:51 AM, Doran Moppert wrote:
>> >      +        if (SPICE_UNLIKELY((start + 2) > message_end)) {
>> >      +            goto error;
>> >      +        }
>>
>> These checks are still technically invalid because start + 2 is not a
>> valid pointer if it points past the allocated object.
>>
> Technical but not real. Unless it wraps is correct...

I believe Florian is correct. I think the most freedom you are allowed
is to access one beyond the "end" of the array; otherwise it is
undefined behavior. The compiler is free to remove the code or dragons
can fly out your nose.

Jeff
