Received: (qmail 30314 invoked by uid 550); 30 Mar 2024 12:45:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12206 invoked from network); 30 Mar 2024 03:51:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711770669; x=1712375469; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L6XQjr5/iN4wFQCDRueyiynCCcHm39MsxJN5xP8JkQc=;
        b=XcbT8Ruyy0zi0pd3+vRzVXC6Z/9i5RUAJaL6oMDb0oRJP9VXynb2Oh4YV2gnb1APXj
         kmx6xL83pLMLMxncVvmiCMWReFcdudBEEVmHoT2YARQm4JUaFHGV7UZkE4zrXJWBVQBJ
         peLr1+CekBSkKCAlo/VKzaQ5S6c72q2bafrvQvS2X6vxM1z2i11bA7KzBu6oMikzJR2X
         95LINKZdFkB2rqk+mNbTJLq9hTew0ZdDnXfiGHbX/qbMdpq9tWqotu1B1Xl9nRuoSjiq
         C0w6LGkaBxAUGQX3+4PqlSEs+hGdyj/4p7J9RTuzlVmi79ttW9BffAgWud9+nsMnijEl
         oXTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711770669; x=1712375469;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L6XQjr5/iN4wFQCDRueyiynCCcHm39MsxJN5xP8JkQc=;
        b=PrQ/JOqZwgYOWLVPPs4n8/pZ5UM5oFxzR260rMcb50B+UG1B87Mc+kdbzdabtB9dHV
         vztrHgxD6FDJgUN4pcJVVF+NW4pXhF+R4wd0ip2149mb763BoW+vhwVqk6olMX+dDuku
         ycXRGLJAb4F3+ubmkwir8B0aHgW14oapjXwCMrTgo9vOldTR2alMdG1BFDekQihQ9Ris
         w3QhITNnnUL9ewRTPvTQJdpE9zRgMETT27z9yKUQrIigE7FdXFtM2EFaaKL1fjjzxQDx
         0kQapXRg10m3r35YvL+29+t2gV/vusl9b5UtXKWIuv5zsQfq0kA/qUMq7mgu2cDl5s85
         Hdfw==
X-Gm-Message-State: AOJu0YzIWKj3Hrf75Uaphi8RG/eWDA76Cudg59L/g3TU+KWqrSDJR246
	kozgXqI02Hv5VSH2dIEctBMIhcbWRyFgO11XiqD1QieX6iaHCRFgEj4Y4F/6oVFbBluiSUS7XJh
	4HDGySMileId4VMCoaU4k3nVPncoatKMyD0U=
X-Google-Smtp-Source: AGHT+IFnB+m0/KeUQfoL2nP/exwCeHGZKKmtfjaQmBWMj1q97hPClc5YdLhSZlDMNZFkkYT0aTRDF9cw0207ru1Tem0=
X-Received: by 2002:a2e:3e17:0:b0:2d6:a5cf:367c with SMTP id
 l23-20020a2e3e17000000b002d6a5cf367cmr2079509lja.38.1711770669209; Fri, 29
 Mar 2024 20:51:09 -0700 (PDT)
MIME-Version: 1.0
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io> <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
 <uu7g5q$8hl$1@ciao.gmane.io> <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
 <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com> <uu7k2m$61a$1@ciao.gmane.io>
In-Reply-To: <uu7k2m$61a$1@ciao.gmane.io>
From: Loganaden Velvindron <loganaden@gmail.com>
Date: Sat, 30 Mar 2024 07:50:56 +0400
Message-ID: <CAOp4FwT+kqoG1JRawFu6tkz0LUMgkT9RCVfh7vyaN3bbFkYx3Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ace0950614d8aa9a"
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh
 server compromise

--000000000000ace0950614d8aa9a
Content-Type: text/plain; charset="UTF-8"

Github has suspended the repo:


https://github.com/tukaani-project/xz

Im wondering what is the next step for the xz project as a whole ?



On Sat, Mar 30, 2024, 03:58 Tavis Ormandy <taviso@gmail.com> wrote:

> On 2024-03-29, Marc Deslauriers wrote:
> >> I think we should have a policy that if issues are suspected to be
> actively exploited, that the issue goes public immediately.  If even there
> is no patch or mitigation, there's not a lot of benefit to keeping it
> private.
> >
> > In this case, we had no reason to believe it was being actively
> exploited.
> >
>
> Yeah... but you also have no reason to not believe that?
>
> What do you propose they were doing with their backdoor?
>
> > If you make it public before a patch or mitigation is available, it has
> now gone
> > from a single entity being able to exploit it to the whole world being
> able to
> > exploit it.
> >
> > That's a whole lot worse.
> >
>
> Okay, but do we agree that if there is a mitigation available, it's better
> for it to be public?
>
> Isn't doing `dnf downgrade xxx` a mitigation, or `systemctl xxx stop`?
>
> >>
> >> I think everyone was acting in good faith here and did great work, but
> there wasn't a clear policy for handling this type of issue.
> >
> >
> > I would argue against having a policy requiring something like this to
> be made
> > public immediately. The important thing here is to do whatever it takes
> to make
> > sure users are secure as fast as possible, not expose them to even
> bigger attack
> > surface with no mitigation available.
> >
> > Marc.
>
> We all want users to be secure as fast as possible. The discussion is
> whether keeping backdoors embargoed helps achieve that.
>
> Tavis.
>
> --
>  _o)            $ lynx lock.cmpxchg8b.com
>  /\\  _o)  _o)  $ finger taviso@sdf.org
> _\_V _( ) _( )  @taviso
>
>

--000000000000ace0950614d8aa9a--
