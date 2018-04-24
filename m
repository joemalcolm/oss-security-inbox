X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["634" "Tuesday" "24" "April" "2018" "18:48:38" "+0300" "Billy Brumley" "bbrumley@gmail.com" "<CAFeDd5YC9dheyHq5xSmtvW5dDO+2v5AOuSEgq=7QuO2NDBzRbQ@mail.gmail.com>" "19" "Re: [oss-security] CVE-2018-0737 OpenSSL: RSA key generation follows several non constant time code paths" nil nil nil "4" "2018042415:48:38" "[oss-security] CVE-2018-0737 OpenSSL: RSA key generation follows several non constant time code paths" (number mark "U       bbrumley@gma Apr 24   19/634   " thread-indent "\"Re: [oss-security] CVE-2018-0737 OpenSSL: RSA key generation follows several non constant time code paths\"\n") "<cbee626b-67e6-73a4-f82e-0f4adb6da1a4@redhat.com>" ("<CAFeDd5bgmNV4=u0GNwpuszCv-k+ZeOJv=uF+z3MZybf+thG+fg@mail.gmail.com>" "<cbee626b-67e6-73a4-f82e-0f4adb6da1a4@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26231 invoked by uid 550); 24 Apr 2018 15:48:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26209 invoked from network); 24 Apr 2018 15:48:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:cc;
        bh=cnDs4yIfS5qOT6E5lS9y9PmG8uFh7VFO3d9aB7MEhhc=;
        b=ZsKVp4NNDP5pyvmBfQzYaym/iXGa+hv6Sc4E7EJgVVKcmnfFiWw0JvOErgVNofoIGC
         z9w6lCNy5kaKI1iKwLsF2mgcCYwtA0698Ol1nxiuZCHN7yfTH4J92tO++YJdKh3uK19b
         Z+/Jlk3vbfyi+8uEM0eGcFv7EJCqG8wJ/pmpoSmbJ24Uri3jO9ARaW7kqAjsyPzoC0CV
         h7sXu74kjFSP86rGO5zPV2SzK0sQQaacGhybnLz/tIrVPHLO/t2HELh4AvHSDThVyZLG
         eDPfK+S0JtzlW5bTInga5WBPNJJ0JuZxBfaniGCkacPDyiXc6b84wOvbbjq9LZyVWTtA
         vZTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:cc;
        bh=cnDs4yIfS5qOT6E5lS9y9PmG8uFh7VFO3d9aB7MEhhc=;
        b=OWHvlYyrEG5JMRrF+yjFbwuPnt0c/BPIkBkxLaQBQqe4Bt50ZK+7X27TnExn+jsawJ
         a0ThG5m2rfi89TKpI0JaBFIbW5+AbZXqPH3usnkjEvx9xeHgNgkvLZtpTeBO69DQkR/P
         HtblZpxyufeQyTunQLrYZxjx96Mvd1Ami8DTJQmVV4lw50kHpDgCdcRLKyNdTZ14V3v5
         eAp77GtqXHCYqe/ul5vLgA18GI99+RrvHCPtGxMDhG6tbk3dQuosWMrHjvs1x0CdZeHN
         qTvXKYfhFmlFdxOEAxGH5z4M9KDJjxm9BGqvvKdqsuXJxc5MuO1h+yKKR8TT1ju+bxXo
         P/lQ==
X-Gm-Message-State: ALQs6tDD3Qj/yWFIl02FI76B383E/OHSTnYcevTW/mjpPovC/CNzMsBn
	qWTGGWUHo22mDORF0kw0mSF+YzJZSDiTpXveyes85a8=
X-Google-Smtp-Source: AIpwx49MhBTMj2Ka5Vi1L3/6hS1tSTpkoh5G9JCOT8+be4Vqv8vx6llzRwqxZyl7hTtvHd6m992ppEjssRD6apP13R4=
X-Received: by 2002:ac8:2403:: with SMTP id c3-v6mr29359061qtc.329.1524584919208;
 Tue, 24 Apr 2018 08:48:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <cbee626b-67e6-73a4-f82e-0f4adb6da1a4@redhat.com>
References: <CAFeDd5bgmNV4=u0GNwpuszCv-k+ZeOJv=uF+z3MZybf+thG+fg@mail.gmail.com>
 <cbee626b-67e6-73a4-f82e-0f4adb6da1a4@redhat.com>
From: Billy Brumley <bbrumley@gmail.com>
Date: Tue, 24 Apr 2018 18:48:38 +0300
Message-ID: <CAFeDd5YC9dheyHq5xSmtvW5dDO+2v5AOuSEgq=7QuO2NDBzRbQ@mail.gmail.com>
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2018-0737 OpenSSL: RSA key generation follows
 several non constant time code paths

>> Look for our preprint on http://eprint.iacr.org/ soon -- working title
>> is "One Shot, One Trace, One Key: Cache-Timing Attacks on RSA Key
>> Generation". We'll update the list with the full URL once it's posted.
>>
>
>
> Can you post a link to the draft here please?

The preprint is now up: https://eprint.iacr.org/2018/367

> The attack vector is not clear, does the attacker need to be on the same
> physical machine or is this a cross-vm attack?

https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2018-0737

Your statement is pretty accurate. (Although I fail to see the
difference between physical machine and cross-vm.)

BBB
