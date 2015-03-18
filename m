X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["909" "Thursday" "19" "March" "2015" "09:24:47" "+1300" "Emmanuel Law" "emmanuel.law@gmail.com" "<CA+KTh2ziD0VLdsorkF_E87t9jr7GGbHv2MHFEjNKSMTanr=1mQ@mail.gmail.com>" "30" "Re: [oss-security] Re: CVE Request: ZIP Integer Overflow leads to writing past heap boundary" nil nil nil "3" "2015031820:24:47" "[oss-security] Re: CVE Request: ZIP Integer Overflow leads to writing past heap boundary" (number mark "        emmanuel.law Mar 19   30/909   " thread-indent "\"Re: [oss-security] Re: CVE Request: ZIP Integer Overflow leads to writing past heap boundary\"\n") "<20150318202453.GA6085@zoidberg>" ("<CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>" "<20150318085512.7366A3320BA@smtpvbsrv1.mitre.org>" "<20150318202453.GA6085@zoidberg>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24424 invoked by uid 550); 18 Mar 2015 20:24:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24397 invoked from network); 18 Mar 2015 20:24:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=tGw0lovqZVDtdNfvOqT2eYZVCE8l2qaCUnsoXZ64wsM=;
        b=b6UR9Up/0iGDJ4kDfRgSjkXiZXnJkw3t2zPEBekVbA8h+Wt6Hh8V2BP81GRIP8ovpR
         gCfq1D3vqgm129Jd3gfNeEBsW4+wl+jkPZ5sUtjclra9lmHL3eaPHXgXg7+dzcdIee8G
         AeUKeLmwubqnGC1BFSnxpnyYoQ/shO8Roz6tmOK+GLfzfFClyYIvAtI9CkK503F+xPmB
         s2oI2SbdxehzNSqQC2MvxGHfCE0tu/vYODxRGSbFoE6rDHkZQVYJVrKJCemvRb/H7Jd3
         Qr9iWSnIDZcJBAF7OYOKVvHP4Ado1im+hW8RxEMjXHq7d2X5mbFQAxNwct1B2RQI+JLr
         tgHg==
MIME-Version: 1.0
X-Received: by 10.50.171.170 with SMTP id av10mr10457928igc.28.1426710287101;
 Wed, 18 Mar 2015 13:24:47 -0700 (PDT)
In-Reply-To: <20150318202453.GA6085@zoidberg>
References: <CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>
	<20150318085512.7366A3320BA@smtpvbsrv1.mitre.org>
	<20150318202453.GA6085@zoidberg>
Message-ID: <CA+KTh2ziD0VLdsorkF_E87t9jr7GGbHv2MHFEjNKSMTanr=1mQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0111c078dc35fb051195df7e
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 19 Mar 2015 09:24:47 +1300
From: Emmanuel Law <emmanuel.law@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: ZIP Integer Overflow leads to
 writing past heap boundary
To: Timo Warns <Timo.Warns@gmail.com>

--089e0111c078dc35fb051195df7e
Content-Type: text/plain; charset=UTF-8

It covers both PHP and libizp.

I realised libzip was vulnerable only after the Request for CVE. My bad :(

Either way I've informed upstream libzip about the issue.

On Thu, Mar 19, 2015 at 9:24 AM, Timo Warns <Timo.Warns@gmail.com> wrote:

> On 2015-03-18, cve-assign@mitre.org wrote:
> >
> > > https://bugs.php.net/bug.php?id=69253
> > >
> https://github.com/php/php-src/commit/ef8fc4b53d92fbfcd8ef1abbd6f2f5fe2c4a11e5
> >
> > > PHP <= 5.6.6 has a Integer overflow vulnerability when opening a
> > > ZipArchive with a large number of entries. This results in writing
> > > past the heap boundary and crashing PHP.
> >
> > Use CVE-2015-2331.
>
> Can you please clarify the scope of CVE-2015-2331? Does it only cover
> the vulnerability in PHP or does it also cover upstream libzip?
>
> Thanks, Timo
>

--089e0111c078dc35fb051195df7e--
