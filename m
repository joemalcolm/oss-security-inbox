Received: (qmail 7577 invoked by uid 550); 22 Jan 2025 15:52:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7538 invoked from network); 22 Jan 2025 15:52:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737561170; x=1738165970; darn=lists.openwall.com;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=owjK43knPx4nA1DYPC1nPLquYHZAYtzcJ1+oMXHGYrA=;
        b=bR+E7VHCqKsMVi2bRLN5Br3tvVySMc2t6YHsXLmAlpg099fv/Updh4fZzdstSTafFZ
         sDlID1JcRylJ2LJ0pKOmLUUEGqIDEqj1ZF79DnAwH+SON68kqfFLrbGI02kJiRZdiDZY
         rdvBFHUHaOX8iYESmIEAveXpRBpxDP44/xMndJHJHXhOluiI3FBQlBJ6bEc0sagolCwf
         tbkNUUYPFwwVS/OWf/NCAsYcfAKs7q13ufT3bOCna5lHtZen2y1+WTW0eV61ydZpTzAR
         Gg+mJMU/h1vr70RpYu/E7frhYcfY3oKOuTUDai2nTnP+93NjdMdCyqTvoWH4Cl6auFye
         zumg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737561170; x=1738165970;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=owjK43knPx4nA1DYPC1nPLquYHZAYtzcJ1+oMXHGYrA=;
        b=H58uyH6DXC2XpBeSQz78yI87MFYmh/ZWxkUBGmKZS9xruXLnj+MXk44mFaDHyMuYNS
         ITQvqH5Nd/VvDKtFsKOliD3MsLWrEJh4uYLoivKcys6z8JCKv6GLFiQP2ye58EQm1/8Y
         E3Yv1nPlytOYl+1wEqwHhLIYaViYQPeptAu1gm5lRrbIpGasA2pJQZinKmzCMwitOzXJ
         9f7XrNhK3pMHo5p5mZaG3WVNLinpolZaw25P2Xcp7Ia3hewCf4d+p1hUMdP9E/tUkvSF
         knkczvJqUABNLDDBfh9rduc81iekQjMb4L2A63XP3BNJxsFFI0iujbMlHvJVernwpsDT
         9S1g==
X-Gm-Message-State: AOJu0YzA/MhsQ3JQXUR5X+QSbuYrKw9nORo8SmhN1XfhOXklXXs/S6fw
	zyUmnT7KQjsTXNi5EReESfLEk0cEw2x1pRX4p4RqnQCICJRcY7mmW80FEA==
X-Gm-Gg: ASbGncvzn75K4189wfidKpQHPuaJoSQ2HpAb7xIwJpLrsbB1L3VH2rxYZ+CUTr+wTQc
	OplkNRfrrOIvZGyrIM/XeWgbYfHd4Apy6J2M6oVAG95tE7/fe+fajIZ2PRk6FVctyvOpiH+8ZjB
	vKqPpWVaUf7OBvwV3LJ8V9p59Dkqq23XCjhIcjTZbyc0KLskmXLoUstCRyoAs2ML47xyLRXNlKT
	sskrYiSLGddlftGrR7l2LpRfb8Y/SBZ/iqJrgUxJqXW5GL2NZmm9pyLiL3ddR49D6U4cK1ee5x6
	B4rYUwcw8rdy2QsFdx7szHMSyRbbxGztVlvqjAqhycArWPvHanJHEYJWXf5fN/ayxrlc9cH78y8
	=
X-Google-Smtp-Source: AGHT+IHVldnZ5+gwMZh3SEcKPoBqd+nyG/4nlql57ocz9xOCjPsJM0ERZM2gXiffTP1azf0RylhMgg==
X-Received: by 2002:a17:90b:4d0c:b0:2ee:d4ed:13a7 with SMTP id 98e67ed59e1d1-2f782da76a0mr11218313a91.7.1737561170166;
        Wed, 22 Jan 2025 07:52:50 -0800 (PST)
Date: Wed, 22 Jan 2025 07:52:48 -0800
From: Tavis Ormandy <taviso@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <Z5EUUMd1xkSSKAEM@thinkstation.cmpxchg8b.net>
References: <Z5BYg9WPFBF7JBEB@thinkstation.cmpxchg8b.net>
 <Z5B2PA7DHTBbvbOq@itl-email>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z5B2PA7DHTBbvbOq@itl-email>
User-Agent: Mutt/2.1.4 (2021-12-11)
Subject: Re: [oss-security] AMD Microcode Signature Verification Vulnerability

On Tue, Jan 21, 2025 at 11:38:16PM -0500, Demi Marie Obenour wrote:
> On Tue, Jan 21, 2025 at 06:31:31PM -0800, Tavis Ormandy wrote:
> > It looks like an OEM leaked the patch for a major upcoming CPU
> > vulnerability, i.e. "AMD Microcode Signature Verification
> > Vulnerability":
> > 
> > https://rog.asus.com/motherboards/rog-strix/rog-strix-x870-i-gaming-wifi/helpdesk_bios/
> > 
> > I'm not thrilled about this - the patch is *not* currently in
> > linux-firmware, so this is the only publicly available patch.
> > 
> > However, other people are discussing how to extract them:
> > 
> > https://winraid.level1techs.com/t/offer-intel-amd-via-cpu-microcode-archives-1995-present/102857/53
> 
> Is this fix effective, or can it be bypassed via a downgrade attack?
> 

I'm not sure yet, the vendor has been really excruciating to deal with,
this is the first time I've been allowed to see the patch!! :(

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso
