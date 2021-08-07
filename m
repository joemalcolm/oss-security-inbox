X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2243" "Saturday" "7" "August" "2021" "12:08:25" "-0400" "Jeffrey Walton" "noloader@gmail.com" nil "53" "Re: [oss-security] SNI is a security vulnerability all by itself (was Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances))" nil nil nil "8" nil nil (number mark "U       noloader@gma Aug  7   53/2243  " thread-indent "\"Re: [oss-security] SNI is a security vulnerability all by itself (was Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances))\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] SNI is a security vulnerability all by itself (was Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances))" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9896 invoked by uid 550); 7 Aug 2021 16:29:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28075 invoked from network); 7 Aug 2021 16:10:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=i6Q+e0D+GrqKjEwkSHd+RWGrTqb7qoZYAc07d70OQk4=;
        b=S4Le72fcH3bjbms5jonoUevyDCm7hvkPdxFUE4Gqbui6RH3cfMzKewjQ+NAbh3hjvw
         4nW7BNpEEY8HO+O54amE9aG1EIPsOLnPk+Kx0PmAI2oKV6fbdKP3S5ej+Wus3+OfIQ+a
         nbdNZHguRikEdF1fYtNtcRTYw/A3ZFHgjB6ojwJg6ZMDkgIvt9eovMxlAL1JKu/8mgfD
         D+90Mdjmx1iJDe9hTlON07ybdD2C/Iehkn5FEfx9H21uZ220b+QDhVZ1utVlU/23zE5R
         3BkMQ5LN9m0rCoVGtJEu+uH4tebQnSIigJWooSiRzj/fe8E8MUxltykXFs4cbGiAAaOp
         6egA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=i6Q+e0D+GrqKjEwkSHd+RWGrTqb7qoZYAc07d70OQk4=;
        b=k/jUlOldrYPwWXzU81KFZkF/7LoTzbVUoM+/KcOOXfp6pNO0TNyFm2vUVGBUbKImUp
         5mFL/d14iEAiGSoTy6ksGrrACLRJdtbYSdPys5nwLfx6ggva2IGI9qvaiIMdDvClBPLe
         rAEMWIbnOtonxmtBGKP2wyBG15j94c0bF2UXhqoSQumRszHGtOFh3ELJ1qjiAvN05S7j
         nfD+DH1Ro9ChSddbyYipZs8ZTdjkbFvAu2vNs3c9dlFJBc5EHDqPOZRR+KdnUXVlk8X0
         /wWw4mAOV9aHX0MG73fxJfrAokv8+eaJvxJAAL0OZANFlypiyyhRLY9MIQHVHTG+unBw
         PMgA==
X-Gm-Message-State: AOAM530MJoAN+VadkjsquFQ18Wr7QIP9ETi9A4n5sySY6PFCvIFytIgb
	lAv1sDk9PoXgjMHA+gWQzDsnRy2kWPFlNk6TCSMdiHkpG3iqtQ==
X-Google-Smtp-Source: ABdhPJxG7VoG7SBhSGLijoPqXQDD0AS7Ga5eMGE/TEf269ly5TKgNuePqoWteK7eE1dBfwVyaw62zcoE/nXFNIM5MK4=
X-Received: by 2002:a17:90a:d190:: with SMTP id fu16mr27258863pjb.157.1628352644266;
 Sat, 07 Aug 2021 09:10:44 -0700 (PDT)
MIME-Version: 1.0
References: <Pine.BSM.4.64L.2108061711590.28219@herc.mirbsd.org>
 <20210807015102.ea4f5immh2l5ku4n@sym.noone.org> <Pine.BSM.4.64L.2108070210210.904@herc.mirbsd.org>
 <Pine.BSM.4.64L.2108070246110.904@herc.mirbsd.org>
In-Reply-To: <Pine.BSM.4.64L.2108070246110.904@herc.mirbsd.org>
From: Jeffrey Walton <noloader@gmail.com>
Date: Sat, 7 Aug 2021 12:08:25 -0400
Message-ID: <CAH8yC8nTm=upoz34jXs5cXnQBTZzQHKx-nUrsacD0=GEUZ9f_g@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Axel Beckert <abe@debian.org>, lynx-dev@nongnu.org, 
	Debian Security Team <security@debian.org>, 991971@bugs.debian.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] SNI is a security vulnerability all by itself (was
 Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in
 clear text via SNI (under some circumstances))

On Sat, Aug 7, 2021 at 8:29 AM Thorsten Glaser <tg@mirbsd.de> wrote:
>
> >Axel Beckert dixit:
>
> >>IMHO this nevertheless needs a CVE-ID.
>
> I wonder=E2=80=A6 perhaps the use of SNI, both in the TLSv1.3 standard
> and in some TLSv1.2 implementations, should receive CVEs as well?

As far as I know, the only problem associated with SNI is leaking the
server name to a passive adversary in TLS 1.2 and below. TLS 1.3 and
above provide for encrypted server names.

> It certainly ought to be disabled by default. Perhaps add some
> environment variable to enable SNI in the SSL library, and if
> it=E2=80=99s not present or explicitly set to 0, disable SNI (which also
> would disable TLSv1.3 as it requires SNI). Hmm, yes, this sounds
> completely like a good idea.

If you disable SNI, then you won't be able to setup an encrypted
channel. SNI is needed to setup the encrypted channel. During the
client_hello, the server needs to know which server/virtual host to
route the client_hello to.

The user:password@ is for the application layer or HTTP/HTTPS. It
should not be present in the transport layer. It is a bug in the
application layer, not the transport layer.

The transport layer does have a password based authentication scheme,
but it is going to be either Thomas Wu's Secure Remote Password (SRP)
or Preshared Key (PSK). SRP is based on Diffie-Hellman (something like
a^password), while PSK uses a symmetric cipher (something like
enc_k(password)).

> (Considering SNI also leaks the vhost addressed by the end user,
> which is otherwise hidden with wildcard certificates or grouped
> with tone others in multi-subjectAltName certificates, it ought
> to have been anyway.)

Yes, the client will learn the server's IP address. That is not
related to SNI. That's just how TLS works under the IETF's threat
model.

Maybe you are thinking of (or need) something like a Tor hidden
service. Transport Layer Security does not provide a guarantee like a
hidden service.

Wildcards are garbage. You should be wary of an operator that uses
them nowadays. A wildcard certificate could be used by an attacker to
have you connect to the receptionist's machine in the lobby running a
fake site rather than the organization's web server.

Jeff
