X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["484" "Friday" "10" "June" "2016" "16:10:29" "+1000" "Sam Saffron" "sam.saffron@gmail.com" "<CAAtdryMeBm=+QAMNSDNQZXJCgsCM4Mw=05ye1kS6bw6L+VaajQ@mail.gmail.com>" "17" "[oss-security] Ruby gem rack-mini-profiler CVE-2016-4442" "^Date:" nil nil "6" "2016061006:10:29" "[oss-security] Ruby gem rack-mini-profiler CVE-2016-4442" (number mark "        sam.saffron@ Jun 10   17/484   " thread-indent "\"[oss-security] Ruby gem rack-mini-profiler CVE-2016-4442\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29849 invoked by uid 550); 10 Jun 2016 07:16:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29801 invoked from network); 10 Jun 2016 06:10:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=Da2Wr7SM2ibm39wsDWRP2SER4KuimyTvjDFHudmO0j0=;
        b=HUUb+LpvBPfesH8GdGTQH2re2FzEEB3uS3b0tZ5JndWRL5tHAfUkyf4ZqUPGFsWxWW
         KsIax9NsEBW2YiS8N6D/nE+xr6tge9KEe/9lCuNyk70Pbr9Lryj9IZ2E6lRXBvuHplth
         UZPyKWzMlp3AQZnFvJIZz3x8/mO4czFX1BE/+IZX8uTN6pOZw4lsqLDzWhWePvw66i7j
         usdLlV1Q0XfTC+9X0MeHw7Lt2nNifojZ04phHG4JRv0HiSTttSTmlH+grzppY6AG/2Cd
         CJodQACugd28RaIjETwC5LH9JUjdNF8D6SeyFK1zvtQHYmB1m2EnkX8PVsujn9w13lgW
         YKlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Da2Wr7SM2ibm39wsDWRP2SER4KuimyTvjDFHudmO0j0=;
        b=gLsLaDwfpZ4N6ZCyZqW1aH68RP8EJBDAMiiaRABCHrqBuutfh4w/PZlt0WxXskn7us
         sNi+HFnW7nJRhhyZ3mj5SW/wKLNNmhRHfx93819x+/9LlPAP0yQJyrKNlWRpA7eAn4y3
         sLdKm0p4pXTGf00CPNoOg2/xIplPBUKlSI8K5zBE/Nd01Eu+O0R+egTjq+ve+YDwQMLC
         tdM330iyk8j5lG1bQjUArwYQeqT7nK/jYWv74DTRk3aTdUzs9f+YUF9h7fZp8Zq1FNNJ
         uLbxbzxl5npKZkN2+6NAPasDUL1wArU1n5om/gq2HxwfnU+8DqmannXAPje/aEHICTgu
         /VLg==
X-Gm-Message-State: ALyK8tIrxU0ZIVXpuwq+zzOOtqau7DAyEsh/p5Jw2pNA8gFfW8sYR4/SWvGSKGqNxp066j7IXHMU9k3a/rzfVg==
X-Received: by 10.157.7.11 with SMTP id 11mr114119ote.145.1465539029760; Thu,
 09 Jun 2016 23:10:29 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAAtdryMeBm=+QAMNSDNQZXJCgsCM4Mw=05ye1kS6bw6L+VaajQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Fri, 10 Jun 2016 16:10:29 +1000
From: Sam Saffron <sam.saffron@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Ruby gem rack-mini-profiler CVE-2016-4442
To: oss-security@lists.openwall.com

https://github.com/MiniProfiler/rack-mini-profiler

https://rubygems.org/gems/rack-mini-profiler/

Description: Carefully crafted requests can expose information about
strings and objects allocated during the request for unauthorised
users.

Fixed in: https://github.com/MiniProfiler/rack-mini-profiler/commit/4273771d65f1a7411e3ef5843329308d0e2d257c

Released public fix in version: 0.10.


----

I am not sure how to go about announcing this CVE, where else to I
need to post this?
