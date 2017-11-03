X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2980" "Thursday" "2" "November" "2017" "19:08:57" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1HsCH2q1CQBgz0Fap=sBzjUPPfBxMMtVY5T3YFL90_Ag@mail.gmail.com>" "76" "Re: [oss-security] Re: Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110301:08:57" "[oss-security] Re: Fw: Security risk of vim swap files" (number mark "        kseifried@re Nov  2   76/2980  " thread-indent "\"Re: [oss-security] Re: Fw: Security risk of vim swap files\"\n") "<20171102212916.GC23769@256bit.org>" ("<20171102212916.GC23769@256bit.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26036 invoked by uid 550); 3 Nov 2017 01:09:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26006 invoked from network); 3 Nov 2017 01:09:10 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=AGyivVNHiX2CHPM990IggxVVORigBLU5iz9aPl9YOTk=;
        b=mGJqvp04jQKGzlHxywptQeTG2NN8RAhZTr5GGPR9VZugpzZnurHzr2H0SJLVfMvqBU
         CGBVy1lmjCBWxZzi+JBkw//c3NedxAI0kRdCEAMMsMa6B218ffMIomHBycccm0Mjv8Ee
         iwyriv9gK0LzB97ooH9c2+pZYLxOl0buYyR3reXPZFL0wk3iOEfeSI2XsDDN7nnLnsYL
         BuzT2xC1gCr5DN1tAnyvUjF1wsN9xSSpxfBCHolUglbwQ29AMyA7Rp+ySThhgqAYBzlk
         nV3+2Sn8ScuoTTd1hrC1WJu21DT8MmMoqnGvPGPwzz8UsaWCza0oEZ/JtMyyiXDfRg1H
         mCwA==
X-Gm-Message-State: AJaThX5GZHjEpeI5jJAxjXsHTVpAqzX/SkfoSQ/ws1YrSd5Eg/aTfTlg
	rIhI24Ox77YI9lozAOPBhzLHHSFxqgJndUeLtZGwlknq
X-Google-Smtp-Source: ABhQp+RD44FAdItDJ8oH9WHc8ok7GlMkMnGQyxLBnqYx1XOzTJwJWxoNuZT/se3AQgYBjvOI9xcwz4c4RZOpmD/0f5Y=
X-Received: by 10.157.65.132 with SMTP id p4mr3247018ote.281.1509671338716;
 Thu, 02 Nov 2017 18:08:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20171102212916.GC23769@256bit.org>
References: <20171102212916.GC23769@256bit.org>
Message-ID: <CANO=Ty1HsCH2q1CQBgz0Fap=sBzjUPPfBxMMtVY5T3YFL90_Ag@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c1c1478df50c6055d09bf58"
Date: Thu, 2 Nov 2017 19:08:57 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Fw: Security risk of vim swap files
To: oss-security <oss-security@lists.openwall.com>

--94eb2c1c1478df50c6055d09bf58
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 2, 2017 at 3:29 PM, Christian Brabandt <cb@256bit.org> wrote:

> Kurt Seifried wrote:
>
> > There is a flaw here, it appears on some distros that vim (and emacs)
> will
> > ignore a user's umask and go with less restrictive file permissions
> > (ideally you think vi would use the files existing perms, plus any umask
> > limitations as expected), for example vim failing:
> >
> > [kseifrie@...alhost vi]$ umask
> > 0007
> > [kseifrie@...alhost vi]$ touch foo
> > [kseifrie@...alhost vi]$ ls -la
> > total 8
> > drwxrwxr-x.  2 kseifrie kseifrie 4096 Oct 31 10:50 .
> > drwx--x---. 27 kseifrie kseifrie 4096 Oct 31 10:42 ..
> > -rw-rw----.  1 kseifrie kseifrie    0 Oct 31 10:50 foo
> > [kseifrie@...alhost vi]$ chmod o+r foo
> > [kseifrie@...alhost vi]$ ls -la
> > total 8
> > drwxrwxr-x.  2 kseifrie kseifrie 4096 Oct 31 10:50 .
> > drwx--x---. 27 kseifrie kseifrie 4096 Oct 31 10:42 ..
> > -rw-rw-r--.  1 kseifrie kseifrie    0 Oct 31 10:50 foo
> > [kseifrie@...alhost vi]$ vi foo
> >
> > in another terminal:
> >
> > [kseifrie@...alhost vi]$ ls -la
> > total 12
> > drwxrwxr-x.  2 kseifrie kseifrie 4096 Oct 31 10:50 .
> > drwx--x---. 27 kseifrie kseifrie 4096 Oct 31 10:42 ..
> > -rw-rw-r--.  1 kseifrie kseifrie    0 Oct 31 10:50 foo
> > -rw-r--r--.  1 kseifrie kseifrie 4096 Oct 31 10:50 .foo.swp
> >
> > So vim ignores the umask of the user =(.
>
> > So from a CVE perspective we have a situation where a user has explicitly
> > set a umask (of say 0007) which is to say they've made a security
> assertion
> > of "any file I create I want the rwx permissions for "other" removed"
> which
> > vim and emacs (and possibly others) are violating when they create swap
> > files/backups/whatever. To add insult to injury most other utilities that
> > create a file (e.g. cp, cat, dd) seem to respect umask.
> >
> > Please use CVE-2017-1000382 for VIM version 8.0.1187 (and other versions
> > most likely) ignores umask when creating a swap file
> > (\"[ORIGINAL_FILENAME].swp\") resulting in files that may be world
> readable
> > or otherwise accessible in ways not intended by the user running the vi
> > binary.
>
> Vim copies the permission from the file being edited. Although the swap
> file is readable by others this does not leak any information here,
> since the file being edited is already readable by others.
>
> Christian
>

That's usually true but it doesn't matter because a security assertion made
via umask is being violated, so it wins a CVE. Also for example if you
later delete that file and think you're safe the copy is still floating
around world readable. Or you have something indexing the files and
ignoring that file type, and the .swp gets indexed, and so on.

-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c1c1478df50c6055d09bf58--
