Received: (qmail 13387 invoked by uid 550); 3 Jul 2024 07:00:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32413 invoked from network); 3 Jul 2024 06:55:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719989704; x=1720594504; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4XbrUqDR2YxlzLD1QQhi/GvCFqY6eW5s5GFr8lbgo4U=;
        b=m6aeNgahBxffEUgxr0n4P8QQ8nG24Z4F1mxGc+jnpXePgyT4HvDgmw3bsSQvDILwel
         KVwWmAMtqstaMt5hxrIQO4EqKrIiVaZ3LZrLWKSLP1L7jrlNLL54m4gkRBWPJV/Yg4ZE
         70fdfOt4QcPxq3CRhOMOJbsBwEl6W8x2Ibh9CeAQQZAB0db4lrD5vD7AGWQBJSYxaUvv
         d/7sE8HF/e4EDjYYZx0UDdO9LQtqlSwlU4VP9cGX1fi8w/x5W32ZNE75z5+oUvsbma7q
         3BSqlxi8OHa7Rm7NTBEsY5+YkN2MBnij0jGymUc+NWZjYbpo4SvzNXblC5sXP3ewSBsr
         qe2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719989704; x=1720594504;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4XbrUqDR2YxlzLD1QQhi/GvCFqY6eW5s5GFr8lbgo4U=;
        b=ie94llg1OjhymL8N2hmCuKQp6/ZOAuvsn4YM/pvMhL3YGcg1puwjJO95jwhif30avk
         HtGBJt2tmZZt0v1A7M7eGfpJFhbddbN5vIAuKoyxRIX72bM29ChLxREmqDGI1rMJU2wJ
         0rQoBdx/cOyrAgFs8PZbhlgdJqWaTco4JCqBebiR+PZ/8TmjL5AhB6XvxG/lnMGwKnFa
         R+LoWrbUj+pkle5YrTKoTN5PTWaYd+xZlSghZgYsryirjjK6J3K1gUz8BlqEr5pPU7Ic
         Q4Jn6/XLx3LKYPDX2om4HBAW2Hfsb0balWli08MHyullz4wM8bHIaxFH5npFSav/Wgbr
         MUQQ==
X-Gm-Message-State: AOJu0YxfaTWV+eFxbMJw4eiGgC3ir7bWhcAEQg15EFS9BXbMAO4+4ach
	jq7nqS4AgUsmHs0ED9b08MX/Y5TtBo7HUpK+sV8f9Qj0EYrvFj8Hv/Buu85hLm42017X08u+oik
	XMEZmdjSw2B6POzL6HHoQxBQpMy2Uqh8d
X-Google-Smtp-Source: AGHT+IFWchvQYpm0Y2MPVy2wL91RtvzcfKH6FgEZjeaqVjXpME5qzsVKFYO71ta56Nzoo9N4yyrdvUGZl51J2SidFZA=
X-Received: by 2002:a25:aa65:0:b0:e03:aba0:3736 with SMTP id
 3f1490d57ef6-e03aba03b56mr1222935276.45.1719989704323; Tue, 02 Jul 2024
 23:55:04 -0700 (PDT)
MIME-Version: 1.0
References: <20240701083838.GA12787@localhost.localdomain> <6684B10C.3070904@gmail.com>
In-Reply-To: <6684B10C.3070904@gmail.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 3 Jul 2024 02:54:28 -0400
Message-ID: <CAH8yC8=zAGQsdCXPRM3LJsoMJS+AhXLJ01awX4k3DpTbxoMqWg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2024-6387: RCE in OpenSSH's server, on
 glibc-based Linux systems

On Wed, Jul 3, 2024 at 2:39=E2=80=AFAM Jacob Bachmeyer <jcb62281@gmail.com>=
 wrote:
>
> Qualys Security Advisory wrote:
> > Qualys Security Advisory
> >
> > regreSSHion: RCE in OpenSSH's server, on glibc-based Linux systems
> > (CVE-2024-6387)
> >
> > [...]
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > SSH-2.0-OpenSSH_4.2p1 Debian-7ubuntu3 (Ubuntu 6.06.1, from 2006)
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > [...]
> >
> > ------------------------------------------------------------------------
> > Practice
> > ------------------------------------------------------------------------
> >
> >     I learned everything the hard way
> >         -- The Interrupters, "The Hard Way"
> >
> > To mount this attack against sshd, we initially faced three problems:
> >
> > - The House of Mind requires us to store the pointer to our fake arena
> >   at address 0x08100000 in the heap; but are we able to store attacker-
> >   controlled data at such a high address? Because sshd calls pam_start()
> >   at the very beginning of the user authentication, we do not control
> >   anything except the user name itself; luckily, a user name of length
> >   ~128KB (shorter than DEFAULT_MMAP_THRESHOLD) allows us to store our
> >   own data at address 0x08100000.
> >
> > [...]
> >
> > Finally, our long user name also allows us to control the potentially
> > uninitialized next field of 20 different structures (through leftovers
> > from temporary copies of our long user name), because pam_start() calls
> > _pam_add_handler() multiple times; i.e., our large race window contains
> > 20 small race windows.
> >
> > [...]
>
> A thought occurred to me late last night:  this exploit required the use
> of a very long fake user name (~128KB).  No legitimate account will have
> such a name; should defense-in-depth motivate limiting maximum user name
> length to some (un)reasonable value?  (The actual longest user name on
> the system cannot be used to set the limit because doing that would leak
> the length of the longest valid user name.)  I doubt any real system has
> even 256-byte-long user names, so a 1KiB limit (perhaps by default, with
> a configuration option (I propose "MaxLoginNameLen" to start a
> discussion) to raise or lower it?) would be far beyond any reasonable
> need, but would (or so it seems to me) have made at least this exploit
> much harder, if not impossible.

$ grep -IR LOGIN_NAME_MAX /usr/include
/usr/include/bits/confname.h:    _SC_LOGIN_NAME_MAX,
/usr/include/bits/confname.h:#define    _SC_LOGIN_NAME_MAX    _SC_LOGIN_NAM=
E_MAX
/usr/include/bits/local_lim.h:#define LOGIN_NAME_MAX            256
/usr/include/bits/posix1_lim.h:#define  _POSIX_LOGIN_NAME_MAX   9
...

> There may actually be a case for putting the user name into a static
> buffer here:  its length should be limited anyway to prevent abuse and
> keeping it away from the heap may be helpful as a defense-in-depth measur=
e.
>
> If there currently really is no limit at all, outrageously long fake
> usernames (limited only by bandwidth and LoginGraceTime?) could be
> directly used for a simple denial-of-service by consuming memory on the
> server, given sufficient bandwidth available to an attacker.

Jeff
