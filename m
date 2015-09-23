X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["934" "Wednesday" "23" "September" "2015" "12:35:00" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdRXukTcKXKcnUt_xPNPPJ7nVeb1HRi+7poJoBu1d1GnNA@mail.gmail.com>" "29" "[oss-security] Re: DoS in libtiff" nil nil nil "9" "2015092310:35:00" "[oss-security] Re: DoS in libtiff" (number mark "        gustavo.grie Sep 23   29/934   " thread-indent "\"[oss-security] Re: DoS in libtiff\"\n") "<20150922205245.7C7C76C00B1@smtpvmsrv1.mitre.org>" ("<CACn5sdSySyCbjCxTqsVzO8o5CVebYf3YixbwR5rR0XB1i5pT8g@mail.gmail.com>" "<20150922205245.7C7C76C00B1@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32542 invoked by uid 550); 23 Sep 2015 10:35:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32473 invoked from network); 23 Sep 2015 10:35:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=nzg0EhtKgOOZgss1Tq2VnqZPf+UknBtGqguhdSRCk78=;
        b=iGYIpVf3OuQ15ySgGeCWLdlS4KgQGBkl3aQ2wTtVFqR3mXR2TvCHwkIKqZINsokRHI
         X0j3zRqHij3xzKuMpMCmKta/5Y4Yoz3Yx3WMIRaDVuju86jI5yOUoGg6FMiabOEwZ9+a
         ELZDh+oglQXVD0WPr/lCtPJwDxwSAaIkGZn9evl0s9a4zeVOeB7WcQaKcta3U2heK2Af
         LDDqH8i8sm5nVbDAgBlCosaHEzrxOWHBEg+GPC+8MFFZGiJbUDPqng0hDjpEIAUplfSE
         w3bJ5q3Mw9IFxMgfjWdQj/l2QZeGC9n25sGUOx2WYLbj7A6TP2uEDSn5HU7PVCCs3twz
         jBxg==
MIME-Version: 1.0
X-Received: by 10.152.224.130 with SMTP id rc2mr2687533lac.116.1443004500300;
 Wed, 23 Sep 2015 03:35:00 -0700 (PDT)
In-Reply-To: <20150922205245.7C7C76C00B1@smtpvmsrv1.mitre.org>
References: <CACn5sdSySyCbjCxTqsVzO8o5CVebYf3YixbwR5rR0XB1i5pT8g@mail.gmail.com>
	<20150922205245.7C7C76C00B1@smtpvmsrv1.mitre.org>
Message-ID: <CACn5sdRXukTcKXKcnUt_xPNPPJ7nVeb1HRi+7poJoBu1d1GnNA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113418a2a65917052067aadb
Cc: oss-security@lists.openwall.com
Date: Wed, 23 Sep 2015 12:35:00 +0200
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: DoS in libtiff
To: cve-assign@mitre.org

--001a113418a2a65917052067aadb
Content-Type: text/plain; charset=UTF-8

2015-09-22 22:52 GMT+02:00 <cve-assign@mitre.org>:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > We found a DoS using a crafted tiff file that causes a OOM kill
>
> > If you run it with ltrace, you can see some very large reallocs
>
> Use CVE-2015-7313.
>

Thanks! I got some interesting response from upstream:

"FYI, the file has a # of image lines around four billion.  I didn't dig
into it
closely when first reported, but it might be that auto-strip-chopping is
creating an expensive/large data structure.

I'm not entirely confident whether to treat library requests for large
amounts
of memory as a defect in the library.  It makes me sad that modern operating
systems seem to have trouble just return NULL for malloc() calls for which
there isn't enough memory available.  (If my assumptions are correct)."

--001a113418a2a65917052067aadb--
