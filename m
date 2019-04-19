X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["894" "Thursday" "18" "April" "2019" "20:40:56" "-0400" "Havoc Pennington" "hp@tidelift.com" "<CAC7nai19LLaw_ZGOQK9XvLOMcMCpxF0ZKRoniRGvU3URTaALWw@mail.gmail.com>" "27" "[oss-security] Re: urllib3: adds system certificates to ssl_context" nil nil nil "4" "2019041900:40:56" "[oss-security] Re: urllib3: adds system certificates to ssl_context" (number mark "U       hp@tidelift. Apr 18   27/894   " thread-indent "\"[oss-security] Re: urllib3: adds system certificates to ssl_context\"\n") "<CAC7nai00CbzPWbcd2pF-E6hi8pKBrUF5+oanEd++ME1FtsJaoQ@mail.gmail.com>" ("<CAC7nai00CbzPWbcd2pF-E6hi8pKBrUF5+oanEd++ME1FtsJaoQ@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: urllib3: adds system certificates to ssl_context" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30174 invoked by uid 550); 19 Apr 2019 10:26:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28222 invoked from network); 19 Apr 2019 00:41:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tidelift-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=foGSphjSeh+8hct2AxAmrFRmxi1KEU3WkgDxboGV7+w=;
        b=dQE2rvRx9h1ZpIln1n3hFNgXshmdr8T3OLXF1A+rMOJdQzxsl1waFnCYeFt5E8nzKp
         KTRqJasKTmzgW45la3TjSH9k17aDkaVSjaBN1IDLxj3RXiI4WTGWMnHpQ2K5NN2aNjKR
         y3DVQVFW7ZPw4+0yn008y5/CrZbObdvbrm/kjTNyV3V6aPDaU40eIzufD68m/RfYJdge
         nasSurBvBVt+GcEkhN3OkWLCBExE7QqMFKCqtztKhLV7WnMFk+CQHghEhrg6gqXTYCGa
         azroRQvTEabRaK7iAq2zfkGZZFDiFt6m8O2S/HN884/KybRKS1xEDgP1xijaQn5eegIY
         nE0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=foGSphjSeh+8hct2AxAmrFRmxi1KEU3WkgDxboGV7+w=;
        b=YCxIO3dxHg/Ehgm3+eM7Sr5okHH+ZWsrpQUQYz1LDJDAHEn3z6ReSnu1CxelXAOwjc
         vA+wsoHIslMmKYdBo7xsI99CitvApzlaZldoBovg6SsTAKptkuomdJSxlq0OOzNlPlfh
         4VrOxNuwI9HH+ImnziI2aC8hym1GjVznCzHlS73eQqgxq6iKVDYXQO2Vnuj3wuhlHGc1
         Q01LfP13eqWo6X4G+IGYf4Af1+gWRfTCSa+oXOFD61X8Nx3iJORaX6dgh8ZQA0cl4GQ7
         eYSocc5vHOpk8T7kVv91rZcRW48dpV1OHecVJFcEUJoRD4+FuYlBUsGgxgfoCu0oOmJQ
         E1og==
X-Gm-Message-State: APjAAAVGMMXqBhRs+Umhoxdf84t0lRGMR2rOUst1MnvzYR9tRqbUKRE2
	a1Ajg8s+XdudHWopyRRH0wppVEzwWshAmBhIuoGM/0ex5mHAbg==
X-Google-Smtp-Source: APXvYqybo6YY+AMtAHbCzN8/b7Uy8IGGvS2qBiNv+zGx+3OagabALeXJCsYgqy7C8w+w5PEg6F4W+YxidnaUhrmIwII=
X-Received: by 2002:ac8:1aec:: with SMTP id h41mr950111qtk.345.1555634467010;
 Thu, 18 Apr 2019 17:41:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAC7nai00CbzPWbcd2pF-E6hi8pKBrUF5+oanEd++ME1FtsJaoQ@mail.gmail.com>
In-Reply-To: <CAC7nai00CbzPWbcd2pF-E6hi8pKBrUF5+oanEd++ME1FtsJaoQ@mail.gmail.com>
From: Havoc Pennington <hp@tidelift.com>
Date: Thu, 18 Apr 2019 20:40:56 -0400
Message-ID: <CAC7nai19LLaw_ZGOQK9XvLOMcMCpxF0ZKRoniRGvU3URTaALWw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: urllib3: adds system certificates to ssl_context

Hello,

This vulnerability "urllib3: adds system certificates to ssl_context"
has been assigned CVE-2019-11324

Thank you
Havoc

On Wed, Apr 17, 2019 at 2:21 PM Havoc Pennington <hp@tidelift.com> wrote:
>
> A vulnerability has been discovered in the urllib3 Python library.
>
> When verifying HTTPS connections when an SSLContext is passed to
> urllib3, system CA certificates will be loaded into the SSLContext
> by default in addition to any manually-specified CA certificates.
> This causes TLS handshakes that should fail given only the
> manually specified certs to succeed based on system CA certs.
>
> This affects urllib3 1.24.1 and below. The fix has been released
> in version 1.24.2.
>
> The vulnerability was reported by Christian Heimes.
>
> A CVE ID has been requested, will follow up with it when we have it.
>
> Best
> Havoc / on behalf of Tidelift security team & urllib3 team
