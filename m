X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1367" "Monday" "21" "September" "2015" "12:56:55" "+1000" "David Black" "dblack@atlassian.com" "<CAAYo3BsVdptZwDaQX9sWqFVhVE+0OdL1tZ83uScbmE3vgGfGgQ@mail.gmail.com>" "40" "[oss-security] Re: CVE request - ldapauth-fork versions < 2.3.3 are vulnerable to ldap injection." nil nil nil "9" "2015092102:56:55" "[oss-security] Re: CVE request - ldapauth-fork versions < 2.3.3 are vulnerable to ldap injection." (number mark "U       dblack@atlas Sep 21   40/1367  " thread-indent "\"[oss-security] Re: CVE request - ldapauth-fork versions < 2.3.3 are vulnerable to ldap injection.\"\n") "<20150918190842.C25B452E292@smtpvbsrv1.mitre.org>" ("<CAAYo3BtL5AV6HfKow3XK7ZFx9mFjCvkPJ=zcNUcUnL13sFqfug@mail.gmail.com>" "<20150918190842.C25B452E292@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24356 invoked by uid 550); 21 Sep 2015 02:57:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24334 invoked from network); 21 Sep 2015 02:57:27 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=WxcZXgSs5/n9/3oMRhEJJ18KTZ6R8dO66mjGOsKlyx0=;
        b=bk1qFZLjwRqxCokqdvFkmuDxfgNeod8FXHO5R2TeAhzTRGDOkLzWfyzkLmwzOqu3NG
         +ACGHZb9ldGUqVACpmUQ3r3bqA5DOAQf8rXKVTRv9pZrcJy7TwTVuIIkaBSXQyrEuPBU
         ANqbMK7Gfu5fYNIh1htEJC26zH6UHm3yi+bVbWJop70j1jkAwoF0I9Tx0QMFu4Cf9uih
         Qv9hci3YtUSqOX64UPfNvD3EEGCxwD+noMC1kbrxflvVh6uIBG2zG1eoQGUCknuALiL4
         ef2Tzpp8see5mDC5s2wrM9uwYB/pgNQlg/e/DblqhQKrjus13jdNbz+ysmMfZLyz7Bxf
         B2RQ==
X-Gm-Message-State: ALoCoQnZh5C7m48tthrKJzSEZgBb9u/ZwGk44TifHEmG+suUG4tZWgWeaKOL2iGtXs48cNH2ib5W
X-Received: by 10.202.56.85 with SMTP id f82mr9818873oia.37.1442804234981;
 Sun, 20 Sep 2015 19:57:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150918190842.C25B452E292@smtpvbsrv1.mitre.org>
References: <CAAYo3BtL5AV6HfKow3XK7ZFx9mFjCvkPJ=zcNUcUnL13sFqfug@mail.gmail.com>
 <20150918190842.C25B452E292@smtpvbsrv1.mitre.org>
From: David Black <dblack@atlassian.com>
Date: Mon, 21 Sep 2015 12:56:55 +1000
Message-ID: <CAAYo3BsVdptZwDaQX9sWqFVhVE+0OdL1tZ83uScbmE3vgGfGgQ@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113cc266e82fd505203909d8
Subject: [oss-security] Re: CVE request - ldapauth-fork versions < 2.3.3 are vulnerable to
 ldap injection.

--001a113cc266e82fd505203909d8
Content-Type: text/plain; charset=UTF-8

On 19 September 2015 at 05:08, <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > https://github.com/vesse/node-ldapauth-fork/issues/21
> >
> https://github.com/vesse/node-ldapauth-fork/commit/3feea43e243698bcaeffa904a7324f4d96df60e4
>
> Use CVE-2015-7294.
>
> The existence of a fork does not, by itself, lead to use of multiple CVE
> IDs.
> The CVE ID is for the vulnerability in the shared codebase, regardless of
> the
> product names in which that codebase is used.
>
>
> https://github.com/vesse/node-ldapauth-fork/issues/21#issuecomment-108186158
> has comments from the vendor about possible mitigating factors. Given
> those comments, is the most straightforward threat that the attacker
> may be able to arrange for a search result to be exactly one username,
> and may not know the complete username in advance but may know the
> password in advance?
>

That's one option. I was actually thinking that an attacker could also
exploit this issue to extract information from ldap - provided that the
attacker knows a working username and password combination then they should
be able craft ldap queries that only match their username if an additional
search condition is met.


-- 
David Black / Security Engineer.

--001a113cc266e82fd505203909d8--
