X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1319" "Tuesday" "25" "June" "2019" "07:14:52" "-0700" "Matthew Fernandez" "matthew.fernandez@gmail.com" "<2422A407-94F6-4AB2-9928-310C5089EA5D@gmail.com>" "23" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062514:14:52" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        matthew.fern Jun 25   23/1319  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" "<E1hfSKS-00015J-V5@rmmprod07.runbox>" "<20190624193048.GA8039@espresso.pseudorandom.co.uk>" "<CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>" "<alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1444 invoked by uid 550); 25 Jun 2019 14:20:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28519 invoked from network); 25 Jun 2019 14:15:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=vJmheMs20gQZ1TsII1KzgfBlESOAHJhEI34LnHF2Lc4=;
        b=Q30mPhDgFw7wI2Nk+uzeOJ7m21fq7EE7MOpbVzGZO7AS+1ZGElhwwJ30dm4tSqQPOF
         qUp+khw5tezWMlLmkMC39YSCE73W2PQIRRvjontiv4Sss5xnzh2fk+vQJyFfbM9BZfis
         Bjoc/Xc/xd70faPDh5hXfD0ZETfr/clhZEYn3V9D3Jof3mT9aZgOId8K3HuF0ZKF3Ar5
         SL42WVRaoBoYTAj/0nKMsynF1ZjAnHpYvloXZFQvWfsoxIu0qPzd5b3xb3JRvaqoZUbu
         bmFHmXYOCNY/cvme6VII/o9JALmwEZtlye1YO8oRUGDbMXNCosA9rnBVk39wqf9qpdAx
         V25g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=vJmheMs20gQZ1TsII1KzgfBlESOAHJhEI34LnHF2Lc4=;
        b=PXP64HAWgPf2ZU8xHj4yos3FElzVYh6qLNZiFzJtUXH1Ep4qTG+xbAnqqmob/aSSgB
         MgjTJmD2jVMXvyzdkJS0SLhMXr+wQfdxhGCADrsXtsXk/fvqrpoeL6zCUGX5mkWUwOIa
         w/mrIM2YSN4nvL2NI34Yg1nicX2Bku4amzESX6KjhQ+niIYZTTJLixgFWQ7NPo3ALMjn
         zG0hcp2+hRp6avk/ByGILNeWag13W8DDW9CzS0QcUR/TvfcjT5xYYstlEUg5+eImfFZd
         zXLQ5UI28dRDLyarVycTAUD1MXwCksX84ZCXeNLGqTApSEogTvpix4lncxsReh4nCwOr
         1dQQ==
X-Gm-Message-State: APjAAAU5AqD8CtsB+NOrNO0VBQGXKY1zdIi2e+zPqO7UnXI9TJooX9H6
	7Vl846olndGlv8Lyn8cgNEoH5KXa
X-Google-Smtp-Source: APXvYqxUvJzbz0GGLr8hyK6zfNtQmBjh/Oh+OU/g1kvVWw8V78rCijb4N236iKojXBLkJQDVsl0HmA==
X-Received: by 2002:a17:90a:3aed:: with SMTP id b100mr32520892pjc.63.1561472094866;
        Tue, 25 Jun 2019 07:14:54 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
 <20190617113203.GH15432@suse.de>
 <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>
 <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
 <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>
 <E1hfSKS-00015J-V5@rmmprod07.runbox>
 <20190624193048.GA8039@espresso.pseudorandom.co.uk>
 <CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>
 <alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>
In-Reply-To: <alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>
Message-Id: <2422A407-94F6-4AB2-9928-310C5089EA5D@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
Date: Tue, 25 Jun 2019 07:14:52 -0700
From: Matthew Fernandez <matthew.fernandez@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com


> On Jun 25, 2019, at 06:41, Bob Friesenhahn <bfriesen@simple.dallas.tx.us>=
 wrote:
>=20
> * Consumption of uninitialized data (e.g. image data) which is not
>   used to make important decisions.  This is usually due to unhandled
>   cases or error handling which does not quit immediately.

C/C++ compilers will infer backwards from uninitialized variable reads (und=
efined behavior in these languages) that preceding code is unreachable. For=
 example, when moving from GCC 6 series to GCC 7 series we found one of our=
 code bases would produce a binary that would only segfault when compiled a=
t >=3D -O2. We root caused this to exactly the situation you describe: an e=
rror handling path that read uninitialized variables. The compiler appeared=
 to infer backwards that the error check itself was a no-op as the true bra=
nch led to unconditional UB (this is my interpretation of its actions; I di=
d not delve into the compiler=E2=80=99s internals).

I=E2=80=99m probably telling you things you already know and it sounds like=
 you don=E2=80=99t consider such issues worth addressing, but I just wanted=
 to point out that these are not theoretical. These cause real problems for=
 users and, for open source software, you may not have full control over wh=
at toolchain/flags users build your code with.=
