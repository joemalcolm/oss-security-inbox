X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2400" "Wednesday" "29" "July" "2015" "14:48:17" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNVyNZZh=d6axNF9yNqi5_5h_sp6_AiwE7xrjSJj+Av_8A@mail.gmail.com>" "59" "[oss-security] Re: CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129" nil nil nil "7" "2015072921:48:17" "[oss-security] Re: CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129" (number mark "U       reed@reedlod Jul 29   59/2400  " thread-indent "\"[oss-security] Re: CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129\"\n") "<20150728122724.120D93321BC@smtpvbsrv1.mitre.org>" ("<CALPTtNVtm+tLFxZcg268GSp0LtX+zCz0RwRowxSf7S0Tv6kutA@mail.gmail.com>" "<20150728122724.120D93321BC@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13465 invoked by uid 550); 29 Jul 2015 21:48:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13443 invoked from network); 29 Jul 2015 21:48:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=eJXI+9oTO3d4AgezJYdph/3TH8wwoVBWw9yi+y8COGg=;
        b=FwYjOWY07F8SsDvrOPr/yEJi3m9XBa+JcwFXqCUki4awKla0ZNAkZdDpiiTxN4I149
         9mY6JWbtAsyChnupSSyfGxFMBm6N1ymrzDcj27XH1A24H8BIntd/UnbdQRbJuMwPJd9G
         9Z7AHPItAlSM/f2qHvP4CE2Ugx9Wk0oXszRek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=eJXI+9oTO3d4AgezJYdph/3TH8wwoVBWw9yi+y8COGg=;
        b=fv9dHSevkegcsfec90p/M0YeVdCp54O9X1NXqney1/iipOh95pYYUk8WkkWoMd5NdW
         VamY0AhAs+2XfiaeX9oyMC1b5tgjgaHq0YOxIVA8AHkXrMRvnA4oEhR/KNF68JsT7KqM
         KekWaZBcWFSKzTIzDrw9q6bpTGL+zimKRpNQ1Ns8SNicQjQSkL/M6jwWd/NG9phNYGuV
         GYc56OnZGTd/PuhTq5Y0OsfYcP4XJxesZXroDDQ8GRUz+QfyoVFfKfNopZouf7YSofLq
         iwiW3DJr4xj2QNTv3ymjqiial3NpOzSazRiNh2dH++9Ap+hsUU3dZAto1BqfdVsoapmi
         kDeQ==
X-Gm-Message-State: ALoCoQng9iz8C1IY3qzgkfwrG31GfkjKYZisvuCevjH4aHZ+eWDb7fzeJWv+waJnF3iPGn7FPzHz
X-Received: by 10.107.7.214 with SMTP id g83mr5589014ioi.28.1438206516664;
 Wed, 29 Jul 2015 14:48:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150728122724.120D93321BC@smtpvbsrv1.mitre.org>
References: <CALPTtNVtm+tLFxZcg268GSp0LtX+zCz0RwRowxSf7S0Tv6kutA@mail.gmail.com>
 <20150728122724.120D93321BC@smtpvbsrv1.mitre.org>
From: Reed Loden <reed@reedloden.com>
Date: Wed, 29 Jul 2015 14:48:17 -0700
Message-ID: <CALPTtNVyNZZh=d6axNF9yNqi5_5h_sp6_AiwE7xrjSJj+Av_8A@mail.gmail.com>
To: Assign a CVE Identifier <cve-assign@mitre.org>
Cc: oss-security@lists.openwall.com, security@ruby-lang.org
Content-Type: multipart/alternative; boundary=001a113f911c8a3860051c0a8c6a
Subject: [oss-security] Re: CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129

--001a113f911c8a3860051c0a8c6a
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 28, 2015 at 5:27 AM, <cve-assign@mitre.org> wrote:

> > * DL::Function#call could pass tainted arguments to a C function even if
> > $SAFE > 0.
> >
> https://github.com/ruby/ruby/commit/7269e3de3cee3bbb6ab77fc708f3a10cab00b65e
>
> > These seem to be different issues than CVE-2008-3657.
>
> Please clarify what research you have done to reach this conclusion
> for the DL::Function#call issue. Finding information about
> vulnerabilities with different dates does not always mean that
> separate CVE IDs are used. For example, if a 2008 patch was
> ineffective in the sense that it did not actually fix any aspect of a
> CVE-2008-xxxx vulnerability, and then an effective patch and a new
> advisory were produced in 2009, the previously assigned CVE-2008-xxxx
> ID would continue to be used - there would not be a new CVE-2009-yyyy
> ID.
>
> The available information about CVE-2008-3657 includes the "Lack of
> taintness check in dl" section of
>
> https://www.ruby-lang.org/en/news/2008/08/08/multiple-vulnerabilities-in-ruby/
> with "dl doesn't check taintness ... This vulnerability was reported
> by sheepman" and "Please upgrade to ... 1.8.7-p72." See the
> ftp://ftp.ruby-lang.org/pub/ruby/1.8/ archives.
>
> Comparing ext/dl/sym.c between p71 and p72 shows a new
> rb_check_safe_obj(pval) line in rb_dlsym_call.
>
> Comparing ext/dl/dl.c between p71 and p72 shows new instances of
> OBJ_INFECT, among other changes.
>
> The 2009 commit mentions "Patch by sheepman" and a change to a .rb
> file (no changes to any .c file).
>
> Is the 2009 issue a new issue because it is specific to a "tainted
> arguments to a C function" attack, and the 2008 patch correctly
> resolved the 2008 test case involving uname?
>

Sorry, not a Ruby developer, so not really able to give an authoritative
answer here (cc'ing security@ruby-lang.org to see if they can help). I am
just trying to track all Ruby vulnerabilities for inclusion into
https://github.com/rubysec/ruby-advisory-db, and I noticed those never had
CVEs assigned (yet the Ruby devs considered them security issues).

To help with this, here is the 2008 diff --
https://github.com/ruby/ruby/commit/48c7bb17de234f881b775128b354715ece973415

Hopefully, one of the Ruby core devs can jump in here and give a better
answer.

~reed

--001a113f911c8a3860051c0a8c6a--
