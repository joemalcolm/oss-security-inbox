Received: (qmail 1537 invoked by uid 550); 25 Mar 2024 10:08:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1518 invoked from network); 25 Mar 2024 10:08:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711361578; x=1711966378; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nyHTBzXknqRz5jOa5nZMS3jqwHSVRlSvHzgi+s35SsE=;
        b=jo2BPfhOkwuplf77Tc2/wtyeYIUC2MIXFmp/UHkUT/JWT/pA/1t+WnYAhBmGxSq0WZ
         mqWpOKbBzfgFh0uhZrskN8XDyeCx5rOVVRKmi7zhiP+IE1TL4gaWByRi0t8PTC0H/5fD
         Xt5Z+tHPuXNgnLTGuo4u60JlykrLm4I6ISJ0AOm/ZZkhmuCuCgZLfYdWJ+0U/EoTpizR
         YSedlRiUHSRsGa0boc0x7+xoh4F6WXwpJMW+9qygdfg/uj6KxhaRsqHaq1WO9Xq4Okv4
         FSGCQzILbV/iVM4o+fXE7cxqPHcWPyNDqPifzT77gBOthQCGhLjsuy4mCuwEUr6bnnLJ
         Wkmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711361578; x=1711966378;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nyHTBzXknqRz5jOa5nZMS3jqwHSVRlSvHzgi+s35SsE=;
        b=eRswlTp419Dof8NpjwQo+X/SSjnF6k84gCf1pcxdO9BsaZ8ef5a1HVAqlfHEqWvvEm
         tF028VpSbsSCUjYLMstbgwN/QVujkIlSL/mCzNeyUc7XfMsyCKqP6SQ+C58PLV4V+uR3
         dCUzzmmLg92kGmsXNvCXslXh3SDlmQloA00NIr2gB/anfChLkmmhldu/+kH4RiMkZoXT
         /h+TuejJVJmgLSEcTh4bt3CRtW5u9b2BDHPGhYdTy11muJqut4hPp5541XLJrQasKGZJ
         A/PCdTKgcJXGnDHEzjAMCDYwyWKxHSL9kXVxwFbGMkyjdpWisi0qdI1BE8OeUpiIM0HM
         u7nw==
X-Gm-Message-State: AOJu0YxyM86n0TULf7BMIEzxJmBj4GBbE7fQHHrE04V9g0qlCjEk930K
	ftnJNAG+W+CK2eymofng19QQVpzJkBeA3i37ojkBwtA7xDNr5rQIS2K3SVGJevc=
X-Google-Smtp-Source: AGHT+IHCMt4sseIaKfus38ulayZmcQeuGGh9DQ5LBLszv9AManfyF3wpWe3X3Na19bfKH+kxM9rTZA==
X-Received: by 2002:adf:ec48:0:b0:33e:1560:71a8 with SMTP id w8-20020adfec48000000b0033e156071a8mr4456936wrn.7.1711361578034;
        Mon, 25 Mar 2024 03:12:58 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 25 Mar 2024 11:12:56 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZgFOKFCJarJj1N4w@eldamar.lan>
References: <cef0f6f4-ecb2-4ab6-bd5e-cac84b937125@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cef0f6f4-ecb2-4ab6-bd5e-cac84b937125@oracle.com>
Subject: Re: [oss-security] GNU emacs 29.3 released to fix security issues

Hi,

On Sun, Mar 24, 2024 at 09:05:20AM -0700, Alan Coopersmith wrote:
> https://lists.gnu.org/archive/html/info-gnu/2024-03/msg00005.html reports:
> 
> > Version 29.3 of Emacs, the extensible text editor, should now
> > be available from your nearest GNU mirror:
> > 
> >    https://ftpmirror.gnu.org/emacs/emacs-29.3.tar.xz
> >    https://ftpmirror.gnu.org/emacs/emacs-29.3.tar.gz[...]
> > Emacs 29.3 is an emergency bugfix release; it includes no new features
> > except a small number of changes intended to resolve security
> > vulnerabilities uncovered in Emacs 29.2.  See the file etc/NEWS in the
> > tarball; you can view it from Emacs by typing 'C-h n', or by clicking
> > Help->Emacs News from the menu bar.
> > 
> > You can also browse NEWS on-line using this URL:
> > 
> >   https://git.savannah.gnu.org/cgit/emacs.git/tree/etc/NEWS?h=emacs-29
> > 
> > For the complete list of changes and the people who made them, see the
> > various ChangeLog files in the source distribution.  For a summary of
> > all the people who have contributed to Emacs, see the etc/AUTHORS
> > file.
> > 
> > For more information about Emacs, see:
> >   https://www.gnu.org/software/emacs
> 
> https://git.savannah.gnu.org/cgit/emacs.git/tree/etc/NEWS?h=emacs-29
> lists these changes:
> 
> > * Changes in Emacs 29.3
> > Emacs 29.3 is an emergency bugfix release intended to fix several
> > security vulnerabilities described below.
> > 
> > ** Arbitrary Lisp code is no longer evaluated as part of turning on Org mode.
> > This is for security reasons, to avoid evaluating malicious Lisp code.
> > 
> > ** New buffer-local variable 'untrusted-content'.
> > When this is non-nil, Lisp programs should treat buffer contents with
> > extra caution.
> > 
> > ** Gnus now treats inline MIME contents as untrusted.
> > To get back previous insecure behavior, 'untrusted-content' should be
> > reset to nil in the buffer.
> > 
> > ** LaTeX preview is now by default disabled for email attachments.
> > To get back previous insecure behavior, set the variable
> > 'org--latex-preview-when-risky' to a non-nil value.
> > 
> > ** Org mode now considers contents of remote files to be untrusted.
> > Remote files are recognized by calling 'file-remote-p'.
> 
> The detailed changelogs are at:
> https://git.savannah.gnu.org/cgit/emacs.git/tree/ChangeLog.4?h=emacs-29

Related to this there is as well an org-mode update:

https://list.orgmode.org/87o7b3eczr.fsf@bzg.fr/T/#t

quoting that post:

> I just released Org mode 9.6.23 that fixes several critical
> vulnerabilities. The release is coordinated with emergency Emacs 29.3
> release
> (https://lists.gnu.org/archive/html/info-gnu/2024-03/msg00005.html).
> 
> Please upgrade your Org mode *and* Emacs ASAP.
> 
> The vulnerabilities involve arbitrary Elisp and LaTeX evaluation when
> previewing attachments in Emacs or when opening third-party Org files.
> 
> The arbitrary Elisp evaluation is fixed by this release.
> 
> The fix for LaTeX evaluation requires Emacs 29.3 and will not work for
> the earlier Emacs versions. If upgrading Emacs is not viable, as a
> workaround, you can set `org-preview-latex-default-process' to 'verbatim
> - this will disable LaTeX previews and avoid the vulnerability.

I believe CVE assignments are yet missing. RedHat folks, can you
assign CVEs as needed for the individual emacs and org-mode issues?

Regards,
Salvatore
