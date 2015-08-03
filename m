X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1033" "Sunday" "2" "August" "2015" "18:27:47" "-0700" "Reed Loden" "reed@reedloden.com" "<CALPTtNWPoVzCkrFVuR4StNgR_srWdadQsTVyL7=EgYYJFmPHWg@mail.gmail.com>" "32" "[oss-security] Re: CVE request: Command injection in ruby gem ruby-saml <1.0.0" nil nil nil "8" "2015080301:27:47" "[oss-security] Re: CVE request: Command injection in ruby gem ruby-saml <1.0.0" (number mark "U       reed@reedlod Aug  2   32/1033  " thread-indent "\"[oss-security] Re: CVE request: Command injection in ruby gem ruby-saml <1.0.0\"\n") "<CALPTtNV-ib_gojFXZOdb5OYb7efUgKg4tPSWuryJBvLCBCE5nQ@mail.gmail.com>" ("<CALPTtNV-ib_gojFXZOdb5OYb7efUgKg4tPSWuryJBvLCBCE5nQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11639 invoked by uid 550); 3 Aug 2015 01:28:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11552 invoked from network); 3 Aug 2015 01:28:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=v0iVjNXhTfKBsXaoPv9QrAh2Tg1umBhIHrnXP1dBe/8=;
        b=dLuIUEmWqK+kJx0CmFuhRfIIxdDsfuVtV3GRjrG7u6rjz5r23F+XC9wgYbi5+Aql4L
         ZI//QsIHIkISGjVje5P3DyGj/LcccknMW7H21hMQ7e3HrFofiNMyBYwXu7SRgOpWJtTE
         sSLsDJbbi7dn6IekU7/Be7AP/iRu0tsyKQsZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=v0iVjNXhTfKBsXaoPv9QrAh2Tg1umBhIHrnXP1dBe/8=;
        b=aDqOpKX6HOPFdo00we8N6kjVKFKUtAvAtW5a4dmGa89Bfb/9fhP61RWHLbx5RKX5Gl
         YjNm0xyx5dizGDUEnAAYRkPZg26il1nACK2UmTxDRYOlUo1ra/KkUsJxhXYT+dfwXVRU
         K/CCh2nm8JVyX8x9SR/35kNYTq4omZtc1Ic94rxi6X8hXKv8OQNoZ/106zDNhA/thkMQ
         IAorGh/W7qd9IV/GtBsAl8EFH3d9FpGp2Tg+mAs5KCBOB70cCSOu/6s0QV/3nRnsdCcb
         kmeOY/kzZwzsk3PePmX8i35cDNS8sIVNOagfGsao1EOdXinE7LL72uv7YdQ0iCYjwWKr
         Yy0w==
X-Gm-Message-State: ALoCoQliAMBPUaj0HhQzv/nnRwWBkndD1DRsMeIGPMIAiGultbMXlU0Qr1kz81UopHRsGGFfoXfr
X-Received: by 10.50.109.233 with SMTP id hv9mr19673197igb.92.1438565286575;
 Sun, 02 Aug 2015 18:28:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALPTtNV-ib_gojFXZOdb5OYb7efUgKg4tPSWuryJBvLCBCE5nQ@mail.gmail.com>
References: <CALPTtNV-ib_gojFXZOdb5OYb7efUgKg4tPSWuryJBvLCBCE5nQ@mail.gmail.com>
Message-ID: <CALPTtNWPoVzCkrFVuR4StNgR_srWdadQsTVyL7=EgYYJFmPHWg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e0122e6bce49ef7051c5e140a
Date: Sun, 2 Aug 2015 18:27:47 -0700
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Command injection in ruby gem ruby-saml <1.0.0
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>

--089e0122e6bce49ef7051c5e140a
Content-Type: text/plain; charset=UTF-8

Any update on a CVE assignment for this?

~reed

On Thu, Jul 9, 2015 at 11:18 AM, Reed Loden <reed@reedloden.com> wrote:

> A follow-up to my previous CVE request. Looked into "Fix xpath injection
> on xml_security.rb" some more.
>
> https://github.com/onelogin/ruby-saml/pull/225#issuecomment-120084288
>
>
> https://github.com/onelogin/ruby-saml/commit/1b4e3dd6d2d44efa629144b2180842456bfb2a0f#diff-661b9d9743a3ff77661f224c6191165cL242
>
> Looks like lack of prepared statements allow for possible command
> injection, leading to arbitrary code execution (via something like eval()).
>
> Related to https://github.com/onelogin/ruby-saml/pull/183 /
> http://osvdb.org/show/osvdb/117903 (which doesn't seem to have a CVE
> assigned either as far as I can tell). Reference for that is
> https://security.dxw.com/advisories/publicly-exploitable-command-injection-in-ruby-saml-0-7-2-library-can-root-the-host/
> .
>
> ~reed
>
>
>

--089e0122e6bce49ef7051c5e140a--
