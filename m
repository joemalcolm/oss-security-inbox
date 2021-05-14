X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["681" "Friday" "14" "May" "2021" "11:50:08" "+0100" "Matthew Wild" "mwild1@gmail.com" nil "23" "Re: [oss-security] Prosody XMPP server advisory 2021-05-12 (multiple vulnerabilities)" "^Date:" nil nil "5" nil nil (number mark "        mwild1@gmail May 14   23/681   " thread-indent "\"Re: [oss-security] Prosody XMPP server advisory 2021-05-12 (multiple vulnerabilities)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Prosody XMPP server advisory 2021-05-12 (multiple vulnerabilities)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11818 invoked by uid 550); 14 May 2021 13:04:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23702 invoked from network); 14 May 2021 10:50:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=J6zNlW19lmWMRe8gnSiVW3ukgMJjIiPaqSfb92KGxNg=;
        b=bieRbMVvGTtQCwbUDcK5RYbUIsVtngYFHcNfP+eZkoYRTH3Aj0hdl0jUfyTNlu7fNq
         pY+n27xzkWhCAwoEW9l34IprqKc/zwr1u6esWRiSHmp4uiGA9bNRw2/kkWTfVx+4aWFB
         zJP6s7Ap4tYP5FnmcPjpqQyqu4NtJjAAqe/CnVyLl53p66gC8f1DieHJ5WZUO8zGL4LW
         VA09WJSjFLrGhBWn1SWkB5Ou1R+XYStRGp2/g6vxDyL9WUcGMpnmurUpx1Htmy70hLME
         dDiVvjBBYAUZKcYupm0lqgB+p1s6D7B6WE9D7QMT0UVy1B/n9Rx1A76KxdaWyV/OZbID
         7COA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=J6zNlW19lmWMRe8gnSiVW3ukgMJjIiPaqSfb92KGxNg=;
        b=XltKERlKY7AUbtXt1L4TkYtkj8sb3MFaJoDaqmLBf/x9QH1E6XNGU9ng9mrAEgMOvb
         ElTElp4/DleutLVG6YNKEelnlSz+MB6TXDAQsjb04gtx1ew4o0BMUq5d+c2KzSm/xVe5
         DjZnvDQP1Ry27TaL+UZi84et60m+W3+vuldj8SlgTIR6N5PAAQS689o7MJs4QxkdYxYO
         qrp6jHhNhfqVRyogPQQyeXcIIkUlgipOyOf8UdNp9oEm+CvPEoossi9t/s1x2qMfM2uQ
         n6nP/V64pnbED63+XUyM+rs4+EPvSiEeR+xrXfQN3EwrnNLyhrU6nht+2zT3hG1cHUp0
         UBeA==
X-Gm-Message-State: AOAM5312405cGv6AbMUD75LdPxkVvEGq5F6CzlL9GL+hzBDgoHSj/wt4
	06rmewk7ofc473J50y95OlsokQgvFlypz/Ls4vcAm/AQjuQ=
X-Google-Smtp-Source: ABdhPJwHMKWX/RMuwfT4v/9UFSliouB/xZbMiXdFEAgN8pxrDFVd7x1xi2mP85VxI8BrBNEfqDrldNeeK81rhu1PutI=
X-Received: by 2002:ac8:1206:: with SMTP id x6mr42554182qti.261.1620989419986;
 Fri, 14 May 2021 03:50:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210514110545.3f4412d1@LXKA-4PGK1N2> <CAGBF=vy+s6NBrn-1KyMdwRufeg8VTZME_9rKL=kfvd4ankkHRg@mail.gmail.com>
In-Reply-To: <CAGBF=vy+s6NBrn-1KyMdwRufeg8VTZME_9rKL=kfvd4ankkHRg@mail.gmail.com>
Message-ID: <CAJt9-x5u_Q_ngXJy6UkhnigtqE_Xgei0D4VFZ1JdCv_kBiMKkg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Fri, 14 May 2021 11:50:08 +0100
From: Matthew Wild <mwild1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prosody XMPP server advisory 2021-05-12 (multiple vulnerabilities)
To: oss-security@lists.openwall.com

On Fri, 14 May 2021 at 11:08, Robert G. <robert.groesser@googlemail.com> wr=
ote:
>
> Hey guys,
>
> thank you for fixing this!
>
> >This flaw was discovered by Matthew Wild, a member of the Prosody team.
> The issue with MUC passwords was also previously identified by Robert
> Gr=C3=83=C2=B6sser.
>
> This wasn't identified by me, to be fair. I only reported this.
> The flaw was initially found by my colleague Marvin Zerulla.

Thanks for the clarification Robert! I've updated the advisory with this in=
fo.

Your quote also highlighted that the text advisory is being served
without an explicit character encoding. Thanks for finding that issue,
now fixed :)

Regards,
Matthew
