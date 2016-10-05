X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2144" "Wednesday" "5" "October" "2016" "09:13:03" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>" "47" "[oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems" "^Date:" nil nil "10" "2016100516:13:03" "[oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems" (number mark "        taviso@googl Oct  5   47/2144  " thread-indent "\"[oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20383 invoked by uid 550); 5 Oct 2016 16:13:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20365 invoked from network); 5 Oct 2016 16:13:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=j+v19/vGOpBvEFRo39A8A+iJCVSm7Hk63JtQUKQHp0A=;
        b=C2qqbsDSL65YktyQJJryHnW0w+CTIzHQ8z5RLbhbCARe1DlefBpbv1Bb2uXFl/0SGi
         /v9b0Wk6m28GP/4mmxQMfmFXyFqToDoo6qecZ/BuL6FXF0huZpAg/CEzEy1bvKVH/gdL
         MueejubMh8q/81M/dIf5SHYWf/lbR/k5GWtKI35MaiuG5o6s3LuCNYnjerJsoJmKCLO8
         aFX+DypE0+jxL+kG9XQi15icWcWbllHR8ty2dr/MRKbdbZbX8s9bMCrvZkW9+ffKax0R
         yoEcl35dVd5mQyd72vLbYjmPy5EJU6NNC6FrnOxqHE54aDguk1LeP+EVW1kuziChk+ZM
         oT5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=j+v19/vGOpBvEFRo39A8A+iJCVSm7Hk63JtQUKQHp0A=;
        b=NItc4SnCe6vHomeb23Tvr0gLgTnS1RWhpcluv35KdXn6bPxBSxePSMt7EKD2QFxa3o
         92lWLlUwoM1CxiNjEE1iMGFITRxK45LBaOdIoo81KkT18JPiL5lAmwbhwgd7iTqHc95Y
         o0TWFZcvxVGuxITEZEGpYEPgPXtZNFaYdFiSfsB+fTuxA9Yx1FPi64qTfsGtECWLrJco
         hF6tv5NP9nLJelIkvXIqYE7RMC0qsXUFVPkv5+JjL3uAxWSMW8wHEdl9NT/+DPoiBYSA
         FpWcyhZx+vgzDqshV72HvbUBYzwwpSt1vS+1OxPCDosF+Illq6LypYb4xLAA7OCJRiyH
         md+g==
X-Gm-Message-State: AA6/9RnmdQkpbNZDKdQ5xFc4LpW5xeBgAfQKKOXoCurkvxeWKM2QtSMdSgWKbvSdsYCJ8BlkL64qXTg+YKWMoTxt
X-Received: by 10.159.32.195 with SMTP id 61mr7586317uaa.157.1475684004158;
 Wed, 05 Oct 2016 09:13:24 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 5 Oct 2016 09:13:03 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems
To: oss-security@lists.openwall.com

Hi, just an update and CVE request for various ghostscript issues. In
general, the security properties of -dSAFER are not well tested and
it's probably not wise to rely on it. The issues below were found just
by browsing the commands available, I haven't tried fuzzing it.

These are all possible to exploit via PDF or PS (or the various
similar formats, like XPS).

If you're using ImageMagick, I would recommend disabling the PS, EPS,
PDF and XPS coders in policy.xml. Applications like gimp, evince,
claws, and most other applications that generate thumbnails of PDF/PS
documents should probably not do so without a prompt (NOTE: A lot of
packages do this
https://codesearch.debian.net/search?q=-dSAFER+&perpkg=1 )

bug: various userparams allow %pipe% in paths, allowing remote shell
command execution.
id: http://bugs.ghostscript.com/show_bug.cgi?id=697178
repro: http://www.openwall.com/lists/oss-security/2016/09/30/8
patch: http://git.ghostscript.com/?p=user/chrisl/ghostpdl.git;a=commitdiff;h=71ac874
cve: please assign

bug: .libfile doesn't check PermitFileReading array, allowing remote
file disclosure.
id: http://bugs.ghostscript.com/show_bug.cgi?id=697169
repro: http://www.openwall.com/lists/oss-security/2016/09/29/28
patch: http://git.ghostscript.com/?p=user/chrisl/ghostpdl.git;a=commitdiff;h=cf046d2
cve: please assign

bug: reference leak in .setdevice allows use-after-free and remote
code execution
id: http://bugs.ghostscript.com/show_bug.cgi?id=697179
repro: http://bugs.ghostscript.com/show_bug.cgi?id=697179#c0
patch: http://git.ghostscript.com/?p=user/chrisl/ghostpdl.git;a=commitdiff;h=d5ad1e02
cve: please assign

bug: type confusion in .initialize_dsc_parser allows remote code execution
id: http://bugs.ghostscript.com/show_bug.cgi?id=697190
repro: http://bugs.ghostscript.com/show_bug.cgi?id=697190#c0
patch: http://git.ghostscript.com/?p=ghostpdl.git;h=875a0095f37626a721c7ff57d606a0f95af03913
cve: please assign

There are a few other minor issues and leaks, but these are the
important ones if you're not going to disable using gs. Please also
check that you're shipping the patch for CVE-2013-5653.

Tavis.
