X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1695" "Tuesday" "1" "March" "2016" "09:55:03" "-0800" "Grant Ridder" "shortdudey123@gmail.com" "<CAPiURgVCtTu3h0TM=5QBKjTQ62g6GLdDve3pcg29PDtRC1O1FQ@mail.gmail.com>" "57" "Re: [oss-security] CVE's for SSLv2 support" "^Cc:" nil nil "3" "2016030117:55:03" "[oss-security] CVE's for SSLv2 support" (number mark "        shortdudey12 Mar  1   57/1695  " thread-indent "\"Re: [oss-security] CVE's for SSLv2 support\"\n") "<CAOp4FwSj_OAUV0qsnE35VR4UdFCC1qjvQXy9_Rf=-kK0S1eMQQ@mail.gmail.com>" ("<CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>" "<CAOp4FwSj_OAUV0qsnE35VR4UdFCC1qjvQXy9_Rf=-kK0S1eMQQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20205 invoked by uid 550); 1 Mar 2016 17:57:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18319 invoked from network); 1 Mar 2016 17:55:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=nA8nzOZpi8VewteFKq2/YIpdheyrkEK73gUZoue3oOM=;
        b=SoKZhAjjOSKlnraFFyXIG6PItt+HcpnQcqpSLupcgx0YX6seY4Qdc9iGpf49V6Lcik
         +dww77cr6W15vOjRhHED0rAodq9W7h5HbskI5+VAjaXl/M6uTfXy9Gd9X1PviO72c+NR
         4QZBonZ5TVpGdqjku/V6KPtuxiQ+7VKUWJnHxcsnx5OkoayxpbVdSa95kaTLv+mXec6h
         ABXhbDTBHHSn89LvJq3qGZl76EZdECmIX6pgeRV1ChyFCdNsAD4lO/iRwtswo/FZvfEb
         XMR1ojf0w06qo1FAH7u5yM7UGWHbn9V/3B6jZDHj64lUhNghP4rtId8ieWVBr+A5bIGJ
         364A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=nA8nzOZpi8VewteFKq2/YIpdheyrkEK73gUZoue3oOM=;
        b=F1J+4HaSFF69FN5voBJkQp6qNockaQ/5vyrunRiaHGH0fhkMIWbe0VlLncmzttcuwz
         7F7sg4f0JZughmVHQ1JL+A2z9lx7QE7qdoRbaZT5SkrVGe6268ohmY6MyHcNdBLo7CtD
         WOlTcxf7/5aUXCMpDTTM1l8ZZFbEDsZhZ51q+R4MQfe7KgNM++ts+hmknWXlshqWjNlL
         EaOoqDk8V4pMrit6YwtHEtAvvLP57MJ7bs1B3q5ZFIvkVNOuL0SgO3XdevXKDck6Wpbv
         xpcmz+S+l8J0KOmKOLKKt4lKm7a4Yd6OJlK/PbJ8hAyMGcKDBl9xyM4sq0p+hN3/ztKP
         XQ9g==
X-Gm-Message-State: AD7BkJILLhCas2sSVSURDdukwBRFHBY0tCQtPRBv3eNiuQ6YYv5ElKfb9QrNv9AgQRP/9HHIPib90ZW9WqYXJA==
MIME-Version: 1.0
X-Received: by 10.50.155.37 with SMTP id vt5mr329389igb.30.1456854903083; Tue,
 01 Mar 2016 09:55:03 -0800 (PST)
In-Reply-To: <CAOp4FwSj_OAUV0qsnE35VR4UdFCC1qjvQXy9_Rf=-kK0S1eMQQ@mail.gmail.com>
References: <CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>
	<CAOp4FwSj_OAUV0qsnE35VR4UdFCC1qjvQXy9_Rf=-kK0S1eMQQ@mail.gmail.com>
Message-ID: <CAPiURgVCtTu3h0TM=5QBKjTQ62g6GLdDve3pcg29PDtRC1O1FQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c3c7eefcdcfc052d007660
Cc: CVE ID Requests <cve-assign@mitre.org>
Date: Tue, 1 Mar 2016 09:55:03 -0800
From: Grant Ridder <shortdudey123@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE's for SSLv2 support
To: oss-security@lists.openwall.com

--001a11c3c7eefcdcfc052d007660
Content-Type: text/plain; charset=UTF-8

Link to RedHat announcement:
https://access.redhat.com/security/vulnerabilities/drown

I am trying to follow the scope of this issue.  RedHat says "TLS servers
which support SSLv2 are vulnerable".  Can't tell if this means that
services with SSLv2 capabilities are vulnerable or only ones with it
enabled.

-Grant

On Tue, Mar 1, 2016 at 9:39 AM, Loganaden Velvindron <loganaden@gmail.com>
wrote:

> On Tue, Mar 1, 2016 at 5:33 PM, Kurt Seifried <kseifried@redhat.com>
> wrote:
>
> > So there is this proposed RFC:
> >
> > https://tools.ietf.org/html/rfc6176
> >
> > TL;DR: SSLv2 needs to be shot.
> >
> > Now we have yet another significant SSLv2 problem, DROWN, bad enough in
> > fact that Red Hat has now disabled SSLv2 in OpenSSL by default (already
> > done in NSS/GnuTLS), so from my vendor perspective, we're treating SSLv2
> > support as a security problem, the solution of which is to remove said
> > support.
> >
> > But more generally, should we look at assigning CVE's for support of
> SSLv2,
> > much like we would for products supporting DES or other known insecure
> > cryptographic algorithms, hashes, digests and protocols? My personal vote
> > is for yes.
> >
> >
> >
> >
> Btw, FreeBSD has done some work there:
>
> https://wiki.freebsd.org/LibreSSL/PatchingPorts#SSLv2.2FSSLv3_method_failures
>
> Linking with LibreSSL would help uncover those cases, and assign CVEs :)
>
>
> >
> >
> > --
> > Kurt Seifried -- Red Hat -- Product Security -- Cloud
> > PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> > Red Hat Product Security contact: secalert@redhat.com
> >
>

--001a11c3c7eefcdcfc052d007660--
