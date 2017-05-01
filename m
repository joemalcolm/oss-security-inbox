X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1018" "Monday" "1" "May" "2017" "14:13:16" "-0700" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "22" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Date:" nil nil "5" "2017050121:13:16" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        lcamtuf@core May  1   22/1018  " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<20170501164428.GA12322@openwall.com>" ("<20170501164428.GA12322@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30679 invoked by uid 550); 1 May 2017 21:42:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9625 invoked from network); 1 May 2017 21:13:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coredump-cx.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=ixLY5lH6fpKRuPBcP0xJ73Z3bzaecQWig/UxbeVm88I=;
        b=hgcXOPSgUdVkMdbCVCwjC5U9yB8r1wLUJ0HsV1nyaMdgjePoX+I8/fgirugANcUie+
         GmJ3nyOcHt9C6aM6G7fuM0YJ6Bri+t7tVpG1XIh/GKUzQTD7L0TpY0joc05HxQQMyrVn
         XIA+eQZ4BT3caQbQlQB0Z6GC1wLY26E+fE9Q4y7A81z4k0vlzT/4PbaxzAokw+AW84gr
         awjQYN9UREzX90VSzTEF2gEG3M4agSzcTMgiQ4uxh2XBFXedtxoEp32TKq0EccPNWRqP
         arE1+6/p49RGgYZ2p1AS4CMVX8lAuOxkSQeRLnOCGk7cq66h8h7SIdfC2S3e0P86K9T0
         nH+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=ixLY5lH6fpKRuPBcP0xJ73Z3bzaecQWig/UxbeVm88I=;
        b=XFG0TU+bnPfoSwHk98A4oSmVuiIGxrhNEUz+PHiiEln5uJTOYst42TmM9ZKcSAXTPQ
         pg30W//CsGMAY6np/E2oQus1hgBpRFq5KF6axS2I/C98rTL83/jbMwQdBUZz8AnDVALT
         gFrwOLZFOZrOwUwLeeUGlu/cqDXNA1kP/m4MuJElrH5ijpym87DCHEgPWXjvl1x2H3M7
         yo7xjLWV0eFgdZ6Q5GWfCqgC3l1p3975oOgCE8R6iEGeBK57UI0O+S38ilJ/r6bztl9U
         8y6YinQ+XzlRBpyPd6XD4jow42SfFihWJJ15s75VD3xEE3Z04mfum7WFoGCvlyFSbhaV
         mpuw==
X-Gm-Message-State: AN3rC/4XpRG7blXuCXRrFIClwxlJpWpm7eRB2TjVI2DX/2Noc9yrjYcH
	pn3UEwVSSMfbDMA7pv6z9KF1bm88+v01
X-Received: by 10.80.169.91 with SMTP id m27mr21579401edc.31.1493673216517;
 Mon, 01 May 2017 14:13:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170501164428.GA12322@openwall.com>
References: <20170501164428.GA12322@openwall.com>
Message-ID: <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 1 May 2017 14:13:16 -0700
From: Michal Zalewski <lcamtuf@coredump.cx>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: oss-security <oss-security@lists.openwall.com>

> Besides (mis)features, there may also be implementation bugs.

It is perhaps worth noting that guided fuzzing has been used in this
space with good results, too. For example, AFL was credited on at
least the following in rxvt, tmux, screen, and mosh:

http://lists.schmorp.de/pipermail/rxvt-unicode/2015q3/002155.html
http://lists.schmorp.de/pipermail/rxvt-unicode/2015q3/002164.html
https://savannah.gnu.org/bugs/?45715
https://savannah.gnu.org/bugs/?45713
https://savannah.gnu.org/bugs/?45714https://github.com/tmux/tmux/issues/92
https://github.com/tmux/tmux/commit/3219e0314e3d1d39a57db330faa5693ce0264244
https://github.com/mobile-shell/mosh/issues/667

Especially if what's highlighted in this thread can be found with a
simple script, I'm betting there's far more beneath the surface.
Guided fuzzers have the advantage of being able to discover features
that may be undocumented or hard to spot, so a more comprehensive dive
into all the terminal emulators in use today would probably be quite
fruitful.

/mz
