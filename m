X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["654" "Wednesday" "29" "July" "2015" "14:48:27" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNWfcr-Y6XTM9yphQ5xVkOKTYJ_vWLaOLw4972afNQhPOw@mail.gmail.com>" "23" "Re: [oss-security] CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129" nil nil nil "7" "2015072921:48:27" "[oss-security] CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129" (number mark "U       reed@reedlod Jul 29   23/654   " thread-indent "\"Re: [oss-security] CVE request: Two ruby 'dl' vulnerabilities fixed in ruby-1.9.1-p129\"\n") "<55B7781F.20804@redhat.com>" ("<CALPTtNVtm+tLFxZcg268GSp0LtX+zCz0RwRowxSf7S0Tv6kutA@mail.gmail.com>" "<55B7781F.20804@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15367 invoked by uid 550); 29 Jul 2015 21:48:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14267 invoked from network); 29 Jul 2015 21:48:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=DBrxRXWxT0UCSJTIMcaVKfhs1891pzlF9nGsVTmoLDc=;
        b=I31DokfMPytcueSWcttf0O+7Px/DU08/8bj+NwZgn++k0siBeMcOgQowwILIy7x44C
         fjKD6Ih+JtZ2VtmNe+/UC8E1oi2TkIAl5qWkCmwCvK/m2Dwbk1bap7xMji2rhJkO7Y9P
         o4/rk1tkPYks6SCDwr0+aXS3HU/L5SCWu5TiA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=DBrxRXWxT0UCSJTIMcaVKfhs1891pzlF9nGsVTmoLDc=;
        b=V4cXmhjI7ftgEfPdyUe0UvgU8Ci90BDx+wJFcjDHzuC1H11vMEDqNcwfKng9IsPHG6
         KChxzw1SLXq7KW4sAV536fVoXd24lhwG5/fKYfye7zz0L5oNiufrYdbjB+I+6P2gDUEp
         YW8l/DqawBdFpRQzZCy9E1JZ2t5qcV8y8oFa+nHvLDyAbePPxxBdx8JFUvzHVuwpQF7v
         jputyAEJkES3qlBOv5Ey3VWvha3yHK1RjOL8ZziqWfzyz+0G6BtvjrxPvj5TQ6PS/7YE
         QRvNgfcmUMTXGjBq6xApB+kqsvb01uu7+ftHuTTaLmSg0wKvdxaSL5eq3ozGn0ReNA7k
         JbxQ==
X-Gm-Message-State: ALoCoQmiYlevsL4HXce98+/w0CvYw0rCN14Lfn0f/YaeHYpSLTV0Qy4Wq8goJh5XbLehlI8QpIqe
X-Received: by 10.50.59.242 with SMTP id c18mr9703419igr.66.1438206526552;
 Wed, 29 Jul 2015 14:48:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <55B7781F.20804@redhat.com>
References: <CALPTtNVtm+tLFxZcg268GSp0LtX+zCz0RwRowxSf7S0Tv6kutA@mail.gmail.com>
 <55B7781F.20804@redhat.com>
From: Reed Loden <reed@reedloden.com>
Date: Wed, 29 Jul 2015 14:48:27 -0700
Message-ID: <CALPTtNWfcr-Y6XTM9yphQ5xVkOKTYJ_vWLaOLw4972afNQhPOw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Assign a CVE Identifier <cve-assign@mitre.org>, security@ruby-lang.org
Content-Type: multipart/alternative; boundary=047d7bea423e211603051c0a8da2
Subject: Re: [oss-security] CVE request: Two ruby 'dl' vulnerabilities fixed
 in ruby-1.9.1-p129

--047d7bea423e211603051c0a8da2
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 28, 2015 at 5:39 AM, Jan Rusnacko <jrusnack@redhat.com> wrote:

> On 07/28/2015 11:44 AM, Reed Loden wrote:
> > * DL::Function#call could pass tainted arguments to a C function even if
> > $SAFE > 0.
> >
> https://github.com/ruby/ruby/commit/7269e3de3cee3bbb6ab77fc708f3a10cab00b65e
> Could this be related to CVE-2013-2065 ?
>
>
> https://www.ruby-lang.org/en/news/2013/05/14/taint-bypass-dl-fiddle-cve-2013-2065/


For the record, CVE-2013-2065 is
https://github.com/ruby/ruby/commit/c7d7ff45f1e0d6fad28e53c02108d4b067e843c3
.

~reed

--047d7bea423e211603051c0a8da2--
