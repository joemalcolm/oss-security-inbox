Received: (qmail 16302 invoked by uid 550); 7 Aug 2024 12:40:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5495 invoked from network); 7 Aug 2024 11:50:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723031435; x=1723636235; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hGWdKXf33rwuzWEH7WdsClagNkF6pi5f3V97T5XFI44=;
        b=jGbvFKMW7MW10xge6zR0o9SDrKXImMZ3Ivbp78C3qGh2220e9dxatvHDIkVI9nGT+f
         wVG5C2HC/r4A05G47fF8ft5MVgteHJUBYyTs0R8dsxYOHWoIltaPdEsCqjeNqKBJ+wyS
         tTel9cG7HIJW5bbI5/rfODhaNTvanNiGbc3wuQbRCFfs0+KUQPUM6r8aG68mR7fA3dpN
         clG63cMKM7kMWzT7/SsuPCXPUz06EojVvjEe34g0GfcQo1jJfDrXyrmYPKYeAl8IrFyW
         eicaRFZNOMhxyQ3iBw/rw162uR6yp81N3aHOFWV9wgMfQPu8dWsp3CcDdvSjQCaXwmn7
         3ctg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723031435; x=1723636235;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hGWdKXf33rwuzWEH7WdsClagNkF6pi5f3V97T5XFI44=;
        b=VMnSe9kqXu501gBJWZ5aSUimOM4KrFM3s3oTmn8zMPXh8WOGsL2EETCcKyHktdcXuh
         50Yktou83gR/A1ES6m+wXZTp/sQYfW9B4dtSeNir7BZAUM43z9zrZLZaW7l3uaye6S+F
         Xdgm0atpY8DEEyQ/+CMNf4a9JaDtWMbJWncivRkx58ZQ1UPikOCqapVUxsMnEjA3lNyv
         ZS94yqewZ8dbXFT+dSGuMIGENoV6eruNGsrL6JHAU+96eSuCkstd4lcfK7QsAcWnTi3g
         dvhBlxmEVlGt/Fbolgw6dSTBfpaWKPneYKtaHbJXgjJd31qmiUZ5LeddH23aXorFlcPd
         dK4w==
X-Gm-Message-State: AOJu0YwgCtVwj2aDihFynG54+QCEewCRHADcjnj8pfklH5CMrTlmXpR1
	RQKEgFdEZhYjIHzsBSCjGY8Po9kgUWmnelG8yjChruTVGN9W0OfMD7xNjOufStbady3DIi2vP5Z
	PiqjIScqgmJJsEBFcvsP5JTFai/+eqw==
X-Google-Smtp-Source: AGHT+IGzBW38vvARj96qtnSuc/gV6gIzqBAw6TI4UgGyiIMcIZXpOukmvoX7++jNFdTZ/NQBu4RCNwBfXyTdufr1+gY=
X-Received: by 2002:a17:90a:d146:b0:2c2:f2d6:60d4 with SMTP id
 98e67ed59e1d1-2cff9415b9bmr22265741a91.8.1723031434954; Wed, 07 Aug 2024
 04:50:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook> <ZrJv8PDeCxQQJVxH@itl-email>
In-Reply-To: <ZrJv8PDeCxQQJVxH@itl-email>
From: Chad Sheridan <chadapsheridan@gmail.com>
Date: Wed, 7 Aug 2024 07:50:26 -0400
Message-ID: <CAHCA8E7m5n5tuGEZ-YJM_Nu9e1nmxLKJZwOK6XFifCkujP-2eg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000009e0d40061f168456"
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS 1.0/1.1

--0000000000009e0d40061f168456
Content-Type: text/plain; charset="UTF-8"

As a sysadmin, I welcome all of the changes. As far as warnings/alerts, I
can safely say, most of our clients don't read them anyway.

>
> Can those machines be put behind a proxy?
>

As for this, of course they can, but some clients will be tied up with so
much red tape and budgetary BS that it's a solution that isn't feasible in
a reasonable time frame.

>

--0000000000009e0d40061f168456--
