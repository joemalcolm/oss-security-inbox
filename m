X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["618" "Tuesday" "3" "May" "2016" "15:42:27" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSYYWs41o-5MQNr4LHjV_=MWE_H3=kfnWT8z1X3up=g-g@mail.gmail.com>" "23" "[oss-security] Re: CVE Request: Jansson: stack exhaustion parsing a JSON file" nil nil nil "5" "2016050313:42:27" "[oss-security] Re: CVE Request: Jansson: stack exhaustion parsing a JSON file" (number mark "U       gustavo.grie May  3   23/618   " thread-indent "\"[oss-security] Re: CVE Request: Jansson: stack exhaustion parsing a JSON file\"\n") "<20160502124647.5F221332073@smtpvbsrv1.mitre.org>" ("<CACn5sdRW0+xP0HLAHJynJJjvTBt49=Vd8uNmJO2B9NN7FEEKrw@mail.gmail.com>" "<20160502124647.5F221332073@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5735 invoked by uid 550); 3 May 2016 13:42:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5714 invoked from network); 3 May 2016 13:42:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=G+SQaoh5D2xbGj3ZuaFgZm5xt6zz8VplFZR/6xzwnbU=;
        b=hVaJtybt2I2KfNo9A/PPKN05DN1YyHVRhDCdpcIybTZmQb+Q8+OdWep7lFyoUPdOx/
         4X0o+toVpIgBSGS1lCViSmDCO4zdQmLNMiNYuKO/OaLRB/icfzziLeK0/OQmaAm8fcCZ
         0fNW5yfE79LEs1vglW4fn5MqVn0beHWdbFDc96SDpNz08F4yGOqVIwX49KFjeCgm6Jok
         DomwUdlzNOwVC4Wk1UukpnTzQXKvX9noQGEDMyyPBVyVA4TWuItsMCBohRy+/el8Wnm5
         Wjje/1DDREPz4t5GPC7JwwvKwlAcir7CKIAb+AdVxbE/3hy1maim9iY1zOb04vGpImJl
         +zUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=G+SQaoh5D2xbGj3ZuaFgZm5xt6zz8VplFZR/6xzwnbU=;
        b=cMrwQjAxByXTZm/gzk2DgAzHpgXjp1OZ75xjE1ig8TS27wj7sol8dO2V1aQzH7ODC5
         Q14pcEKHTlw+4MHHdne1HL2H3Kgx5YPTwrlHgDAuNiXptanUCpQ6MaTNugeEColm4NOB
         TulIR8K5gDpyo8kPGCjNMEOPIveM1LxxTgo2XGxom6FIF8xVQXF1dfUIwDXbZru1V57V
         idqopYqCvuv9cVEaeU1fn5Qu7/HXYyQfYEG2LWSh84elvJ5wkCU30iHnIT55pX6BUPwx
         IOfnqa4V9sj6mhtkg/+VVDqGa3gKA2OxvCoZxh6ZPJMKAxCcoQOMH0n/n/uEQDIciNgJ
         k0+A==
X-Gm-Message-State: AOPr4FUnx6RqbxFsmj8sC8NBWQoOanAbsPsUS9OOTnAUJH8AGy8qH+inUsvYB0MK/COHm01l+/Gdweq/aFcWDg==
MIME-Version: 1.0
X-Received: by 10.112.13.193 with SMTP id j1mr1194892lbc.39.1462282947394;
 Tue, 03 May 2016 06:42:27 -0700 (PDT)
In-Reply-To: <20160502124647.5F221332073@smtpvbsrv1.mitre.org>
References: <CACn5sdRW0+xP0HLAHJynJJjvTBt49=Vd8uNmJO2B9NN7FEEKrw@mail.gmail.com>
	<20160502124647.5F221332073@smtpvbsrv1.mitre.org>
Date: Tue, 3 May 2016 15:42:27 +0200
Message-ID: <CACn5sdSYYWs41o-5MQNr4LHjV_=MWE_H3=kfnWT8z1X3up=g-g@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11c3195ca402b70531f047b8
Subject: [oss-security] Re: CVE Request: Jansson: stack exhaustion parsing a JSON file

--001a11c3195ca402b70531f047b8
Content-Type: text/plain; charset=UTF-8

2016-05-02 14:46 GMT+02:00 <cve-assign@mitre.org>:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > https://github.com/akheron/jansson/issues/282
>
> > It takes a less than 100kb json file to crash the library, which is
> > bad if you are receiving untrusted inputs.
>
> >> https://github.com/akheron/jansson/blob/master/README.rst
> >> Jansson is a C library for encoding, decoding and manipulating JSON
> data.
>
> Use CVE-2016-4425.
>

It was fixed here: https://github.com/akheron/jansson/pull/284

--001a11c3195ca402b70531f047b8--
