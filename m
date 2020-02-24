X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2838" "Monday" "24" "February" "2020" "14:27:00" "+0100" "Cedric Buissart" "cbuissar@redhat.com" nil "93" nil "^Date:" nil nil "2" nil nil (number mark "        cbuissar@red Feb 24   93/2838  " thread-indent "\"Re: [oss-security] Re: GNU screen \"out of bounds access when setting w_xtermosc after OSC 49\"\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: GNU screen \"out of bounds access when setting w_xtermosc after OSC 49\"" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7734 invoked by uid 550); 24 Feb 2020 13:27:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7716 invoked from network); 24 Feb 2020 13:27:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582550838;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PPgBqS8pvZk0Gs3jSi2xeShLfRTzTxG1gGMi+YkBaBs=;
	b=AFVBfyMPLGyTlfZmz/rbtRxONlf7cdSRxoywBxQ78VPvVrzOHIblmo+ru3SviUxiFYNi0g
	IjcGT9aOL19cVFKlHj64m6FwHcnC2Ln75Yr85LOa6fMZ0FHBociWAszn/N9h7GLSKhha0U
	KJouR/za62GltBpCT+3ZmvU7E5glJ1k=
X-MC-Unique: 8umTYhZ1O5W0hn_CkHC48A-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=PPgBqS8pvZk0Gs3jSi2xeShLfRTzTxG1gGMi+YkBaBs=;
        b=JfOBTnGQZNV46r17lUsFjLObTKeBvFq6Vo37RnIoeEBS3+KK2h4nL4nPDMSGXclgkW
         7Uhfwj9C3w381mJfr09VaERcHFjiWqzczxZ/doL/GyCpYkQRoSQOMRcNsQSfdhY4WTqk
         OTqLg5cqh/IRnfgVq8Wf8Rg2HKIs03YCbuIBHdvsy69D1o7T0t9LBWr5WXYjsfPfqrB0
         6yClFwLCGy3zHUMBS6ryZ5YnsaH06LlO6GIGsBnqitu+CsXUzjts6Hqu8NFyCD6Xq7nR
         vdF+QU6xeLv+WEUw73IfiQ1DOz6UB11uuM7vVhh1mfd5znD5V414bX9eH/GujGGZNAD7
         qHJA==
X-Gm-Message-State: APjAAAUPszQfYMfHH9APnRNoQCjIBkozsLXwbvAGy4khOnvyKl/66UIU
	L4wowXlHwo59AR7jl8+LaIMEdvnwyXIpogyde7pNwNzD2K/fouLsTCN4ZgBjmrdf7b5Ds0ET97n
	5Gl2Ixb1bCxGN/dz5AixZP5yfm+wDNsbjA8k0pDUJ5Qhl
X-Received: by 2002:a05:600c:2215:: with SMTP id z21mr22353777wml.55.1582550831163;
        Mon, 24 Feb 2020 05:27:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqzJGxny/HYtiTafpxjnzj1JbtJOqrgxFJxtqhLEd7/W0I7vw0jDiosT4P9A1PW7g6oO+/Vz6YoKeu915AS34mk=
X-Received: by 2002:a05:600c:2215:: with SMTP id z21mr22353751wml.55.1582550830904;
 Mon, 24 Feb 2020 05:27:10 -0800 (PST)
MIME-Version: 1.0
References: <20200206140418.GA26959@openwall.com> <20200206172457.5b138fd5@milkyway.galaxy>
In-Reply-To: <20200206172457.5b138fd5@milkyway.galaxy>
Message-ID: <CAKG8Do7hTrBroswvkqKsMQ66a4+vk2jO4Wb=4TzAvXR2WgGqKQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Mon, 24 Feb 2020 14:27:00 +0100
From: Cedric Buissart <cbuissar@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: GNU screen "out of bounds access when setting
 w_xtermosc after OSC 49"
To: oss-security@lists.openwall.com

Hi all,

On Thu, Feb 6, 2020 at 5:55 PM Amadeusz S=C5=82awi=C5=84ski <amade@asmblr.n=
et> wrote:
>
> Hi,
>
> >
> > The fix commit is:
> >
> > ---
> > commit 68386dfb1fa33471372a8cd2e74686758a2f527b
> > Author: Amadeusz Slawinski <amade@asmblr.net>
> > Date:   Thu Jan 30 17:56:27 2020 +0100
> >
> >     Fix out of bounds access when setting w_xtermosc after OSC 49
> >
> >     echo -e "\e]49\e;                                    \n\ec"
> >     crashes screen.
> >
> >     This happens because 49 is divided by 10 and used as table index
> >     resulting in access to w_xtermosc[4], which is out of bounds with t=
able
> >     itself being size 4. Increase size of table by 1 to 5, which is eno=
ugh
> >     for all current uses.
> >
> >     As this overwrites memory based on user input it is potential secur=
ity
> >     issue.
> >
> >     Reported-by: pippin@gimp.org
> >     Signed-off-by: Amadeusz Slawinski <amade@asmblr.net>
> > ---
> >
> > This is followed by another related commit:
> >
> > ---
> > commit 0dd53533e20d2948351a99ec5336fbc9b82b226a
> > Author: Amadeusz Slawinski <amade@asmblr.net>
> > Date:   Wed Feb 5 21:05:28 2020 +0100
> >
> >     Increase permitted length of OSC
> >
> >     hyperlink feature used by some terminals requires lots of characters
> >     https://gist.github.com/egmontkob/eb114294efbcd5adb1944c9f3cb5feda#=
length-limits
> >     mentions around 2083 characters, set it to a bit more.
> >
> >     Bug: 57718
> >
> >     Signed-off-by: Amadeusz Slawinski <amade@asmblr.net>
> > ---
> >
> > Combined, these two commits change:
> >
> >   char   w_xtermosc[4][MAXSTR]; /* special xterm/rxvt escapes */
> >
> > (where MAXSTR is 768) to:
> >
> >   char   w_xtermosc[5][2560];   /* special xterm/rxvt escapes */
> >
>
> The report which resulted in second commit just happened to be reported
> at similar time and is not related to the issue at hand apart from same
> location in source code.
>
> > These are as seen on the screen-v4 branch.  On that branch, and thus in
> > all screen releases so far, the bug appears to be exposed only when
> > building with the "--enable-rxvt_osc" option.  Builds and packages made
> > without that option appear to be safe.  Amadeusz, can you confirm this?
>
> Yes builds without this option should be safe, however do note that
> as far as I know most distributions do enable it (I checked Debian,
> Arch Linux, Fedora and Gentoo).
>
> >
> > On master branch, the functionality is always enabled (and the option is
> > dropped), thus (not too ancient) builds from that branch are vulnerable
> > (until the above fixes, which were also made to that branch).
>
> Yes, however do note that all v4 releases are done from screen-v4 branch.
Has a CVE been requested already ?
I do not see one on cve.mitre.org
>
> Amadeusz
>


--=20
Cedric Buissart,
Product Security

