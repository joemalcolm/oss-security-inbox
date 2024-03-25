Received: (qmail 25911 invoked by uid 550); 25 Mar 2024 20:21:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25893 invoked from network); 25 Mar 2024 20:21:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711398360; x=1712003160; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hs0KpXd0n+r8I9PtGuT4k6ge+Oij6HShmyOOpT93VIU=;
        b=e9Iaa0YxUHc12AZ5SyDClpsHcZHVjUtdlsFpBsjvS0D48gyGRy42o1kb6f4PEt8pdA
         0dL6N7CbQHw5u4hjWMyXzOrhlhmE0BrARXh8dgCd0/fg5oMaouBU8WtX9ZKcooHRKJxV
         6plkR1LgWuu/T6bov3gdVvhmNG+CeRMvoGfs3v+HQfXP4obWQ0JK6Sf028++sS7mH/eO
         TQqg8AcEp0JtMEzEj7rrqevxyokfSL0dUAzb9VSCTpjRTHj6GN+6anMIiWSMB/ZY/uPL
         rkIbifnyjjkBEcS7U5ewm8VvYRWd81dgLH4mgN8FJJWXOqj79cALdRJmWZlUhDvu7WvP
         iG/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711398360; x=1712003160;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Hs0KpXd0n+r8I9PtGuT4k6ge+Oij6HShmyOOpT93VIU=;
        b=NxAREzgtoi0/eqpGuSoQTWJFbfyhSjTlv2g7GEkJAYdfWMG0PsYWjLJkRj08G0noP2
         BTxMlKx6aN/ODJNIemuX2/6dZOE5DijCC/NkCTGHFIzgIEmuhGWb0Fi4H4Dr9GwUJBa0
         no1O2KbuB9SCJury4fvGF/kOl+3gKhisNmzLW88R2w+r3yTmFVmvhUDRQMewWcvkH6Qv
         0QG77BClm1ap9V4PBwQsNpqMUtpGUMZc5qzqtzUQYYU7Qg/M8XSKH7idzB4qBFq5DyGK
         /boWK2FbrMKCzqzYrQ0udkOV6luD+mzB2nSUsmUC2uAOmeMgPLzQGgD3GUC3/Ka9weri
         YLpw==
X-Gm-Message-State: AOJu0Yw9zAjGEvunnjjnwT0zxkCI8tWADM9jJXwINrFcMYGKK4B+7jM9
	YfEjJqkOjHd87NchhU+WLgYC8FncAzSdCvoj0J0qgWdLtuxWGKB2+xDG8jdDhIc=
X-Google-Smtp-Source: AGHT+IHU30EKKjC1dqRs/y/pOcUi8AOvvhzWvZPECNXSRE2VE7t0V9qNZmOSTVOpeumi9MDyfKjBzg==
X-Received: by 2002:a05:600c:3c94:b0:414:868d:1cbe with SMTP id bg20-20020a05600c3c9400b00414868d1cbemr4457258wmb.9.1711398359452;
        Mon, 25 Mar 2024 13:25:59 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 25 Mar 2024 21:25:58 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZgHd1pOFki9l1zin@eldamar.lan>
References: <cef0f6f4-ecb2-4ab6-bd5e-cac84b937125@oracle.com>
 <ZgFOKFCJarJj1N4w@eldamar.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZgFOKFCJarJj1N4w@eldamar.lan>
Subject: Re: [oss-security] GNU emacs 29.3 released to fix security issues

On Mon, Mar 25, 2024 at 11:12:56AM +0100, Salvatore Bonaccorso wrote:
> Hi,
>
> On Sun, Mar 24, 2024 at 09:05:20AM -0700, Alan Coopersmith wrote:
> > https://lists.gnu.org/archive/html/info-gnu/2024-03/msg00005.html reports:
> >
> > > Version 29.3 of Emacs, the extensible text editor, should now
> > > be available from your nearest GNU mirror:
> > >
> > >    https://ftpmirror.gnu.org/emacs/emacs-29.3.tar.xz
> > >    https://ftpmirror.gnu.org/emacs/emacs-29.3.tar.gz[...]
> > > Emacs 29.3 is an emergency bugfix release; it includes no new features
> > > except a small number of changes intended to resolve security
> > > vulnerabilities uncovered in Emacs 29.2.  See the file etc/NEWS in the
> > > tarball; you can view it from Emacs by typing 'C-h n', or by clicking
> > > Help->Emacs News from the menu bar.
> > >
> > > You can also browse NEWS on-line using this URL:
> > >
> > >   https://git.savannah.gnu.org/cgit/emacs.git/tree/etc/NEWS?h=emacs-29
> > >
> > > For the complete list of changes and the people who made them, see the
> > > various ChangeLog files in the source distribution.  For a summary of
> > > all the people who have contributed to Emacs, see the etc/AUTHORS
> > > file.
> > >
> > > For more information about Emacs, see:
> > >   https://www.gnu.org/software/emacs
> >
> > https://git.savannah.gnu.org/cgit/emacs.git/tree/etc/NEWS?h=emacs-29
> > lists these changes:
> >
> > > * Changes in Emacs 29.3
> > > Emacs 29.3 is an emergency bugfix release intended to fix several
> > > security vulnerabilities described below.
> > >
> > > ** Arbitrary Lisp code is no longer evaluated as part of turning on Org mode.
> > > This is for security reasons, to avoid evaluating malicious Lisp code.
> > >
> > > ** New buffer-local variable 'untrusted-content'.
> > > When this is non-nil, Lisp programs should treat buffer contents with
> > > extra caution.
> > >
> > > ** Gnus now treats inline MIME contents as untrusted.
> > > To get back previous insecure behavior, 'untrusted-content' should be
> > > reset to nil in the buffer.
> > >
> > > ** LaTeX preview is now by default disabled for email attachments.
> > > To get back previous insecure behavior, set the variable
> > > 'org--latex-preview-when-risky' to a non-nil value.
> > >
> > > ** Org mode now considers contents of remote files to be untrusted.
> > > Remote files are recognized by calling 'file-remote-p'.
> >
> > The detailed changelogs are at:
> > https://git.savannah.gnu.org/cgit/emacs.git/tree/ChangeLog.4?h=emacs-29
>
> Related to this there is as well an org-mode update:
>
> https://list.orgmode.org/87o7b3eczr.fsf@bzg.fr/T/#t
>
> quoting that post:
>
> > I just released Org mode 9.6.23 that fixes several critical
> > vulnerabilities. The release is coordinated with emergency Emacs 29.3
> > release
> > (https://lists.gnu.org/archive/html/info-gnu/2024-03/msg00005.html).
> >
> > Please upgrade your Org mode *and* Emacs ASAP.
> >
> > The vulnerabilities involve arbitrary Elisp and LaTeX evaluation when
> > previewing attachments in Emacs or when opening third-party Org files.
> >
> > The arbitrary Elisp evaluation is fixed by this release.
> >
> > The fix for LaTeX evaluation requires Emacs 29.3 and will not work for
> > the earlier Emacs versions. If upgrading Emacs is not viable, as a
> > workaround, you can set `org-preview-latex-default-process' to 'verbatim
> > - this will disable LaTeX previews and avoid the vulnerability.
>
> I believe CVE assignments are yet missing. RedHat folks, can you
> assign CVEs as needed for the individual emacs and org-mode issues?

CVEs are now assigned for the emacs and org-mode issues:

CVE-2024-30205:
- https://git.savannah.gnu.org/cgit/emacs.git/commit/?h=emacs-29&id=2bc865ace050ff118db43f01457f95f95112b877
- https://git.savannah.gnu.org/cgit/emacs/org-mode.git/commit/?id=4255d5dcc0657915f90e4fba7e0a5514cced514d
CVE-2024-30204:
- https://git.savannah.gnu.org/cgit/emacs.git/commit/?h=emacs-29&id=6f9ea396f49cbe38c2173e0a72ba6af3e03b271c
CVE-2024-30203:
- https://git.savannah.gnu.org/cgit/emacs.git/commit/?h=emacs-29&id=937b9042ad7426acdcca33e3d931d8f495bdd804
CVE-2024-30202:
- https://git.savannah.gnu.org/cgit/emacs.git/commit/?h=emacs-29&id=befa9fcaae29a6c9a283ba371c3c5234c7f644eb
- https://git.savannah.gnu.org/cgit/emacs/org-mode.git/commit/?id=003ddacf1c8d869b1858181c29ea21b731a8d8d9

Regards,
Salvatore
