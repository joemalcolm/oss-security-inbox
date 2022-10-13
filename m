Received: (qmail 5999 invoked by uid 550); 13 Oct 2022 11:47:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12208 invoked from network); 13 Oct 2022 05:43:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f76xrVYEFO2SE657LDkkRlS2drSld9L2PHsGvtXGmaU=;
        b=NNE/ulWOhlSG94GkOKDV4MUAj8u9XyeZq/hRMTVF442goPMW03CjoLwv7oQUDbKUis
         A5LXkTfmBoED5hahzAIRvkZgnnjQP+v+DeMcjwbk9bSVuGKA2ZRqtKnZ1tTsg8BovEZJ
         aWIaLIjYlVvYLDKFsRKLCMmbX1NLoTRewZkD7Cf9yw6X3FR8zUfNzYhh2yVRdU6bGgDN
         dq8TxzUFLo8Hwv8n/fNM3Qm63KUUo0yeSJjdMKSYrs5syOqWLVskon1pB/tOEnR42QYw
         uB2GZZLnn/ny1EEZ1oRU2cDXvqrMYQNACUvBt6VvNEEeCnGPjnGfUKzY27Yc3EvuzVNc
         fWtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f76xrVYEFO2SE657LDkkRlS2drSld9L2PHsGvtXGmaU=;
        b=gv3o4lJ7JrctzN1d/ufPdLXuVdeh0Zamfx+JLY2y0lgwpH9wfMvxqqwKd2qrVeE7wE
         QVloBBiJj3GZFcs9UirP8JXKr/ALG6u1ir47nj5FWB6OUJM+F55un3joO8Kui8nTY/Qe
         A5Pt4kKVbOIKD1gUcx3KfA92k60qexTnENOI1LaTn7v0/oRAJfrCPSN78kH8uz4ttL6T
         9/+iYf2zHTnd0osDybFOeCEja2zkmuk4sVjoHvlDlQThgjrUo0nJAtiinJvp1xgN9WKw
         1xo5l/nsMWZ40qnK6uIliYi4SFNXTTZU6t1F4mvVv12yL4qPxmsuyCNyM5jiFTmIAnJv
         ch4Q==
X-Gm-Message-State: ACrzQf3Kn7ZMnHRx4wsc0P6v62UOXGvIAaD5yaCFNE4vQ31fDOPWf+Gg
	7Lu+tu+tJbpASyToNjKP2A+mOWAldZDy6Fs1hE17xFxB/oo=
X-Google-Smtp-Source: AMsMyM5syZ2CKsXrUXcmr1cCTvAX5WahuBeJDqJhiSP8sqWrrO023ZV46dMFgGKf2BmxQQ35poM++AsyTnDsEftJODQ=
X-Received: by 2002:a5d:524c:0:b0:22e:39c9:3567 with SMTP id
 k12-20020a5d524c000000b0022e39c93567mr19226164wrc.463.1665639808682; Wed, 12
 Oct 2022 22:43:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD9QR7mjyVnBV4NcyVv=RzLBjNoqvv=d02P-GGsdOV_VWg@mail.gmail.com>
 <20220906115010.gs7kec3wkmayhmhf@yuggoth.org> <CAGUWgD9x1RJdYcr9NCUOjaVNYdnhrPkSjNoh_NaLGu99q65W-w@mail.gmail.com>
 <87leqwtr7t.fsf@hope.eyrie.org>
In-Reply-To: <87leqwtr7t.fsf@hope.eyrie.org>
From: Georgi Guninski <gguninski@gmail.com>
Date: Thu, 13 Oct 2022 08:43:15 +0300
Message-ID: <CAGUWgD-qOonOY_MakeWtotx4mC6KXsg1zLOo9zzx6DKtdaXLsg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] sagemath denial of service with abort() in gmp:
 overflow in mpz type

On Tue, Sep 6, 2022 at 7:17 PM Russ Allbery <eagle@eyrie.org> wrote:
>
>
> I would only call it a DoS if it crosses a privilege boundary.  A user can
> always DoS themselves; that's just Ctrl-C.  :)
>
Observe that ubuntu issue advisory about libgmp crash
without mentioning potential exploitability.

quote:
https://ubuntu.com/security/notices/USN-5672-1

Details
12 October 2022

It was discovered that GMP did not properly manage memory
on 32-bit platforms when processing a specially crafted
input. An attacker could possibly use this issue to cause
applications using GMP to crash, resulting in a denial of
service.

References
CVE-2021-43618
