X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1505" "Tuesday" "1" "March" "2016" "12:25:24" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0RLssvD7QB__g0Cm=cpXb3dOWhZK=anOqdMuVOEtSb=g@mail.gmail.com>" "39" "[oss-security] Re: CVE's for SSLv2 support" "^Cc:" nil nil "3" "2016030119:25:24" "[oss-security] Re: CVE's for SSLv2 support" (number mark "        kseifried@re Mar  1   39/1505  " thread-indent "\"[oss-security] Re: CVE's for SSLv2 support\"\n") "<20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org>" ("<CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>" "<20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11847 invoked by uid 550); 1 Mar 2016 19:25:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11829 invoked from network); 1 Mar 2016 19:25:36 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=2v8DOssxJBpzCL/i7mqXL6yY0XxrnKkM5/LYuRV1dlI=;
        b=cU4BEpisW+QP/WTy36T9PPJGc9JnBbjKOwAqWvofRNqy8ZqCmrV7tkPOQl1nWrM+d0
         vIqsc8g/76wzEp2oa5GbJJX/eH/lC3a87h1lv3lCInfnzxjsGajHpJb84UBemXXrFmUG
         Lp4MeTdf9sb1cg3YGobwBcCwRr3xY+5cbBKAXtqt9xy4f3toYR90fvfVEsnDzcj7wXTL
         3luOe6+AxtVMr1wMF0h0B3JurEFy7i8imMzDusKnYwW0gVFnquiT3tc7RTUEzUzdlMi9
         Cqa6GvNYLY8fNSgeguES3ibELHISHKXdMkKZ0rZ1qNga/btoboABrx8ra35O6MC2qVYC
         YQ3g==
X-Gm-Message-State: AD7BkJKX0rlbC90z9fHOnNbUQn1m8fGfRCnr3E28WrG7df/Z7qNmKdsQsjq6RYstL7pJKdactO4jS41bqSVQB1w4
MIME-Version: 1.0
X-Received: by 10.13.192.130 with SMTP id b124mr13864684ywd.218.1456860324796;
 Tue, 01 Mar 2016 11:25:24 -0800 (PST)
In-Reply-To: <20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org>
References: <CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>
	<20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org>
Message-ID: <CANO=Ty0RLssvD7QB__g0Cm=cpXb3dOWhZK=anOqdMuVOEtSb=g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114e46a025d655052d01baf9
Cc: oss-security <oss-security@lists.openwall.com>
Date: Tue, 1 Mar 2016 12:25:24 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE's for SSLv2 support
To: CVE ID Requests <cve-assign@mitre.org>

--001a114e46a025d655052d01baf9
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 1, 2016 at 12:12 PM, <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > If a crypto library (e.g. OpenSSL, NSS) supports AND enables SSLv2 by
> > default should it receive a CVE?
>
> There's no general answer to that question. CVE ID assignments are not
> based on outsiders making guesses about the expectations of a product's
> customers. For example, there might be a crypto library intended for
> communication on isolated networks to high-value embedded devices that
> support only SSLv2, and cannot and will not ever be updated.
>
>
I guess my confusion is: what would be the downside to assigning a CVE in
such a case, such a "false positive" would be easily explained ("yes we
support SSLv2, but only for use on closed network"[1]) but more to the
point by drawing a line in the sand of "SSLv2 is worth a CVE" we'd be much
more easily able to track which products are using SSLv2 by default (and
thus putting us at risk). From your web page "CVE is a dictionary of
publicly known information security vulnerabilities and exposures."

Does SSLv2 not pretty much exactly fit this definition now?

[1] which begs the question why they're even using SSLv2 but I digress =)


-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114e46a025d655052d01baf9--
