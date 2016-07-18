X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2288" "Tuesday" "19" "July" "2016" "02:00:53" "+1200" "Richard Rowe" "arch.richard@gmail.com" "<CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>" "61" "[oss-security] A CGI application vulnerability for PHP, Go, Python and others" "^Date:" nil nil "7" "2016071814:00:53" "[oss-security] A CGI application vulnerability for PHP, Go, Python and others" (number mark "        arch.richard Jul 19   61/2288  " thread-indent "\"[oss-security] A CGI application vulnerability for PHP, Go, Python and others\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11951 invoked by uid 550); 18 Jul 2016 14:07:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5696 invoked from network); 18 Jul 2016 14:01:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=DLM9h3I5iEGRdm2RhG8xyWx2OeS9OPZsmev9S7L96Qo=;
        b=i9FbVO4RTj096K9OI1GJA+tuRhQka1JhSdG/kU9myH+93bl/TvwJ9fpq2QUosIojIc
         sscv/qUr7WTKeV6u+gY1uJwWaoKfOFDTQKNcroUM9gdBbVmmssuSNhP3Z9TpuMAPpEnd
         fPwvue3KJ5AAXS7X7Ew00+Y99/0LdM7W94IFYDcxl/0vVk1g8khET/AY/O7U6Hkof5Zv
         1CceXk5lt/veuO4UoJSoOoO8zUmc/ZWSHLXCmPIAGQGFfGlljDTtGvkg4qTPwf+/UJ0M
         hYaiKMenVB5VlAjhsIBZvO6cnB2iYy/tF6e26PV1Ghb6BWH4G4Hxv+9YPYGLXx+h5h3P
         oydQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=DLM9h3I5iEGRdm2RhG8xyWx2OeS9OPZsmev9S7L96Qo=;
        b=EglGRUmEEgBn8N3JjyIPabpq0OM9fHWtF7H7PcG3fKlToNk0kr6k3ThBAN1cR+fbDx
         kR0nblzO6BjDklx8oKOMd8PZr80VM9Ruf9hkDipeGaTDS4D6jpc7tV6UeYvodYCkxVus
         ud5sYkeBUODSJbwoBOheJ/bZE9WWEcgP24nHBguLq4HqrM+hAjKVHL7hyl1ruWX6VzTu
         osEJSDgFWqYqhPUN3L9d8crXtrXsLj/rqhEacM5bHgYr4CN+lpTsvjLkfm2G95Vw5UB4
         RQUhr2bnx/BnG8OwBx663JUPJy/dTxefYNSvDt5rAMjaTU2Qu2Ba1qGcroNsmgLVjZDo
         h4VQ==
X-Gm-Message-State: ALyK8tKp9DomOFIIvXWRVylg7U20SZZ0HBH5g3rt0CNQUnoktpyFFGPeAYv1hwPcKU2gNbRJuQ/OdE1OXVfYJQ==
X-Received: by 10.202.245.2 with SMTP id t2mr4868816oih.203.1468850453455;
 Mon, 18 Jul 2016 07:00:53 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAMqf4yDbXfYqFYHbMnMbrhcYfmjC56ok5+3VvNYfKndtsuECgA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113df24c81cf680537e96517
Date: Tue, 19 Jul 2016 02:00:53 +1200
From: Richard Rowe <arch.richard@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] A CGI application vulnerability for PHP, Go, Python and others
To: oss-security@lists.openwall.com

--001a113df24c81cf680537e96517
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

The Vend security team would like to publicly disclose a vulnerability
we've (re)discovered in CGI and PHP web applications. Here's a two line
summary:


   -

   RFC 3875 (CGI) puts the HTTP Proxy header from a request into the
   environment variables as HTTP_PROXY


   -

   HTTP_PROXY is a popular environment variable used to configure an
   outgoing proxy


The consequence is that an attacker can force a proxy of their choice to be
used. This proxy receives the full request for anything sent over HTTP
using a vulnerable client. It can also act in a malicious way to tie up
server resources (a "reverse slowloris").

For the purposes of general disclosure to the wider ecosystem, we've
prepared a website that describes the issue and collects common
mitigations: https://httpoxy.org/ - but I'll continue with some notes below.

Particularly affected is anything using the Guzzle HTTP library for PHP,
but also many other languages and frameworks when deployed under 'real' CGI
(PHP's userspace is basically emulated CGI), including Go's net/http and
Python's requests. This bug appears to be more than 15 years old, and was
fixed in a piecemeal fashion in other software (e.g. curl, libwww-perl,
Ruby).

The good news, however, is that stripping any Proxy request header is easy
(because it is undefined by IETF and not listed in IANA's registry of
message headers) - there should be no standard use for the header at all.

Over the past two weeks, we've disclosed to the language teams affected
(PHP, Python, Go, HHVM), as well as common CGI implementation vendors
(Nginx, Apache). CERT have been involved in this process, and we=E2=80=99ve=
 had the
help of the Red Hat Product Security team. All these teams will probably
have good advisories for their own specific affected software.

The Apache Software Foundation have an advisory available at
https://www.apache.org/security/asf-httpoxy-response.txt

The original discovery in 2001 seems to have been by Randal L. Schwartz.
2016 discovery was made by Scott Geary, research and disclosure
co-ordinated by Dominic Scheirlinck, colleagues of mine.

Regards,
Richard

--001a113df24c81cf680537e96517--
