X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3193" "Tuesday" "25" "February" "2020" "08:12:26" "+0100" "Cedric Buissart" "cbuissar@redhat.com" nil "109" nil "^Date:" nil nil "2" nil nil (number mark "        cbuissar@red Feb 25  109/3193  " thread-indent "\"Re: [oss-security] Re: GNU screen \"out of bounds access when setting w_xtermosc after OSC 49\"\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: GNU screen \"out of bounds access when setting w_xtermosc after OSC 49\"" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18223 invoked by uid 550); 25 Feb 2020 07:12:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18205 invoked from network); 25 Feb 2020 07:12:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582614765;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G9avY4BGXeH0meV32nl0sucHtCAePGxpU3Rr9b60XW8=;
	b=LrX2ymJwSwk11HpezC2i6k/X7gpHLea8EIKook1A1L0AlJ/4NlL1XFNqLPkU0k5u6eqUd5
	TwxOMR4xBxeVMLDp5heZGUKbaPTxQAeiXNUQKczlgJ8l8MDT9xQycWI8d9JMy0E0bgmUqm
	KI/x/vybkxZKSRmEoo7qILo9HHLX7YI=
X-MC-Unique: szuYI3XOO0C47xfGfAW4Fg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=G9avY4BGXeH0meV32nl0sucHtCAePGxpU3Rr9b60XW8=;
        b=EU2WWKk8imJ6HO8NZCCmrxGgq3nZiVA/+WhcqzpveCX89Y6t4AA4GcG0qLFou+41j1
         AK3FAS3KYJtKWGwk83cOkJnlJXbb/OAZhBSR3YeN3y8flAff2I89+RYWUCAhWAcjKxY9
         7NnuE8sXwC8oOIZvCwyMIMm1uyaYi91YUrT/TJ8+gYHwi4SqQe7TZR79ncQbE4pyXZMn
         n4Z+DG8rYUfw3zcsttN9EVN5QExi1ni+5aCm3w0JIShFyP7UR0a0/w+Qx8LG3lcSEtpW
         tk4t9AVGV/bWCryL6TG8nvki4Q6Ewhx4pyTP8NRxaZ8C9o3Hzf64aK7dFYujqTNLfblf
         mYFA==
X-Gm-Message-State: APjAAAUaUST8eId3UeUOPowqDirk4rU4laOOd6v6kcWElzGJFB3tC1Xi
	TMac+4IDJzsNH2jPVNBjavpU3rdxncbo4dHMBx+FOSr7XZWFvXtBLnQeZPI2sX0Y0lACXGfl7SM
	sVqjn3D1DKUtnBpAR+bnqY/tvoNOZ7qDA2xghIK/vy1le
X-Received: by 2002:adf:8b54:: with SMTP id v20mr683446wra.13.1582614757950;
        Mon, 24 Feb 2020 23:12:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqwQ6Fu2ObPkgPSn9HDaNxtsHGtf5MlE32GkN7/MLjsxeLPTx+sbvS4O27TcIp/BohbusHYibHeKSedISGc7uzs=
X-Received: by 2002:adf:8b54:: with SMTP id v20mr683417wra.13.1582614757698;
 Mon, 24 Feb 2020 23:12:37 -0800 (PST)
MIME-Version: 1.0
References: <20200206140418.GA26959@openwall.com> <20200206172457.5b138fd5@milkyway.galaxy>
 <CAKG8Do7hTrBroswvkqKsMQ66a4+vk2jO4Wb=4TzAvXR2WgGqKQ@mail.gmail.com>
In-Reply-To: <CAKG8Do7hTrBroswvkqKsMQ66a4+vk2jO4Wb=4TzAvXR2WgGqKQ@mail.gmail.com>
Message-ID: <CAKG8Do5sO4b9qVzU=zTFF52fDRNNvtoCknnNoPBmd1VRGgnfvA@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Tue, 25 Feb 2020 08:12:26 +0100
From: Cedric Buissart <cbuissar@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: GNU screen "out of bounds access when setting
 w_xtermosc after OSC 49"
To: oss-security@lists.openwall.com

On Mon, Feb 24, 2020 at 2:27 PM Cedric Buissart <cbuissar@redhat.com> wrote:
>
> Hi all,
>
> On Thu, Feb 6, 2020 at 5:55 PM Amadeusz S=C5=82awi=C5=84ski <amade@asmblr=
.net> wrote:
> >
> > Hi,
> >
> > >
> > > The fix commit is:
> > >
> > > ---
> > > commit 68386dfb1fa33471372a8cd2e74686758a2f527b
> > > Author: Amadeusz Slawinski <amade@asmblr.net>
> > > Date:   Thu Jan 30 17:56:27 2020 +0100
> > >
> > >     Fix out of bounds access when setting w_xtermosc after OSC 49
> > >
> > >     echo -e "\e]49\e;                                    \n\ec"
> > >     crashes screen.
> > >
> > >     This happens because 49 is divided by 10 and used as table index
> > >     resulting in access to w_xtermosc[4], which is out of bounds with=
 table
> > >     itself being size 4. Increase size of table by 1 to 5, which is e=
nough
> > >     for all current uses.
> > >
> > >     As this overwrites memory based on user input it is potential sec=
urity
> > >     issue.
> > >
> > >     Reported-by: pippin@gimp.org
> > >     Signed-off-by: Amadeusz Slawinski <amade@asmblr.net>
> > > ---
> > >
> > > This is followed by another related commit:
> > >
> > > ---
> > > commit 0dd53533e20d2948351a99ec5336fbc9b82b226a
> > > Author: Amadeusz Slawinski <amade@asmblr.net>
> > > Date:   Wed Feb 5 21:05:28 2020 +0100
> > >
> > >     Increase permitted length of OSC
> > >
> > >     hyperlink feature used by some terminals requires lots of charact=
ers
> > >     https://gist.github.com/egmontkob/eb114294efbcd5adb1944c9f3cb5fed=
a#length-limits
> > >     mentions around 2083 characters, set it to a bit more.
> > >
> > >     Bug: 57718
> > >
> > >     Signed-off-by: Amadeusz Slawinski <amade@asmblr.net>
> > > ---
> > >
> > > Combined, these two commits change:
> > >
> > >   char   w_xtermosc[4][MAXSTR]; /* special xterm/rxvt escapes */
> > >
> > > (where MAXSTR is 768) to:
> > >
> > >   char   w_xtermosc[5][2560];   /* special xterm/rxvt escapes */
> > >
> >
> > The report which resulted in second commit just happened to be reported
> > at similar time and is not related to the issue at hand apart from same
> > location in source code.
> >
> > > These are as seen on the screen-v4 branch.  On that branch, and thus =
in
> > > all screen releases so far, the bug appears to be exposed only when
> > > building with the "--enable-rxvt_osc" option.  Builds and packages ma=
de
> > > without that option appear to be safe.  Amadeusz, can you confirm thi=
s?
> >
> > Yes builds without this option should be safe, however do note that
> > as far as I know most distributions do enable it (I checked Debian,
> > Arch Linux, Fedora and Gentoo).
> >
> > >
> > > On master branch, the functionality is always enabled (and the option=
 is
> > > dropped), thus (not too ancient) builds from that branch are vulnerab=
le
> > > (until the above fixes, which were also made to that branch).
> >
> > Yes, however do note that all v4 releases are done from screen-v4 branc=
h.
> Has a CVE been requested already ?
> I do not see one on cve.mitre.org
CVE-2020-9366 was assigned to this flaw via mitre.org
> >
> > Amadeusz
> >
>
>
> --
> Cedric Buissart,
> Product Security



--
Cedric Buissart,
Product Security

