Received: (qmail 9751 invoked by uid 550); 10 Apr 2024 14:17:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9728 invoked from network); 10 Apr 2024 14:17:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712758637; x=1713363437; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2FOdglujJntMyX+klrqvu0NIy3ky7g+WQWfyUQbjQhs=;
        b=ZiS7NTzsr7YF+t9Pu0Ax1muDeTwr3Ozf+aATLdYKTCZ1OBow6f7yVt06k03PpbXg+j
         VvSDA/5iSDKrkogh6+PUUskEBynSzDco6XQbwIcEqZJzD+3huyPDZIpVC36Teua/9JAP
         mP/BTXMuUpUfKhThzQqSLvr9aDFkLSB2uDvHKbTR989KePybXAY8H2DTwyGfl4mPLw//
         m70544MhW0Rc7udG13gSO+bAZWCaEZdqciRhuyyj+KEkD4v5xaEpJjEQhxsD19/L4FQA
         GNUdzmBMooPIx5ApttNFVU9BRepZzueb9lqe8v/QgDl/48YIxeUZfKppCRhnPp0ntW78
         n35Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712758637; x=1713363437;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2FOdglujJntMyX+klrqvu0NIy3ky7g+WQWfyUQbjQhs=;
        b=g3y3jew/H7OTwOBr4WuFEoLTh9Itk1XmnUdCrVkTvKwYhDktRLPf1wqhIQ0OznX3Qq
         oDDMS1kO6av2HlR+WEmnLBlB5XY0/28n/pd/f15a9WNS1tytIrErIJKiTEurDNDTwjMu
         Pi5m/j3ekfbxyyfugWcnr0jKAbkI/S9ATF/kVl1zCH+IEJ6VwdNnUa3CgELwh3DS0QY+
         HmQY0Zwfha1A3dwxX1IUC6NgNqlG4AiTlaV6aNSIZtxNJMF5/gqmwcln/QZkxNMW/rhU
         ZlLpU1PNFV4JtVGAiiiGE7/JLe4/vQ6jyv9i85K+rBYx9LOq4OHPxl2xCwRMwiWabYl0
         UCLg==
X-Gm-Message-State: AOJu0YzSqhe9KY95hp+CMeBx7LBAFgaltW7ZKdBuUJACO36uf8tdU0kZ
	KciSSSx4ooFlAz5nMW9Xz1+dvza8UpIYVu7xBNdzC3DauEYZBhDi
X-Google-Smtp-Source: AGHT+IEHIN3olvu5KxmOeCt8UFHpjitm8WgK5l3Hlhj6FJ4Zo/i5/JTK4nUFc/d6EQGlyn4brdqxEg==
X-Received: by 2002:ac2:5622:0:b0:516:bea2:5931 with SMTP id b2-20020ac25622000000b00516bea25931mr1782971lff.23.1712758636994;
        Wed, 10 Apr 2024 07:17:16 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 10 Apr 2024 16:17:15 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Sean Whitton <spwhitton@spwhitton.name>, emacs@packages.debian.org,
	emacs-devel@gnu.org
Message-ID: <Zhafa3wcZONJX-_k@eldamar.lan>
References: <874jccjpvy.fsf@melete.silentflame.com>
 <87y19nu22i.fsf@localhost>
 <87bk6he8h4.fsf_-_@melete.silentflame.com>
 <87o7ahe85l.fsf@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87o7ahe85l.fsf@localhost>
Subject: Re: [oss-security] Re: Is CVE-2024-30203 bogus? (Emacs)

Hi,

On Wed, Apr 10, 2024 at 12:04:06PM +0000, Ihor Radchenko wrote:
> Sean Whitton <spwhitton@spwhitton.name> writes:
> 
> > Hmm, thank you, but let me ask a follow-up question: do you agree with
> > me that there is only one security flaw covered by these two CVEs, and
> > CVE-2024-30203 is the superfluous one?
> 
> Yes, CVE-2024-30203 title is superfluous.
> And CVE-2024-30204 title is not accurate - it only applies to
> certain attachments with specific (text/x-org) mime type.

Note that the CVE assignment (by MITRE as assigning CNA) for
CVE-2024-30203 is explicitly as follows:

> In Emacs before 29.3, Gnus treats inline MIME contents as trusted.

associated with:

https://git.savannah.gnu.org/cgit/emacs.git/commit/?h=emacs-29&id=937b9042ad7426acdcca33e3d931d8f495bdd804

If you think the CVE assignment is not valid, then you might ask for a
REJECT on https://cveform.mitre.org/ .

Regards,
Salvatore
