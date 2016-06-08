X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2945" "Wednesday" "8" "June" "2016" "17:15:59" "+0200" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com>" "72" "Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" "^Date:" nil nil "6" "2016060815:15:59" "[oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations" (number mark "        gsunde.orang Jun  8   72/2945  " thread-indent "\"Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant time codepath for certain operations\"\n") "<20160608085431.GA4278@openwall.com>" ("<20160608085431.GA4278@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26466 invoked by uid 550); 8 Jun 2016 15:16:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26441 invoked from network); 8 Jun 2016 15:16:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=5aOsvA2NXRXIM89A0O0FwHmx1/noPUVkE4HCd3kLTk0=;
        b=xsceq+lfxTemSGaEIjecKOBSD0wSRpm/4tAqYS4a/lbpb8jSUV0iieyr7OodjrxHDX
         24eUGg9W/2tjz2CIzvEYzQEcOJ4qqCbylVzxgRJAAEJajgf9W1tEmVxf2CtmHNnKz2Dt
         oCoGe0hHjm0gi6Uj5niKcn3I9JfkBkbpsz6RgAp3MneLLW+/0Clict2DLYYV6P7N9+Jf
         jnqIoGUknUKBGNozOjxdNrrb+8Mkf6LD9CGa+n7++793WlfQJ8HXFrzcKpl6Ga77fMXN
         MCgh8dHiJWMePyBQX2HFAHnn5ek89I7Ox+utkQg6fykHD2TWC+MvonIkVvzhPSUcEoR/
         MGwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=5aOsvA2NXRXIM89A0O0FwHmx1/noPUVkE4HCd3kLTk0=;
        b=FfsnOFbeSbkyG+ORb5h7U2EKcl2f1iHQbSgpmo7XgHGYxLmC0RDqn09EqqlHTNWiFv
         u63nZ6L9Qi/bYe6XFSSH+1mZ7Oe7zTQGUnHWwGageUGarZVYkYKaiQXEogC50GD/kcbq
         XgetbNd4uaTUdHbth+EMxWCzdpTBDN3G4aPf8YqmH/IzoyD7RJ6eUIv73JmFTCTXXNWx
         WX5RzHtwlAlAi/i6vzbThnMd3d9DsRdl7gsVrQFec7zDxhTBjSoVhK9nU01NdKKiPXR4
         NK5Hj+esCMuDnWwXQnlO9naxFuEUYWXmppwqfJZXHdnL1Dpw+3RxyRdpNs7JDrPGiNAg
         klcQ==
X-Gm-Message-State: ALyK8tLcE34vgjOg/3uDgk58D2MGlLJfEhPqHocFn8pZkCAR5Ux56xQIYz9iK0SDV1IF4YTn8lTnfaZp3BvH2Q==
X-Received: by 10.202.52.85 with SMTP id b82mr2777093oia.158.1465398959667;
 Wed, 08 Jun 2016 08:15:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160608085431.GA4278@openwall.com>
References: <20160608085431.GA4278@openwall.com>
Message-ID: <CAOTQaXHLe6ST5SOQhH_hig1KD9UyhzMUvr4iXiJz5szm5hsUow@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113d433e71ffed0534c5c815
Date: Wed, 8 Jun 2016 17:15:59 +0200
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-2178: OpenSSL DSA follows a non-constant
 time codepath for certain operations
To: oss-security@lists.openwall.com

--001a113d433e71ffed0534c5c815
Content-Type: text/plain; charset=UTF-8

Whilst there is a commit in openssl and a CVE ID, I wonder why this hasn't
been announced yet by OpenSSL.org and why there are no official fix
releases (yet).
What made this issue different to the usual coordinated disclosures being
practiced with the OpenSSL team?

2016-06-08 10:54 GMT+02:00 Solar Designer <solar@openwall.com>:

> Hi,
>
> Just off Twitter:
>
> <mjos_crypto> Out today: This is the OpenSSL side-channel vulnerability I
> mentioned last week; now on ePrint. Also CVE-2016-2178.
> http://eprint.iacr.org/2016/594
> <@mjos_crypto> @mjos_crypto Currently unfixed in essentially all distros.
> <mjos_crypto> Note that CVE-2016-2178 /
> http://eprint.iacr.org/2016/594.pdf most severely actually impacts
> OpenSSH, which uses the OpenSSL library.
> <mjos_crypto> Cesar's CVE-2016-2178 patch for the OpenSSL library from
> Monday.
> https://git.openssl.org/?p=openssl.git;a=commit;h=399944622df7bd81af62e67ea967c470534090e2
>
> http://eprint.iacr.org/2016/594
>
> | "Make Sure DSA Signing Exponentiations Really are Constant-Time''
> |
> | Cesar Pereida Garca and Billy Bob Brumley and Yuval Yarom
> |
> | Abstract: TLS and SSH are two of the most commonly used protocols for
> securing Internet traffic. Many of the implementations of these protocols
> rely on the cryptographic primitives provided in the OpenSSL library. In
> this work we disclose a vulnerability in OpenSSL, affecting all versions
> and forks (e.g. LibreSSL and BoringSSL) since roughly October 2005, which
> renders the implementation of the DSA signature scheme vulnerable to
> cache-based side-channel attacks. Exploiting the software defect, we
> demonstrate the first published cache-based key-recovery attack on these
> protocols: 260 SSH-2 handshakes to extract a 1024/160-bit DSA host key from
> an OpenSSH server, and 580 TLS 1.2 handshakes to extract a 2048/256-bit DSA
> key from an stunnel server.
> |
> | Category / Keywords: applied cryptography; digital signatures;
> side-channel analysis; timing attacks; cache-timing attacks; DSA; OpenSSL;
> CVE-2016-2178
> |
> | Date: received 6 Jun 2016, last revised 7 Jun 2016
>
>
> https://git.openssl.org/?p=openssl.git;a=commit;h=399944622df7bd81af62e67ea967c470534090e2
>
> | author        Cesar Pereida
> |       Mon, 23 May 2016 12:45:25 +0300 (12:45 +0300)
> | committer     Matt Caswell
> |       Mon, 6 Jun 2016 13:08:15 +0300 (11:08 +0100)
>
> | Fix DSA, preserve BN_FLG_CONSTTIME
> |
> | Operations in the DSA signing algorithm should run in constant time in
> | order to avoid side channel attacks. A flaw in the OpenSSL DSA
> | implementation means that a non-constant time codepath is followed for
> | certain operations. This has been demonstrated through a cache-timing
> | attack to be sufficient for an attacker to recover the private DSA key.
> |
> | CVE-2016-2178
>
> Alexander
>

--001a113d433e71ffed0534c5c815--
