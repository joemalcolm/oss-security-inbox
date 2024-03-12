Received: (qmail 20036 invoked by uid 550); 12 Mar 2024 14:12:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22367 invoked from network); 12 Mar 2024 13:53:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710251829; x=1710856629; darn=lists.openwall.com;
        h=user-agent:in-reply-to:message-id:from:content-transfer-encoding
         :mime-version:date:references:subject:to:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Un4wOA5u7UkbaZngX8SoB9l3Ekd31b3n//CLmncGO9c=;
        b=Epw0hlY4QXdBfCBKXT+AC+fy/HeoaP3L0PyI7OnN7JM75eKNOaHmc/f5jv+xHHUj+j
         Mw/lxIGB1t7/XsbN9ixrRvQwGuixl/blpF94ScpDt8ThXCQMrjoVTf4phnLtVIeqAEpR
         FompwA3l/ZgTAVoUnpy2PVqRwraUGiNFOjUogQiSRxW1pmSfGbFBtIyH93S+JsjpRJzI
         nQahV9n3Zkl6DStr+S9o1DLXvIdH5irP/Bum28jhaiyx93K2MjhW4ojcO5wynnAcYqgt
         O+vYPSddLL0M1rzIyhgJvIu4KESiSyzxiH8rWYOBcZbalJuIqGKph8YsRXD9yXoTK6pN
         ozjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710251829; x=1710856629;
        h=user-agent:in-reply-to:message-id:from:content-transfer-encoding
         :mime-version:date:references:subject:to:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Un4wOA5u7UkbaZngX8SoB9l3Ekd31b3n//CLmncGO9c=;
        b=np8SFbTvorqBdywtZuRUR5j5ZuOoXRsdmlDBa+3OBEiGfI4v1Izw1ucD7qC4JBGrUs
         PMKp534sy+e6R73+qQgpPx91u6RQR6OvhjaUBp0lStS+J/rO9ALm25MrxiEqbVkVqKrC
         SeQLT9zCGN8XKmkhDPFN4itjCvRgZ/kvHcgl+MOy5N5E+xPKfx191wfc3rfnbmXdy6p9
         0nl93YRiFHR0UJloXkGTnN+sICw+4Nae5UATkgJrzTcaZPz+u8m5I/ZhUa6oS7WSSUCc
         AFBiDO7y1ZKktiEB2V6gDY+DOmZAbcGifPcJEqu97Am9VJpZufQJfzQOZBUMCWKblqdw
         aIqA==
X-Gm-Message-State: AOJu0Yxfm8Ku/LuUD7kBKdUOBQJmKyXXap434s0gBMNpPsPTaDsvmxpo
	lvfK8a8YAfzO+dr2MVCUIkVdKsWdAEcfXjgcKjIQ/FyFVvy5y2NV9oJSXXsU
X-Google-Smtp-Source: AGHT+IFQsyLmbTHAMo4/+L1tOTtH70sYbPG2Cgr8OJ+3+hEsRZEbOjrM7rjpP87noJ4UnLCgSBRcdA==
X-Received: by 2002:a05:6808:3198:b0:3c2:4cd9:551d with SMTP id cd24-20020a056808319800b003c24cd9551dmr6277506oib.40.1710251829130;
        Tue, 12 Mar 2024 06:57:09 -0700 (PDT)
Content-Type: text/plain; charset=utf-8; format=flowed; delsp=yes
To: oss-security@lists.openwall.com
References: <gb6h5yblly7xer6jg6sgn7syzrze3jviotrmfsp3ifgy6rg2jr@igvcqdasmnof>
 <Ze_aAzVya8RMGDDZ@itl-email>
Date: Tue, 12 Mar 2024 09:57:07 -0400
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: "David W. Hodgins" <davidwhodgins@gmail.com>
Message-ID: <op.2kiw1hz3n7mcit@hodgins.homeip.net>
In-Reply-To: <Ze_aAzVya8RMGDDZ@itl-email>
User-Agent: Opera Mail/12.16 (Linux)
Subject: Re: [oss-security] Certificate policy: OCSP becomes optional and CRLs
 mandatory for public CAs on Friday

On Tue, 12 Mar 2024 00:28:49 -0400, Demi Marie Obenour <demi@invisiblethingslab.com> wrote:
<snip>
> macOS, iOS, Windows, and possibly Android have system certificate
> verifiers that can handle this easily.  For desktop and server Linux,
> should a CRLite package be included in system package managers?  Would
> it be feasible for WebPKI and {Open,Boring,Libre}SSL to handle CRLite,
> or does this mean that NSS should be used for certificate verification?

Isn't that the purpose of the crlutil command in the nss package?
 From "man 1 crlutil" ...

DESCRIPTION
        The Certificate Revocation List (CRL) Management Tool, crlutil, is a command-line utility that can list, generate, modify, or delete CRLs within the NSS security database file(s) and list, create,
        modify or delete certificates entries in a particular CRL.

https://manpages.org/crlutil

Regards, Dave Hodgins
