X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2616" "Thursday" "22" "March" "2018" "14:12:25" "+0100" "Guido Vranken" "guidovranken@gmail.com" "<CAO5O-EJ_t5m92qzFtjBXffhc3spX-VtiBZJsKpHn78mnxORu9Q@mail.gmail.com>" "57" "Re: [oss-security] OpenSSL: bug in modular exponentiation" "^Date:" nil nil "3" "2018032213:12:25" "[oss-security] OpenSSL: bug in modular exponentiation" (number mark "        guidovranken Mar 22   57/2616  " thread-indent "\"Re: [oss-security] OpenSSL: bug in modular exponentiation\"\n") "<ae42a693-c165-33c6-8942-18f8911bcb24@johannes-bauer.com>" ("<CAO5O-E+iB2dy2BfQrLmCsNjXnuXjxAToPSETBfrJpe38TF7Dag@mail.gmail.com>" "<ae42a693-c165-33c6-8942-18f8911bcb24@johannes-bauer.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32446 invoked by uid 550); 22 Mar 2018 13:12:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32425 invoked from network); 22 Mar 2018 13:12:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=tz3UchffZyukpjcK0grEe1Uac9OkQ54+irNztG45nEE=;
        b=hrE4Not8s5z8TcIEczGt5ShQs5mrxaguEY7dCDVXVFWQhqnY6XnvEZhYyMZSRM399J
         Souc8rUCk+v75fNuixyW9IodHUKMqwvpwq994hcwsdBKWLAjYBwQJ71TcLQXUcgzKF44
         78Fsoa0CoNxD6h5Zi0kxXN295F+luvr53NQDRBbKX9Yn9cRCcGXDAafIxJaDzgB3Ze+n
         T98Yi2QwFfBiqlMBODiX8UfV7/ihr95oMiAdDC3RKMgXtGZnI6yDSoM+OQnoy6lWsNfK
         sK0tmI+2WEf68ubv0iC7Iv41x3Kxgq0QnW7AappeRNvfP9tvpSSur81xMExsScgYeJYm
         G54Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=tz3UchffZyukpjcK0grEe1Uac9OkQ54+irNztG45nEE=;
        b=s1uHWMEgH3gDFtD6xD4T8heP92juE3U46ZFhfB9B3aTvOAfPPCbJHcEtHfwWznbr8w
         TY1qVeTo6Q2ZCDc/ocecW31Rc5a7kZ8/02Qw6gSJDMZWpDgab0ZalSjqCNGNNOIOfeGY
         y7DvvHMga2Cd8Gm/X19hrIJvnEkWT7yOu2G/2qc5UPeCRr53B5f7mshD4zKLHWJwVEdL
         HFLloZ0erqtJv1wpgrI9WMmr8/M7ea8SW6X1PdWB+WTdjWVRK5a9gq2UfR+6RkOs0Vmx
         AmBVgQPU16GpSjLo1n704cFUvwSNjh9j9bGhQrUKq3sYTuEjJc11u7Usk+yeDWV0WD7s
         qiWg==
X-Gm-Message-State: AElRT7Fsu/RGBzIX0/kkomzhw0fGwHJGtc+gN3Dr3UBQGYpbRT173cbm
	AfO3jhBKnUjvGIrvBL3yOyK6I7WjbaF4qlOMbEbyAERa
X-Google-Smtp-Source: AG47ELuhkB0xfS+se1jpZlJaFQhiPVAzDxWMyZ7K+TT4w6rGExclFiehmfJHiY2SIAvPIm/lMk2K3Tye86/D0Z3Qz18=
X-Received: by 2002:a17:902:144:: with SMTP id 62-v6mr25454230plb.202.1521724346366;
 Thu, 22 Mar 2018 06:12:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <ae42a693-c165-33c6-8942-18f8911bcb24@johannes-bauer.com>
References: <CAO5O-E+iB2dy2BfQrLmCsNjXnuXjxAToPSETBfrJpe38TF7Dag@mail.gmail.com>
 <ae42a693-c165-33c6-8942-18f8911bcb24@johannes-bauer.com>
Message-ID: <CAO5O-EJ_t5m92qzFtjBXffhc3spX-VtiBZJsKpHn78mnxORu9Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 22 Mar 2018 14:12:25 +0100
From: Guido Vranken <guidovranken@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenSSL: bug in modular exponentiation
To: oss-security@lists.openwall.com

> Interesting -- could you confirm that the effect of this bug is a
> miscalculation? Or is it breaking the constant-time assertion?

It is a miscalculation. Note that in the PoC, the 'A' and 'C' bignums
are the same. So modular exponentiation A ** B MOD C is the same as A
** B MOD A in this case, and this should always result in zero,
because A ** B by definition results in a multiple of A, and A MOD A =
0.

I don't know if this bug makes any difference to execution time.

> Do you have a pointer as to where this was discussed?

It was found with Google oss-fuzz, which sends bug reports
automatically to me and the OpenSSL team. The OpenSSL team later
shared their thoughts with me via e-mail.

> Do you consider it a security vulnerability?

The OpenSSL team tends to assign severity according to the extent
their SSL library is impacted. But OpenSSL is in very widespread use
and the use of its bignum library is probably not even limited to
cryptographic applications alone. I don't consider it a security
vulnerability per se as I don't know of any approach towards
exploitation, but as with every API whose operation is not concomitant
with the expected behavior, it has the potential to give rise to
corner cases in specific use cases.

Various cryptographic functions in OpenSSL like Diffie-Hellman use
constant-time modular exponentiation, and with the recent bug in the
same assembly code they said the following about this:

"No EC algorithms are affected. Analysis suggests that attacks against
RSA and DSA as a result of this defect would be very difficult to
perform and are not believed likely. Attacks against DH1024 are
considered just feasible, because most of the work necessary to deduce
information about a private key may be performed offline. The amount
of resources required for such an attack would be significant.
However, for an attack on TLS to be meaningful, the server would have
to share the DH1024 private key among multiple clients, which is no
longer an option since CVE-2016-0701"

But this particular bug is not harmful, according to the team.

> Can you give advice to developers of how to mitigate this kind of issue?

Either don't use constant-time modular exponentiation or compile with
assembly disabled (./config no-asm). There's probably also a way to
specifically disable the offending assembly code, but I don't know how
to do that off-hand.

> Is it regarded a WONTFIX by OpenSSL or is it going to be fixed (just not
> treated as security-criticial)? If so, do you know the fix version?

They've told me that they want to fix it. But I don't know the ETA.

Guido
