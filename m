Received: (qmail 32051 invoked by uid 550); 6 Sep 2022 14:23:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16200 invoked from network); 6 Sep 2022 12:45:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=nRPe3+pojh6kHXnMd/PZ0wLNjEf2FEP95Q+XW0pXz5E=;
        b=qXCMUQtyNhxeUYa3MmL4x2f4idRyHbZPmOdaqHjTdPUE94dQmzbbdcrXiQz/xam20d
         gzApZVAqCRtnVwcqfka/RH7WOFZWYhtQeqJIMXbh51dJ6AHNbE+2KbOe9b63a/12n7w+
         UOxv1sC7p5cz6byt7/B+ToPwO/l3CCBSEVOiisu68iXAQqyIZAxt5SvnGJI1UQjx6mQm
         h+fk7FS4zAWoqVX+qeWiP1ddxB/mXqJCTysbgCTUH6jV/A3kEvwXBRyzxmUfMuw8Spwl
         u+Nt+0y8REXSMCHNy/1jpd+YUBtlVpVPvxIsH/Evx05yH6pkwg2R8bDaZmNhcvWPlFdM
         lCsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=nRPe3+pojh6kHXnMd/PZ0wLNjEf2FEP95Q+XW0pXz5E=;
        b=dNZxzW8jaIS4ce4zgulzupx6wlY0FK4qUCTZqAxZif1T0AZmp7LaMcP8aDqlACKUPC
         xfIfxqemUfvFS1GaQYemh5TzDbr+eqhHTPnebsRdKk3VSUj8WrdS1wp9+hzZKwsLNfXx
         edMFiqSIVb6LDIVno7zh4D7x1pOC66Inmz5e/MBOYvoaNOBFYZTAcJ5Szx9UXYUg8au2
         3MYTzJ/RjWnrNTxFxZqBDRtO5Z0YM96jjhlBrgeD4AGQ9pcbGeKneBlH+uXyfH1Vp+r5
         //YGQldNsEjhC1G6Zis4s1K2yePILuEWKF8gFHTGD7FMDullCYi7dZ+rViuY0zAmsSr8
         5LRQ==
X-Gm-Message-State: ACgBeo09oRYpwiuSEdbQK+casCEiEtH7VFnb3HvLo+o5KXgiU7eCb2os
	czkqWJcMq5BlvJg7/qNTM31p90NH1sLACmgptGSIiK80
X-Google-Smtp-Source: AA6agR7h91QLoxMUvc5TstI7NES5d908Uk8XVwvIg8XuVRWwKVecLlO+qHRTM1igalU8/IEfqZE/NLP7pxFTYyJBYUA=
X-Received: by 2002:a17:902:c40f:b0:175:3c1e:8493 with SMTP id
 k15-20020a170902c40f00b001753c1e8493mr32080559plk.19.1662468340501; Tue, 06
 Sep 2022 05:45:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD9QR7mjyVnBV4NcyVv=RzLBjNoqvv=d02P-GGsdOV_VWg@mail.gmail.com>
 <20220906115010.gs7kec3wkmayhmhf@yuggoth.org>
In-Reply-To: <20220906115010.gs7kec3wkmayhmhf@yuggoth.org>
From: Jeffrey Walton <noloader@gmail.com>
Date: Tue, 6 Sep 2022 08:45:28 -0400
Message-ID: <CAH8yC8k8C-gp9upSpJLsXrhBB5-qSnKGeP34+32A-_s5YG3UTA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] sagemath denial of service with abort() in gmp:
 overflow in mpz type

On Tue, Sep 6, 2022 at 7:52 AM Jeremy Stanley <fungi@yuggoth.org> wrote:
>
> On 2022-09-06 08:47:58 +0300 (+0300), Georgi Guninski wrote:
> [...]
> > sagemath gives access to the python interpreter, so code execution
> > is trivial.
> [...]
>
> I'm not familiar with sagemath, but is it intended to protect
> against such cases? Note that even if all it does is pass
> expressions into CPython's eval(), it's pretty much impossible to
> guard against misuse without completely sandboxing the underlying
> processes. Denial of service scenarios are really the least of
> worries in that case. Many articles have been written over the years
> about this, though one of the more recent and thorough ones is:
> https://netsec.expert/posts/breaking-python3-eval-protections/

One of the problems with GMP is, it will crash instead of returning
failure. The problem becomes more acute if the program using GMP is
handling sensitive information, like a private key or passphrase. The
sensitive material can be written to a dump file and can be sent to an
error reporting service. So there's a DoS in the app, and a possible
egress of sensitive information outside the app's security boundary.

It is not clear to me whether that is happening in this instance, though.

Stepping back a bit, the GMP library is setting a policy for an
application. That is, GMP is setting the policy of "crash instead of
fail." An application should set their policy, not libraries. Apps are
in the position to determine  strategy they need, not libraries.
Libraries know nothing about an application's security requirements or
strategy.

Jeff
