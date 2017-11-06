X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3127" "Sunday" "5" "November" "2017" "19:03:07" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2nVrHiLcEmOX-cSsEi5PLaPbZgMe47zprq9JoB0132Cg@mail.gmail.com>" "72" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110602:03:07" "[oss-security] Fw: Security risk of vim swap files" (number mark "        kseifried@re Nov  5   72/3127  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<a49425b0-4404-d570-a94d-fe92b59864b6@Z5T1.com>" ("<20171102212916.GC23769@256bit.org>" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" "<20171105171704.GA9438@256bit.org>" "<20171105175959.GA13011@openwall.com>" "<a49425b0-4404-d570-a94d-fe92b59864b6@Z5T1.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5345 invoked by uid 550); 6 Nov 2017 02:04:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4058 invoked from network); 6 Nov 2017 02:03:34 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=MUBe9m+EaEBl0HAXYlqIjnIfUMENS0M2C3eGeoac6Dc=;
        b=TxX10i/dfp6cd/cZggg8BpFHEpTypiO8PG+zxLvhK5hu7xtWi+ykHt350+/g8TwOaG
         9CKGTW8pduhZLOxjVffjOEYyELA1Odv2lWRjlwmTaHDDJJMMjRiXXZOxbbcGoOPQToHk
         tUy1LNkKW6emulqCzO9t5SJsNG1tlRe1sEdtNB/DtcQyje4lp4nL5VZfJPHfmkeTbgZf
         bXpZgFFTojYofUiub/BSZNMLr8mDnPzXrMhMjRuKsvG3b4Sop9MRUv/Bw3y/pKb5h/e+
         od5Y/j+xJCtEygyXB7OKOwcag4Eh5cZk5H+5GWrI6XX82j3jOUltlZUCB9I9bveS6EOo
         bucQ==
X-Gm-Message-State: AJaThX6qDl8m+a1RXaMmCFUR0mD8P8yk/N/oApaoASqv+rh1eePJl7mN
	ccDH26Vx2M4TjIIpCsNI3esfZjkzYX6mdu0xYccFbsgc
X-Google-Smtp-Source: ABhQp+ToYqluGzDpn/46JqSgDB9ZFOnYZgH44AXGpik187o4zcy8v1k4B5qLiyEizIBW7GmZ5TIFCgbH8pLpXYESkQQ=
X-Received: by 10.157.9.243 with SMTP id 48mr9022730otz.323.1509933788251;
 Sun, 05 Nov 2017 18:03:08 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <a49425b0-4404-d570-a94d-fe92b59864b6@Z5T1.com>
References: <20171102212916.GC23769@256bit.org> <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
 <20171105171704.GA9438@256bit.org> <20171105175959.GA13011@openwall.com> <a49425b0-4404-d570-a94d-fe92b59864b6@Z5T1.com>
Message-ID: <CANO=Ty2nVrHiLcEmOX-cSsEi5PLaPbZgMe47zprq9JoB0132Cg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a113d0b541565dc055d46dbb6"
Date: Sun, 5 Nov 2017 19:03:07 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security <oss-security@lists.openwall.com>

--001a113d0b541565dc055d46dbb6
Content-Type: text/plain; charset="UTF-8"

Also you're all still ignoring umask =(. Please, when you create a new
file, check the umask and subtract it to make sure you're abiding by the
user's wishes.

On Sun, Nov 5, 2017 at 11:19 AM, Scott Court <z5t1@z5t1.com> wrote:

> Just want to point out that even if we do set 0600 permissions on all
> .swp files, it still may allow for a form of the attack Hanno originally
> pointed out if vim is ever run as the httpd user. In reality, this is
> far less likely to occur but it's still worth pointing out.
>
> Storing the .swp files in a separate directory prevents this from
> potentially being a problem as well. However, universally setting the
> .swp files to 0600 is probably a better solution than that patch
> (https://github.com/vim/vim/releases/tag/v8.0.1263).
>
>
> On 11/05/2017 12:59 PM, Solar Designer wrote:
> > On Sun, Nov 05, 2017 at 06:17:04PM +0100, Christian Brabandt wrote:
> >> On Fr, 03 Nov 2017, Jakub Wilk wrote:
> >>
> >>> In general, what vim does (copying mode bits) in not enough to ensure
> that
> >>> the swapfile is readable only by the users who had access to the
> original
> >>> file. It would have to copy also group ownership and ACLs.
> >> I think patch https://github.com/vim/vim/releases/tag/v8.0.1263 fixes
> >> the group ownership problem.
> > That's some effort and code complexity for a fix that is not even trying
> > to address the problem Hanno pointed out. :-(  What we really need is
> > simply forcing the permissions to 0600 no matter what.  I do notice that,
> > non-surprisingly, Bram said:
> >
> > | Why would a web server expose and serve such a file?  That clearly is
> > | the problem, not that Vim happens to create swap files (and undo and
> > | backup files, depending on your configuration).
> > |
> > | You probably also create new files and copies of files that should not
> > | be served.  If you care about security, the web server must always use
> > | whitelisting, only serve files that were intentionally made public.
> >
> > This makes sense, yet Vim can and should also do its part to make things
> > safer when that does not conflict with its other goals nor introduce
> > complexity.  Simply using mode 0600 is a win-win: addresses the problem
> > Hanno reported for the common special case of web server running as a
> > different user than the file owner, does not break any functionality,
> > and makes Vim's code simpler.
> >
> > Yes, let's also force 0600 for "undo and backup files", please.
> >
> > Even without a web server or whatever other external interaction
> > aspects, copying the original file's permissions and/or obeying umask is
> > just wrong in this case because those files are created implicitly,
> > often without the user's intent and knowledge, and because they might
> > stay around for longer than the original file does.
> >
> > Alexander
>
>
>


-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113d0b541565dc055d46dbb6--
