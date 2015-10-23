X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2248" "Friday" "23" "October" "2015" "03:01:46" "-0400" "Robert Watson" "robertcwatson1@gmail.com" "<CAOfWR+H7YdPbx2N33=U_35f0uK2irjP2XtfjaUdCYuEwQLx1XA@mail.gmail.com>" "60" "Re: [oss-security] CVE Request: BusyBox tar directory traversal" nil nil nil "10" "2015102307:01:46" "[oss-security] CVE Request: BusyBox tar directory traversal" (number mark "        robertcwatso Oct 23   60/2248  " thread-indent "\"Re: [oss-security] CVE Request: BusyBox tar directory traversal\"\n") "<13512806.1ZGcyoO27t@sarpedon>" ("<20151021153633.GA2430@boyd>" "<CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>" "<13512806.1ZGcyoO27t@sarpedon>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28627 invoked by uid 550); 23 Oct 2015 07:02:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28609 invoked from network); 23 Oct 2015 07:02:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=lwFyONHERvvN4qNvndFZ+4trVMkWgvivfNPOKq9Bius=;
        b=pnLgVrFFqqCH0WYSMaHsDHZU0ByY68vwrpZcMjw9/47Z0kMHcdWNLLBtclvjY6k6Eh
         yHWRHwFlEnTUhNym1COI+05jRSO+I/2JEEWN8YLzKYp08/dsIn5RVAiLUCzzg4pL1A7Z
         JPXV/Oxd5vpx1b2SO043t3WiNOGV0ZS4PBEFuoLjpKEeCivd1Nn7liGmR37g+xH1EQu1
         GljJyqBJ7/zk+KUDNO2erQ6ZCrwRjfctEF60dmqz5Wd6WG4qnaXEqFhI5OlyoUXfRizL
         oAEO1DER37Q4uFbrrn6BFLHOr57PQhyJ6ZoI24zEaCd+R74NEUiPIjhYqIDt+FtT9CTb
         JAEg==
X-Received: by 10.50.112.199 with SMTP id is7mr2456767igb.63.1445583746363;
 Fri, 23 Oct 2015 00:02:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <13512806.1ZGcyoO27t@sarpedon>
References: <20151021153633.GA2430@boyd> <CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>
 <13512806.1ZGcyoO27t@sarpedon>
Message-ID: <CAOfWR+H7YdPbx2N33=U_35f0uK2irjP2XtfjaUdCYuEwQLx1XA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0118416eb1fa5f0522c03196
Date: Fri, 23 Oct 2015 03:01:46 -0400
From: Robert Watson <robertcwatson1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: BusyBox tar directory traversal
To: oss-security@lists.openwall.com

--089e0118416eb1fa5f0522c03196
Content-Type: text/plain; charset=UTF-8

If the user unpacking the tar does not have write access to the target
directory of the symlink, won't the write of that file fail?

If the unpacking user *does* have write access to the symlink target
directory, but the file already exists in that directory, however the user
does not have write-access to that file, won't the write fail then as well?

A common use-case for tar is writing to a single directory and below as you
say. But it is by no means the only capability.

Remember that tar was created primarily for software distribution and
compressed tar files are most often used to this day for that purpose.
Software distribution almost always involves writing files to many
different directories at all levels of the filesystem. Symlinks between
them are quite common as well.

What am I misunderstanding?




*Trust in truth keeps hope aliverobertcwatson1@gmail.com
<robertcwatson1@gmail.com>www.docsalvage.info
<http://www.docsalvage.info>www.CivicChorale.org
<http://www.CivicChorale.org>*
<http://www.wunderground.com/cgi-bin/findweather/getForecast?query=Tallahassee,%20FL>
<https://www.healthcare.gov/>

On Fri, Oct 23, 2015 at 2:15 AM, Tim Brown <tmb@65535.com> wrote:

> On Thursday 22 October 2015 22:40:29 Robert Watson wrote:
> > Apologies if I'm naive but... since /tmp is world writable, how is this a
> > vulnerability?
>
> The permissions on /tmp having nothing at all to do with this, not sure why
> you brought that up. With most archiving tools, there is an expectation
> that
> unpacking will involve writing only to the current directory and below
> and/or
> a user specified directory and below. This breaks that assumption because
> the
> unpacker may create a symlink to a location outside of the directory which
> later may then be followed when further files are unpacked. Depending on
> the
> user permissions, this could lead to sensitive files being overwritten.
> Even if
> the unpacker validates the path it is writing to is as described, the
> validation fails to account for the potential presence of symbolic link
> files
> that point elsewhere.
>
> Tim
> --
> Tim Brown
> <mailto:tmb@65535.com>

--089e0118416eb1fa5f0522c03196--
