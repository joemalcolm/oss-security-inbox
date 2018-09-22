X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1276" "Saturday" "22" "September" "2018" "19:46:45" "+0300" "Ariel Zelivansky" "ariel.zelivans@gmail.com" "<CAE-_4r2P-=PaJC7SFVawyKi3Y+X8raPnmddjmXC36pS6DLfEjw@mail.gmail.com>" "41" "Re: [oss-security] CVE-2018-8023: A remote attacker can exploit a vulnerability in the JWT implementation to gain unauthenticated access to Mesos Executor HTTP API." "^Cc:" nil nil "9" "2018092216:46:45" "[oss-security] CVE-2018-8023: A remote attacker can exploit a vulnerability in the JWT implementation to gain unauthenticated access to Mesos Executor HTTP API." (number mark "U       ariel.zeliva Sep 22   41/1276  " thread-indent "\"Re: [oss-security] CVE-2018-8023: A remote attacker can exploit a vulnerability in the JWT implementation to gain unauthenticated access to Mesos Executor HTTP API.\"\n") "<CAPNiXbEAF=Se=QxAumYgog+4ZCoVpoPCUsfONszrNDqkNmzYaw@mail.gmail.com>" ("<CAPNiXbEAF=Se=QxAumYgog+4ZCoVpoPCUsfONszrNDqkNmzYaw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22268 invoked by uid 550); 22 Sep 2018 16:46:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22242 invoked from network); 22 Sep 2018 16:46:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=AAbn1l67mRBWX8zTXNYz5JOVDOK+y+Zcw0TjAOweXek=;
        b=CAvw3o/7qpPsoNWjiQZLLa0Xxd96luJskaSpckIsYxODI8XbuV9vT1mXsUdTxrSGAr
         esfinLs5uSihyDVIbZGzxnO4uz1aU0bara/oGcHjjwgbIWcoxdEnFK4192fObu/KF6Ss
         KPQJRoCkW8A0OGIm9AASpPn5BvQ6C1xBYm7GO/wAGnLhFu/+Yk28ne7BRtlXAFs1JIHc
         NEPttpThhq93yxFu0wg3a4pFymwx8vhycdCWZMp9vB+XkP/60ZEmH8QhadcbyZPUd7VG
         TffRij6mg9hJgAU0PAlyqga9hRPK3UE4LBRdPqwdICrFNjh1f5qHzLq0WUrDHBnaRGTZ
         m5Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=AAbn1l67mRBWX8zTXNYz5JOVDOK+y+Zcw0TjAOweXek=;
        b=D/2bo+ALD4nTjo2E0pvQwL6JiJhaWlpXuYiKymPRSqLKGeehBNaUdUoODYD+nL5qvD
         btYN+C0ZWOx1TQ+2pRFoyMvJi6OmRX34yaOvJVriyiMqvJKGL0tbOBKXwc+L2f6Vyi1h
         BVgQ7orYuxSYmjya5JwjvQy2o4slXus3h+2yl+IlJMaRu/EjbFZsc9XxWSlaLzioMC2U
         V1/AdB0sovV6wR59cfO7ouwO4SC2Gb9L0Bh2T5HvPLcIOgRTvVULUGkZJu3GxB400XmA
         1Zoiuj6acz7a6mlIvYMm6VSrAN9gOwOXmtKdZxfbrowXAzrojtOZHoUZvO7Q32ws43j6
         DE4A==
X-Gm-Message-State: ABuFfohDBzh6kD0hZHP851ZDSxX9LAWZGt2KN2uQu8X0celRCBOJFd6P
	DhIhYVcIgLoGjHEr/JhVPbtLbwleyFh4arJOgKiW+Q==
X-Google-Smtp-Source: ACcGV63c9ny2eSqc2BI84dVb/F0G0uqC0cZFvttoM10JDWlLAa6bxXXCME3uoFo44gQhYZWLuEuHMLdxX6GkiWzFRSo=
X-Received: by 2002:a50:d2d7:: with SMTP id q23-v6mr5041161edg.183.1537634806450;
 Sat, 22 Sep 2018 09:46:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAPNiXbEAF=Se=QxAumYgog+4ZCoVpoPCUsfONszrNDqkNmzYaw@mail.gmail.com>
References: <CAPNiXbEAF=Se=QxAumYgog+4ZCoVpoPCUsfONszrNDqkNmzYaw@mail.gmail.com>
Message-ID: <CAE-_4r2P-=PaJC7SFVawyKi3Y+X8raPnmddjmXC36pS6DLfEjw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Terry Chia <terrycwk1994@gmail.com>
Date: Sat, 22 Sep 2018 19:46:45 +0300
From: Ariel Zelivansky <ariel.zelivans@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-8023: A remote attacker can exploit a
 vulnerability in the JWT implementation to gain unauthenticated access to
 Mesos Executor HTTP API.
To: oss-security@lists.openwall.com

Hi,

I couldn't find the fix for this in the mesos repository and it is not
documented in the CHANGELOG, could someone direct me to the fixing
commit/patch?

Thanks
Ariel

On Fri, Sep 21, 2018 at 1:50 PM, Alex R <alexr@apache.org> wrote:
>
> Severity: Important
>
> Vendor:
> The Apache Software Foundation
>
> Versions Affected:
> Apache Mesos 1.4.0 to 1.6.0
> The unsupported Apache Mesos pre-1.4.0 releases may be also affected.
>
> Description:
> Apache Mesos can be configured to require authentication to call the
> Executor HTTP API using JSON Web Token (JWT). The comparison of the
> generated HMAC value against the provided signature in the JWT
> implementation used is vulnerable to a timing attack because instead
> of a constant-time string comparison routine a standard `==` operator
> has been used. A malicious actor can therefore abuse the timing
> difference of when the JWT validation function returns to reveal the
> correct HMAC value.
>
> Mitigation:
> pre-1.4.x users should upgrade to at least 1.4.2
> 1.4.x users should upgrade to 1.4.2
> 1.5.x users should upgrade to 1.5.2
> 1.6.0 users should upgrade to 1.6.1
> 1.7.0-dev users should obtain Mesos 1.7.0
>
> Credit:
> This issue was discovered by Terry Chia (Ayrx).
>
> Alex on behalf of Mesos PMC
