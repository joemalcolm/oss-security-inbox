X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2079" "Monday" "13" "February" "2017" "14:36:59" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2nEW431bvaktfre7e7VXh4OzHqa2ffhrv7oaxxG+LSTg@mail.gmail.com>" "63" "Re: [oss-security] Re: MITRE is adding data intake to its CVE ID process" nil nil nil "2" "2017021321:36:59" "[oss-security] Re: MITRE is adding data intake to its CVE ID process" (number mark "U       kseifried@re Feb 13   63/2079  " thread-indent "\"Re: [oss-security] Re: MITRE is adding data intake to its CVE ID process\"\n") "<20170213195423.13018.16C44946@matica.foolinux.mooo.com>" ("<e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>" "<b1a94becd9a94b39bd3c95c89bc05f1f@imshyb02.MITRE.ORG>" "<20170211233541.GA6315@openwall.com>" "<CANO=Ty0PmeERNq+=vPhL=UM-LWVarr_Ry06NPc_OhpzXztZLbg@mail.gmail.com>" "<20170213195423.13018.16C44946@matica.foolinux.mooo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17551 invoked by uid 550); 13 Feb 2017 21:37:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17531 invoked from network); 13 Feb 2017 21:37:11 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=ck7/uRfj//IdK6rP6nlZ59d5Jb1bQ561okIOpmBibCo=;
        b=JgilSGLnySlCTEceQJzvVZVSS7hCdh8FK+QhwmLR3R8nue8t8oaGe42nQ5UDrOy7r8
         XzsXcwIYokmtZQIh5agAp2BEZ3Gq5/vzFLtZ6jELnwHXVOfr++cZtyPOFtNlKu0I8r21
         0KD6Q+vdyATwq470/H7dDshvoH7JW8IeE3Ya+vhTk8nBi6mpKs4IbJ8VJZRNQBTC9+bo
         MnDHbTP0cwuLl5b9VapIDxLz/HAKqTXnbdNAgu+VxRPeXY7zv6RBRtF2H7wj5XFi3gex
         gonvdRalVgIdIPeGujf5YgekZRM0yN38VU/JvZh73tOgsBrtxtOX5ZMWlu7nAGtKTHM8
         hxiw==
X-Gm-Message-State: AMke39lKFuqZVaLfisQDMNZibeSkHsHvlOkcaL2BfIIrr6+DavTccH0I2FuCXfyA4Yr0afb8vL77lEek6w7bCEMB
X-Received: by 10.157.50.133 with SMTP id u5mr12783377otb.201.1487021820066;
 Mon, 13 Feb 2017 13:37:00 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170213195423.13018.16C44946@matica.foolinux.mooo.com>
References: <e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>
 <b1a94becd9a94b39bd3c95c89bc05f1f@imshyb02.MITRE.ORG> <20170211233541.GA6315@openwall.com>
 <CANO=Ty0PmeERNq+=vPhL=UM-LWVarr_Ry06NPc_OhpzXztZLbg@mail.gmail.com> <20170213195423.13018.16C44946@matica.foolinux.mooo.com>
From: Kurt Seifried <kseifried@redhat.com>
Date: Mon, 13 Feb 2017 14:36:59 -0700
Message-ID: <CANO=Ty2nEW431bvaktfre7e7VXh4OzHqa2ffhrv7oaxxG+LSTg@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a1147098c5bd33a0548703fea
Subject: Re: [oss-security] Re: MITRE is adding data intake to its CVE ID process

--001a1147098c5bd33a0548703fea
Content-Type: text/plain; charset=UTF-8

so longer term (like starting now) the master database for DWF:

https://github.com/distributedweaknessfiling/DWF-Master-CVE-Database

will have a list of blocks (generally 1000) and the url they are at (git
link to clone), I want to shard the database otherwise a git repo with 100k
cve's being updated will get unwieldy, and this also makes life a bit
simpler for larger CNAs.

As for the old tyle CSV representation of the data we'll probably do that
as well since it is what people are used to consuming, but ideally we'll
get the DWF data being imported into MITRE and processed fast enough that
people can just consume MITRE's CSV feed (and resulting NVD feed and
whatnot).

So for now I'm focusing on some back end things like the CVE Mentor
process/CNA training, the JSON data format so MITRE can consume data and so
on.



On Mon, Feb 13, 2017 at 12:56 PM, Ian Zimmerman <itz@primate.net> wrote:

> On 2017-02-12 11:23, Kurt Seifried wrote:
>
> > As for the DWF it's simple: we're using git, so I guess if people really
> > want up to the minute updates they can simply subscribe to the repos in
> > GitHub, or pull and do it on their own end.
>
> This?
>
> https://github.com/distributedweaknessfiling/DWF-Database
>
> Quoting:
>
>  IMPORTANT NOTE
>
>  There is a good chance this database (and indeed repo) will be phased
>  out in favor of the JSON database. If there is enough demand for it
>  there may be a CSV representation of all the data, but if there isn't
>  enough demand then we will simply drop it in 2017. So speak up if you
>  want/need this.
>
> Is there a separate place for the JSON data?  Where?
>
> --
> Please *no* private Cc: on mailing lists and newsgroups
> Personal signed mail: please _encrypt_ and sign
> Don't clear-text sign: http://cr.yp.to/smtp/8bitmime.html
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a1147098c5bd33a0548703fea--
