X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1125" "Friday" "17" "June" "2016" "11:22:32" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do6ip4RSonV48gxBtAFU8X2MEAQUC=j-Giz1fLhtEP1p+A@mail.gmail.com>" "46" "Re: [oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client" nil nil nil "6" "2016061709:22:32" "[oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client" (number mark "U       cbuissar@red Jun 17   46/1125  " thread-indent "\"Re: [oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client\"\n") "<20160615165420.GG1225@sentinelchicken.org>" ("<CAKG8Do5XPLJTJR9iaTRMOtFFZYan_Eeaf7KxxLWDgWiUQDsEbw@mail.gmail.com>" "<20160614211623.GB11505@sentinelchicken.org>" "<CAKG8Do524=Adj62mrRP0eZb0bp7CbXN3yi_Mid5VxFvdE1sE=A@mail.gmail.com>" "<20160615165420.GG1225@sentinelchicken.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1998 invoked by uid 550); 17 Jun 2016 09:22:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1980 invoked from network); 17 Jun 2016 09:22:45 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=11446JQiHzwYn5kiHon/6VP3FJ+R/IVAMxLPvekGD+4=;
        b=j9KsJoLszazJwVd6mEbOnd4nYP5U8WdAkNESXPICyKOeOMn2dmAQ7f8ZCwrLIOuwwF
         KJ6TE2KA11gAKVF7n+MtB+QI9fttde0S94x3SywJTjbLXvfF4PfQCNgn9z8sQo3VtJZe
         +cvCjbOS3JOTeuEL3H5RUpC7kdHXyyl4jzFdixffiUU+M6vgbdYid41CryK6BIb7n0oT
         EyZF9QGie8MwMLMfRqoPXrcmA67OyS4VjhWgyHiy0mitTXLV4FP+UPyNZ6vFBOHI0hR5
         Xr+6DaZtk4nVBpRGhg0+Ez6zpWauxlIkH6YnAdccr4aX3AIUKKl5xhPhM4bta6kLXjly
         BKbg==
X-Gm-Message-State: ALyK8tLloyLyoHe4YTPA5smlwjaHQ4+uhd9u7ShrLj5C0OeLRUM77okSkPBms0OHboWe1LLW3slyJhoMgcBoxUrq
MIME-Version: 1.0
X-Received: by 10.98.76.211 with SMTP id e80mr1402755pfj.28.1466155353023;
 Fri, 17 Jun 2016 02:22:33 -0700 (PDT)
In-Reply-To: <20160615165420.GG1225@sentinelchicken.org>
References: <CAKG8Do5XPLJTJR9iaTRMOtFFZYan_Eeaf7KxxLWDgWiUQDsEbw@mail.gmail.com>
	<20160614211623.GB11505@sentinelchicken.org>
	<CAKG8Do524=Adj62mrRP0eZb0bp7CbXN3yi_Mid5VxFvdE1sE=A@mail.gmail.com>
	<20160615165420.GG1225@sentinelchicken.org>
Date: Fri, 17 Jun 2016 11:22:32 +0200
Message-ID: <CAKG8Do6ip4RSonV48gxBtAFU8X2MEAQUC=j-Giz1fLhtEP1p+A@mail.gmail.com>
From: Cedric Buissart <cbuissar@redhat.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1136e45c00c4f9053575e55a
Subject: Re: [oss-security] CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client

--001a1136e45c00c4f9053575e55a
Content-Type: text/plain; charset=UTF-8

Hi Tim,

On Wed, Jun 15, 2016 at 6:54 PM, Tim <tim-security@sentinelchicken.org>
wrote:

>
> Here are the additional details I promised:
>
> http://blog.blindspotsecurity.com/2016/06/advisory-http-header-injection-in.html
>
> The gist of it is that protocol injection can occur not only if an
> application sets a header based on user-supplied values, but also if
> the application ever tries to fetch a URL specified by an attacker
> (SSRF case) OR if the application ever accesses any malicious web
> server (redirection case).  URLs of the following form allow
> injection into the HTTP stream:
>
>   http://127.0.0.1%0d%0aX-injected:%20header%0d%0ax-leftover:%20:12345/foo
>   http://localhost%00%0d%0ax-bar:%20:12345/foo
>
> More details in the blog post, of course.
>

Thanks for details!
The glibc side of the issue has its own upstream bug entry:
https://sourceware.org/bugzilla/show_bug.cgi?id=20018

>
> Best regards,
> tim
>



-- 
Cedric Buissart,
Product Security

Purkynova 111
Brno 612 45
Czech Republic

--001a1136e45c00c4f9053575e55a--
