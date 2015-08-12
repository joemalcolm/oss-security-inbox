X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2359" "Wednesday" "12" "August" "2015" "17:00:34" "+0200" "=?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?=" "robert@swiecki.net" "<CAP145pgN_79MkD_Z+KRkJZr68aOPt_JpkEPC1i0Q-NbwG0jKzQ@mail.gmail.com>" "63" "Re: [oss-security] Re: Terminal escape sequences - the new XSS for admins?" nil nil nil "8" "2015081215:00:34" "[oss-security] Re: Terminal escape sequences - the new XSS for admins?" (number mark "        robert@swiec Aug 12   63/2359  " thread-indent "\"Re: [oss-security] Re: Terminal escape sequences - the new XSS for admins?\"\n") "<3251855.920OV3rWUH@x2>" ("<CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>" "<4034525.BTXsUWy6Cb@x2>" "<55CA6BBC.7070101@amacapital.net>" "<3251855.920OV3rWUH@x2>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16378 invoked by uid 550); 12 Aug 2015 15:00:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16359 invoked from network); 12 Aug 2015 15:00:45 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=czEGQLsNC4oBl1TYKwbPJhS+IYMrOuNazT5I0WZaB48=;
        b=Lpa9lSmHcd2LmYwbu4Lv2NoVm//VfWLIyZ1XBXrUasxb3ksvuvHa+Rb/DZhx1icl8K
         x8bQolxQHG4KEcQbezZLxuNbW+AGmiHAUAFdsiBghIGxYAFftTlli8Es2zCSyGY3F5mW
         iHyG6GJNPMVutC9oKnIpMJv3KThFz0eqjwwp9pQ9geTCsF4fbhqKXcRln5m2O8bmTPaL
         JpiuDGZFRsI+ix9tmR/733H0sKA17yLn2wVoX6n1IJAE4JXC109knKoF/GCoOILX9mut
         kqi0NcBZn3UJzTfYMqMxYqHgCpZauR7dfkaSRRaFfMLbcSCcoS6AlrwCstBhnQiXJDOQ
         mfsg==
X-Gm-Message-State: ALoCoQngeyoH6PSa43yZrgA+CMuFFJxk+xiE7CDGVTpYkrh4rxnIhtGs+CDbSO1nR5hLk97OU6f7
MIME-Version: 1.0
X-Received: by 10.180.103.34 with SMTP id ft2mr33770500wib.62.1439391634385;
 Wed, 12 Aug 2015 08:00:34 -0700 (PDT)
In-Reply-To: <3251855.920OV3rWUH@x2>
References: <CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>
	<4034525.BTXsUWy6Cb@x2>
	<55CA6BBC.7070101@amacapital.net>
	<3251855.920OV3rWUH@x2>
Message-ID: <CAP145pgN_79MkD_Z+KRkJZr68aOPt_JpkEPC1i0Q-NbwG0jKzQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=f46d044281f20f84b9051d1e7b2d
Cc: Andy Lutomirski <luto@amacapital.net>, Daniel Kahn Gillmor <dkg@fifthhorseman.net>, 
	Kurt Seifried <kseifried@redhat.com>
Date: Wed, 12 Aug 2015 17:00:34 +0200
From: =?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?= <robert@swiecki.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Terminal escape sequences - the new XSS for admins?
To: oss-security@lists.openwall.com

--f46d044281f20f84b9051d1e7b2d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2015-08-11 23:59 GMT+02:00 Steve Grubb <sgrubb@redhat.com>:

> On Tuesday, August 11, 2015 02:40:12 PM Andy Lutomirski wrote:
> > > At this point, I was convinced that most major emulators are safe. Th=
at
> > > said...there are all the ones I didn't check including older ones. The
> > > older ones are likely to be the ones I'd be most concerned about.
> >
> > Are all the supposedly invulnerable terminals actually safe?
> > Gnome-terminal reports:
> >
> > 0000000: 1b5d 6c54 6572 6d69 6e61 6c1b 5c       .]lTerminal.\
> >
> > That's not as bad as echoing 'ls -al' back to the terminal input, but
> > why is it considered acceptable for terminals to input anything
> > whatsoever in response to the in-band data they receive?
>
> The whole idea is to write something that you can bounce back to the
> prompt.
> lTerminal is pretty limiting. An attacker would have to also place the fi=
le
> lTerminal in the search path before using this trick. But if they can do
> pre-
> place a file in the search path, they can also take advantage of typing
> mistakes like placing a file vo and then waiting for the admin to make a
> mistake typing vi.
>
> What you really want to do in an attack is to  try placing a call back
> shell
> command on the prompt or download/upload files.
>
> Most terminal emulators, konsole for example, reply with nothing. Its the
> vte
> based ones that reply like this.


I was reviewing the code and fuzzing various terminal emulators quite
extensively some time ago, and found that "only" rxvt might be susceptible
to this (if I remember correctly, there's typo in the code that enables
this).

$ echo -ne "\eGQ;"
;$ 0
bash: 0: command not found

If you manage to append some arbitrary bytes to the input queue (except 0
and meaningless sequences like echo -ne "\e[6n\eGQ;"), then this sequence
can be used to execute your command.

As for other terminal emulators, I was able to crash most of them, and from
what I see I still have testcases for konsole, pterm, rxvt, securecrt and
xterm. I was looking for command injections though, so simply forgot to
submit the testcases to the maintainers of the code after the exercise.
I'll do that shortly.

--=20
Robert =C5=9Awi=C4=99cki

--f46d044281f20f84b9051d1e7b2d--
