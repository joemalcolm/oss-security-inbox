X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4458" "Wednesday" "10" "October" "2018" "10:51:24" "-0500" "Brandon Perry" "bperry.volatile@gmail.com" "<7cd73ce3487de75dd3b387dc177baeb74e2359ab.camel@gmail.com>" "107" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" nil nil nil "10" "2018101015:51:24" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "U       bperry.volat Oct 10  107/4458  " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<5782b494-5dba-71ee-d3f9-9f07814f715a@ehuk.net>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>" "<20181010145330.63e183d8@computer>" "<5782b494-5dba-71ee-d3f9-9f07814f715a@ehuk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3947 invoked by uid 550); 10 Oct 2018 15:51:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3929 invoked from network); 10 Oct 2018 15:51:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=UY3bNJ3+R274iy6/Bxll673x90SzPrXth+TWMukrkxo=;
        b=XD7vf5jUbt+1YAEV5o/WlRqHTDab/rLaE3uHwyAOOXoXrujIEsVf6sLQxyz/sKPFBJ
         OeKHNPD0MfECFL0ZQNt07WP5RHSdQ3WvyLAjOBBO8QlkkvjZLO4sZLBGwGbB8PI1GJ3X
         sRJF51aXiFiPQb9L143rOsnITxl+x0hsyyYiK9WMSgICUGXzRtnTKibnM3vAA0HiQUpH
         uST8IvGrWFSnse1z1KN1od/kjeZCVNXRxXuEtQBPMnvxZrJbESiu42IdXiUAg0eRFEJN
         mzEB/0/qAgQZCtz8U2X2Fwh0lM5w9XBLv0b6cY7QcmUyQUiy9Pm93gYK0XiavqQgtByY
         58RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UY3bNJ3+R274iy6/Bxll673x90SzPrXth+TWMukrkxo=;
        b=oZPCg7YH+E95leqgAaSDO7YiE2MraYdykzUuaBmKsgdI6XOrfV4WZoZhKYBF8wnYTd
         1+4nU5rGmtW0xGEiGecTi37Chy7fAO0yVKSEXIS+sTfRBtEBMiaF7M8HWGG7o5wOojRY
         QyZzLi6dRw2RiOjXk5NbZ3NC1cHvKmXbBz/T5LBFb4Q8pzS2YrOpSXYqd5Xd0c9e2//F
         p44j3UGqrbBjHW+SNkJ7EFVgNsgxLGXGIiKUG4GOxvbYok+e2mzWy9OB449gXFz7ZVSv
         wUZHwGS2EcH4PfLmS+B7KNUdCeJWTdAPm1uu0Zy/8JNirJ2as2nBBQRPA7C7pyEtpzf/
         H4cg==
X-Gm-Message-State: ABuFfohA5hOxfQqS9fdsrpE8vMGXAeLYmgzVVAZmzTZKrQT9oUnjidbk
	pyGdvG2IAb2Sb4FFmJO4YWb7DRXf
X-Google-Smtp-Source: ACcGV62m0iWfcBcH1Jbmfu5PivUMB+W5MkHWsQzeOJWY91kNrPQkr37Yt3EfvT3s9rxsRmSeYHuA6w==
X-Received: by 2002:a9d:3634:: with SMTP id w49mr2361335otb.11.1539186685442;
        Wed, 10 Oct 2018 08:51:25 -0700 (PDT)
Message-ID: <7cd73ce3487de75dd3b387dc177baeb74e2359ab.camel@gmail.com>
From: Brandon Perry <bperry.volatile@gmail.com>
To: oss-security@lists.openwall.com, Hanno =?ISO-8859-1?Q?B=F6ck?=
	 <hanno@hboeck.de>
Date: Wed, 10 Oct 2018 10:51:24 -0500
In-Reply-To: <5782b494-5dba-71ee-d3f9-9f07814f715a@ehuk.net>
References: 
	<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
	 <e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>
	 <20181010145330.63e183d8@computer>
	 <5782b494-5dba-71ee-d3f9-9f07814f715a@ehuk.net>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)

On Wed, 2018-10-10 at 15:36 +0100, Eddie Chapman wrote:
> On 10/10/18 13:53, Hanno Böck wrote:
> > On Wed, 10 Oct 2018 10:10:58 +0100
> > Eddie Chapman <eddie@ehuk.net> wrote:
> > 
> > > While the vulnerability in ghostscript itself is clear in this
> > > thread, does anyone have any more info on the above aspect of
> > > this?
> > > i.e is the above scenario (inadvertently running postscript,
> > > perhaps
> > > contained in an image, through ghostscript by just browsing a
> > > malicious site) limited to just nautilus in gnome environments?
> > > Do
> > > other browsers/environments handle this better or do they do
> > > similar?
> > > It seems that, strictly speaking, the "critical" nature of this
> > > vulnerability hinges on the behaviour of the browser/desktop
> > > environment. Otherwise the scope is limited to an individual
> > > manually
> > > downloading a postscript file and opening it outside of the
> > > browser.
> > 
> > evince installs a thumbnail entry to
> > /usr/share/thumbnailers
> > 
> > This is a generic location where applications can install files (I
> > believe they follow the .desktop specification, which is an ini-
> > based
> > format). This is thus not nautilus-specific, but every filemanager
> > that
> > uses this format will be affected. A quick googling tells me e.g.
> > pcmanfm is also affected. I'm not sure if dolphin uses them as
> > well.
> > 
> > Nautilus is trying to solve this by sandboxing the thumbnailers.
> > However this depends on bubblewrap and is currently fail-open, i.e.
> > if
> > bubblewrap is not available it will not disable the thumbnailing,
> > it
> > will just not sandbox it. In practice this means it's often not
> > sandboxed. I doubt this will change any time soon.
> > 
> > Very similar problems show up with desktop search tools.
> > 
> > I think this whole concept is questionable and should be reviewed.
> > I
> > think it's not desirable to have thumbnailers for all kinds of
> > formats,
> > instead a more reasonable approach would be to limit thumbnailing
> > to a
> > few widely used formats that have well-reviewed libraries (e.g. I
> > don't
> > think that libjpeg or libpng will have any vulnerabilities left
> > that are
> > even remotely as severe as the things tavis found in ghostscript).
> 
> Ah OK, I got confused (having not used gnome or nautilus for a long 
> time) of what exactly Nautilus' role is here. Because Tavis
> mentioned 
> web browsing and nautilus together in my mind I was thinking
> nautilus 
> was the web browser here forgot it's a file manager :-)
> 
> But I'm still unclear how "just browsing a website is enough to
> trigger 
> the vulnerability in some common configurations." Are we talking
> about 
> the user looking in their web browser cache directory on the
> filesystem 
> using Nautilus, and hence running malicious code embedded in a
> cached 
> file via the evince thumbnailer on opening that directory? Or maybe 
> Nautilus/Gnome automatically runs the thumbnailer on every new file 
> created in the user's home directory (via inotify?), including
> whatever 
> the browser saves in the background (hopefully not)? Or is it just a 
> case of the user opening a downloaded file with evince and becoming
> a 
> victim that way? Though that is not exactly automatic, most browsers 
> show a prompt asking what to do with a downloaded file.

A whole ago, there was a vuln in Evince in how it handled comic book
files.

https://vuldb.com/?id.106116

By default, nautilus renders a thumbnail of media if it is possible,
and evince can render a thumbnail of the first image in the comic book
simply by browsing to the Downloads directory.

If a malicious comic book were downloaded but not opened, then I opened
my Downloads directory, rendering the comic book thumbnail would cause
the payload to be executed in the context of the user opening Nautilus.

This same technique would apply here since Nautilus can use ghostscript
to render a thumbnail preview of a PS file.

> 
> So, still slightly confused, how one can become a victim here just 
> browsing a website. It's probably obvious to everyone but I'm not 
> getting it having always run a quite minimal desktop for years 
> (currently a mixture of Awesome window manager + some Mate elements, 
> caja file manager) .... Or maybe no-one wants to spell it out so as
> not 
> to give the bad guys any free tips. So feel free to ignore me if
> it's 
> either of those :-)
