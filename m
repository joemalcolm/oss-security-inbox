X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1086" "Friday" "19" "January" "2018" "05:22:58" "-0800" "i@cloudlinux.com" "i@cloudlinux.com" "<CA+-XxSE1d+8b7cbfs7BknJQ9yy7w4sw=0EVwf=gpz43JAVWyhQ@mail.gmail.com>" "24" "Re: [oss-security] How to deal with reporters who don't want their bugs fixed?" "^Date:" nil nil "1" "2018011913:22:58" "[oss-security] How to deal with reporters who don't want their bugs fixed?" (number mark "        i@cloudlinux Jan 19   24/1086  " thread-indent "\"Re: [oss-security] How to deal with reporters who don't want their bugs fixed?\"\n") "<efa92101-facb-84ff-7582-78583e8c7381@hpe.com>" ("<20180118220124.GA9185@openwall.com>" "<efa92101-facb-84ff-7582-78583e8c7381@hpe.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17774 invoked by uid 550); 19 Jan 2018 13:36:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5570 invoked from network); 19 Jan 2018 13:23:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudlinux-com.20150623.gappssmtp.com; s=20150623;
        h=in-reply-to:references:from:mime-version:date:message-id:subject:to;
        bh=2NYFUaPL8ITic4AxkrHBe/IzAeM4IXB9bnP7FtgHRes=;
        b=tvAeXKbVE1Xj9cjCa3sfmih8nK7a250buDKIidgt/UVcAFYkCEZFd708Qcl23Py3Dk
         bRrRV1OHDgljd3BNJKSPaFR7BNQCewaX2tFcwuGNzAyQoks5+4YQI++3kF2h3E6CzXvH
         PwBPP9NkrdmUXMkk/iUq2x8r8XVenDCc6aOaAhR3aYQvRGVchb5v46gvjnTqtU0QzDS2
         eJjI3bm+ofzzmTWgdGxKYrkZWZ2XFquxGklDcWKcwyOHXgcocKLmoMhf4F4T0RmLnp0g
         W/fHm5y0W4B0f/3GzyM3Ry4bIsP0PhWBrTLIG/ehHa6i5b0PQINubc+q0VmafeJ+4roI
         IVPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:in-reply-to:references:from:mime-version:date
         :message-id:subject:to;
        bh=2NYFUaPL8ITic4AxkrHBe/IzAeM4IXB9bnP7FtgHRes=;
        b=BqIijXgrt5VDuDCRy4M1WFueFU++FCCS/Kd/xNiI8xVU5P5/rvp9QVJWrBHKE9TRA2
         Hdjyw2wvXOiqELD97Fa4zldAGnps4Uu+4Qj6Lqg+Nw8BO2F+g2UyUxuWVNeYSsCtfgzd
         0KOPoVL77+aAuL+6k6Wv2IKXisrNceksVJjTtCZwHaNqxTHzoZF3G7ciVxuK7sX50Pkb
         g/zp2fSBAskArEPPhLSgL9iLMDHoJCvLiSoCx/VxY1LXs1CqHqnQdvKFNSen3asARs6E
         zt44RAVwIrrjmzNViqhkqpK4ZMjnUHpyXjIh2aeL5h9DsRhrm4lb4ffJ/gQ65Fv8WCX1
         2RrA==
X-Gm-Message-State: AKwxytcBhTAzz9Th+5zsQZRbs3/TE6nhyTM+fvXVZKobwuMIgnQYueu2
	8gKRA+PIT5LaApZms0WIBK3SEKQU4gknPCA1ji+bcQ==
X-Google-Smtp-Source: ACJfBov7siTpmyVSsrJeBxYRZteXIyn9qJaPMGNF83doPMWVIlXjO96EIM6nF16E+XDtum//mhlbX19qQJOqZH5FDr4=
X-Received: by 10.36.13.209 with SMTP id 200mr32612603itx.25.1516368179334;
 Fri, 19 Jan 2018 05:22:59 -0800 (PST)
In-Reply-To: <efa92101-facb-84ff-7582-78583e8c7381@hpe.com>
References: <20180118220124.GA9185@openwall.com> <efa92101-facb-84ff-7582-78583e8c7381@hpe.com>
MIME-Version: 1.0
Message-ID: <CA+-XxSE1d+8b7cbfs7BknJQ9yy7w4sw=0EVwf=gpz43JAVWyhQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 19 Jan 2018 05:22:58 -0800
From: i@cloudlinux.com
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to deal with reporters who don't want their
 bugs fixed?
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

We have seen "semi-public" with Meltdown -- I think it was dreadful. I
would prefer private to "semi-public" any day.
-----BEGIN PGP SIGNATURE-----
Version: FlowCrypt 5.1.8 Gmail Encryption flowcrypt.com
Comment: Seamlessly send, receive and search encrypted email

wsFcBAEBCAAQBQJaYfEwCRDNe7NtZrd+DQAA/i4P/jjhkbmnFTDXU+ksSwYS
x0pyAPKj0Qzbn/fS2QVMcmRnZl2U3oYDpwRIJbRnLV+NGwFeqBMHVqx+kFMB
DeNMxqtlt6N15RbyjphLLK20QwdqD7RuqXh9xhV2eCm0SRk2hnzIw/z/u8Hq
CnQRXgsT6eiscvT+/uHzI628lGz7N5J+c7h4RoNbbtNVx64BDDEvsrWZgbKJ
9iW65HQ6S+lu6UiDXaGcbRJ5bYbbAumg0E/5KZMBlvc7ADQddiFg/nM2M+zW
JQX8ZqHOkMmOMvtuR6QkkkQqibWKEyRjwyTSexocdfU1azeZYS4BGk/t0m4o
cjCgEwbguLgfCoye1y9jIuNIMFyMSq9scoU84PqFlRWTjDkjsaR+Sjtp/0sf
S07vlRXAe2t9ZuBOU8/H5Vf9GNQKg9oV3OfKvAu5QGAGos/rjkSLSIgqZl/n
815jHyM63IDBB+cYBCNxoRhxdzklrxi5smjtm25vD58SZxtyND0e2oXXnrnH
B60dT9tH4PPfyFigSfNU34R8yJC8cvOOaSvFu3dV0MUexMs0vVayyHzVccwe
sZsfeTBI/8VyfRChcF9vshrBn2MdGhOG8rYxvm0wqBU0ISQPf8Cv9P7c6jPq
2mmjBDdH2hckos3VbyYgdqFbo7A0OMTN0a06mPgjreLL8eQZ33CTAk3DBo1A
r8lx
=Crf/
-----END PGP SIGNATURE-----
