Received: (qmail 13405 invoked by uid 550); 20 Feb 2026 04:44:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13378 invoked from network); 20 Feb 2026 04:44:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771562632; x=1772167432; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=YCHCHrTg1cfhXy6ibGWnj1THRxvSaVdgHUrsyE8bK4Q=;
        b=LuzpVFPGmAfxAPi+dTWcUSUIspabE8/35Tq6fFrVlEOgLdqNePRu03UO5GGrtpBf1J
         2k+skVLsCscr69gnCIKz3AfJqK7IDayWxJu2sQjN9xEXIM+PFH+iJ5ThCP5ax0dDpBL5
         WSpdildZzakwkNSglR70UmQXOZH9jDuIxWU2EeJuXwhXNubSgmkp+a2Y762IapKKrSd+
         oUEIbX8HC+hk7UbJhcUMNizezAfFNuSYX8xaR+IFGWto4MgiopKKfcJNj99FUfgPgbM9
         g/05xkE/e3JleY/8kDZ1oJ7plu5cXRVxGOUF6cq2GLLP5qz61w8IOvbDfpj04e/zdSqj
         6FoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771562632; x=1772167432;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YCHCHrTg1cfhXy6ibGWnj1THRxvSaVdgHUrsyE8bK4Q=;
        b=Ic/FoZBKyaxIaTNYTzPxGIWKUurY5bMjAGmMc4msenk8L/LBq/gjd2wGViup0ZKu/1
         Lc9BS/g2KRkemSdIKaDmO0XXF5p8eiviKkkpRGgyUPFOsjIW6bIMh7WYGOhYnS5tW/gX
         G8ur9tDzHxgHjGIM7vEGi8k8rP89qKfAj2K9vWwknJ39Y2gfUElHFJR6dNqv5Ag137uK
         1vcIkuI9aTETUwDC3hjNC60JTmznRbDQg2+NptGDKzqZYK/cEIUi9HYzEKeINNF4rt4J
         EX1ciXTyaUeG8RhS18qDC26+s3v4LNu26RJ/jgU2pdlKY93P/UfgaQNrMJIhjMZpCA0Z
         UEcQ==
X-Gm-Message-State: AOJu0Yy2WhabcniVKiiy3zpBx1l7iGUpUIuinIfsp8lU6e1u0AAwdgFw
	YJMQmxAcIkiuZc7jf8ID9dNUmVBALBf6UL7NGrgQiypPYzZB72S1A9O5
X-Gm-Gg: AZuq6aIqE+0wF5p1+lCrL3kxca7zBhh72LvAaMR5WPqUlrn1r6fcGlPmpHc+l6bvOh+
	zgmKnlzclo87VwCtcogT+N+mZJmLWwYAod+qSdtccv8/dxT661Uedm7OOS0l7PovaQIoh6/4Rip
	G0L2S475mTkFXm8HK0qjG4zfsB6EXeuwlcWYrFWnthweRV/wzAGnMbTMW4+jpE3PoTYJqe05GED
	Lr8mxOz6u154+7JzPHJUr81IfCdc4JTP/FqYBRPzmjSw1QQ639ZsOPfaDTkJG555MPWJSOP/LZW
	am92sc/3v5Sk40Xhfql+Hflm730V2zOEQK1xXB0LRUdE7N/8kq3X9qw2G1H4krcsay71VrPwdOV
	leXFg8qP/kc6/5EezA3ozHO8n+4augewHkkz2aHiEM+Jxi0aUefedJblnZmHeZSYzbnba0W6uJt
	WcHfl4o27hwzbKha4Snw==
X-Received: by 2002:a05:6830:4122:b0:7c6:cd24:6392 with SMTP id 46e09a7af769-7d5237df1bbmr257787a34.34.1771562631935;
        Thu, 19 Feb 2026 20:43:51 -0800 (PST)
Message-ID: <4460495c-2f91-40f9-a27c-5b09eeed920a@gmail.com>
Date: Thu, 19 Feb 2026 22:43:48 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Russ Allbery <eagle@eyrie.org>
Cc: oss-security@lists.openwall.com
References: <20260219011438.GA17271@openwall.com>
 <c9af5be5-fc3f-4ef9-bcb4-140a1d1fe1c2@gmail.com>
 <87wm08xyrc.fsf@hope.eyrie.org>
 <dc5a9c05-ab0c-4922-9f8e-d0ce2e6a53b1@gmail.com>
 <87ikbsf62y.fsf@hope.eyrie.org>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <87ikbsf62y.fsf@hope.eyrie.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] MIT/Heimdal Kerberos credentials cache type FILE
 risks

On 2/19/26 21:26, Russ Allbery wrote:
> Jacob Bachmeyer <jcb62281@gmail.com> writes:
>> On 2/19/26 14:29, Russ Allbery wrote:
>>> My understanding is that the context of this report is services running
>>> with Kerberos credentials. [...]
>> That is an interesting way of looking at it.  The report seemed to me to
>> be describing hijacking user accounts after cracking a service.
> That's also possible for services that accept usernames and passwords and
> validate them with Kerberos (common for POP and IMAP servers), although of
> course best practices in those cases is to immediately discard the
> resulting ticket after authentication.

I would that think in such a scenario, the client should be presenting a 
Kerberos service ticket to the POP/IMAP server.

> It is true that some methods of doing that will result in a ticket cache
> stored in /tmp. For example, if the service uses PAM to validate the
> user's password, some PAM Kerberos modules will write a ticket cache to
> /tmp as part of that process. (There is a long and unfortunately
> complicated story here why it is sometimes not possible to defer creating
> the ticket cache to the PAM session stack, which generally doesn't need to
> be called by servers although may be depending on how the service works.)
> Such servers should take some care to clean up those temporary ticket
> caches and not leave them lying around.

If PAM is creating the ticket cache when the session is opened, then PAM 
should also be destroying the ticket cache when the session is closed.

> Of course, one should also ideally stop using authentication methods that
> send passwords over the network to a server, and lack of attention to
> cleaning up ticket caches is not a Kerberos problem. It may at most be a
> problem with a specific PAM implementation or service implementation.

If the server is opening PAM sessions, but never closing them, then that 
is a bug in the server, not Kerberos.

>>> I think the concern here is that the web application has its own
>>> tickets, which necessarily must be accessible to the web application.
>>> Therefore, if there is a vulnerability in the web application, that can
>>> be used to exfiltrate the Kerberos tickets for the web application.
>> This does not necessarily give the attacker a ticket with a "~10-hour
>> TTL" (as claimed in the report)
> Not necessarily, but it probably does. That's a very typical ticket
> lifetime (I think it's the default in both MIT and Heimdal). Unless an
> administrator took special precautions to limit an application's
> credentials to a shorter lifetime, I would be very unsurprised by that
> result.

I was thinking that it also depends on when the service last renewed its 
TGT vs. when Mallory purloins the file, although Mallory could simply 
wait for the service to next renew its ticket before purloining it again 
and starting the "main" attack.

Fair enough:  Mallory can get a maximum-lifetime TGT.

> [...]
>> and the KDC admins should notice if the "web server" suddenly starts
>> asking for interactive login sessions, for example.
> You are probably overestimating the sophistication of incident detection
> and response capabilities at a lot of sites running Kerberos. :)

Admitted, but the "web server" also should simply not have access to 
most resources.

>> However, a service's authentication tickets should be bound to the known
>> server addresses,
> Binding Kerberos tickets to IP addresses was a mostly failed experiment
> that, at least in my experience, most sites have abandoned. Trying to make
> this work is a HUGE operational headache. In a modern networking
> environment, there are innumerable reasons why the apparent IP address of
> a service from the perspective of some other service doesn't match the
> service's own conception of its IP address.

Across the open Internet is one thing, but I would expect (perhaps 
naively) that communications between web servers and the KDC would be on 
a secure internal network.

> I know there are people who have gotten this to work, but I don't think
> it's common. It's spectacularly annoying to try to keep configured
> correctly, particularly since in a lot of compromise scenarios the
> attacker has RCE anyway and can act directly from the server, so the
> amount of security benefit you get from the work is debatable.

It stops the use of a stolen ticket in the report's scenario of a web 
service leaking files from /tmp.  :-)

> [...]
>
> There is some variation here, depending on whether the site is doing
> tricky things with TGTs, but my impression was that people generally just
> let all the lifetimes default to the same since the tickets are generally
> all stored in the same place. If you manage to get someone's service
> tickets, you generally get their TGT at the same time, so doing work to
> make the service tickets less powerful doesn't have a great effort to
> reward ratio.
>
>>> No, this is not correct: If you have possession of the service ticket,
>>> you can authenticate as the user to that specific service. You do not
>>> need the TGT. Otherwise, limited ticket forwarding would not work.
>> Then I misremembered that detail.  So the cache stores the decrypted
>> session key needed to use the ticket in all cases?
> Yes, so far as I know. Maybe there's some new ticket cache that does some
> sort of encryption, but I'm not sure what the practical benefit would be
> given that the TGT is generally right there in the same file.

Aha!  I did not know if the Kerberos cache stored tickets in separate 
files or all together.

If they are all stored in one file, along with the session keys needed 
to use them, then yes, distinctions between service tickets and TGTs are 
useless:  an attacker who steals a usable service ticket will also get a 
usable TGT, outside of very specialized scenarios where the service 
ticket endures after the TGT expires.


-- Jacob

