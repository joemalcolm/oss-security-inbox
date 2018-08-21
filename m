X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1381" "Tuesday" "21" "August" "2018" "13:29:34" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhSzACBrrvU83O+ZOhqSHCFOFekPMU=5dYPY=2vTeD4PGQ@mail.gmail.com>" "43" "[oss-security] CVE-2018-10902 - linux kernel - double free in midi subsystem" nil nil nil "8" "2018082103:29:34" "[oss-security] CVE-2018-10902 - linux kernel - double free in midi subsystem" (number mark "U       wmealing@red Aug 21   43/1381  " thread-indent "\"[oss-security] CVE-2018-10902 - linux kernel - double free in midi subsystem\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30198 invoked by uid 550); 21 Aug 2018 03:29:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30171 invoked from network); 21 Aug 2018 03:29:58 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=mWsRsIDc0nfPion/q6YkdOITWMXkJoQwMoZTYsOPpkk=;
        b=eOji1Bge3U5qU8F3GcfZKC2w+Tzn9jhXlKpsWpqE8SMuPjq56/UjTszXl9KeDvSuFw
         0V1u+xkqbqp4Qm/SRO/pawyt2+FT/AdHoNJK2xPAY4Wkkwb/uKGb+ANsCJS1af+GmyHS
         K4g21joXnKpxZvA1ZF3UpZMeOPBuvf1MCWqxgEGFBTwOoVePceo+xJ2+GE4ls0XAe9z1
         DVkf/sLlSs+VLVSHqyD8LOAhDUnFuZydBhSh5wQMRXmbopplhJ+tbnHf69HG5mH4eJI0
         Cv9XxhlrQQFYGLFnCXQ9Ct2NO4Q33kwuTGd4YZWfaf1vR1jRFYYSZlUmIHQFuUf5UbB/
         L6Nw==
X-Gm-Message-State: AOUpUlFvwMr/FuaAxWRXSjJjyc9gVB3ILblIrM+4Md0fEuwcdJSTNN8a
	ZNs3p9c3U4CJnhlYtfNVlPAebdJCyoQ/gq7hIzlBy18YLYc=
X-Google-Smtp-Source: AA+uWPxmB/utPoV47my8FdjdXU2bZsC6RkK61ifVmDYjEZ9xUTqdoyj9VsIwiBCNuFFU7BcLnIorB6p4VftfUh3Ays0=
X-Received: by 2002:a6b:3954:: with SMTP id g81-v6mr38924084ioa.225.1534822186330;
 Mon, 20 Aug 2018 20:29:46 -0700 (PDT)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Tue, 21 Aug 2018 13:29:34 +1000
Message-ID: <CALJHwhSzACBrrvU83O+ZOhqSHCFOFekPMU=5dYPY=2vTeD4PGQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2018-10902 - linux kernel - double free in midi subsystem

Gday,

The linux midi subsystem has a possible memory corruption flaw
accessing midi devices.

This was fixes upstream in commit
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=39675f7a7c7e7702f7d5341f1e0d01db746543a0
(4.18 and newer not affected). Red hat has assigned CVE-2018-10902 for
this issue.

The raw midi kernel driver does not protect against concurrent access
which leads to a double-realloc (double free) in
snd_rawmidi_input_params() and snd_rawmidi_output_status() which are
part of snd_rawmidi_ioctl() handler in rawmidi.c file. Here is an
excerpt of the concerned code:

```
    if (params->buffer_size != runtime->buffer_size) {
        newbuf = krealloc(runtime->buffer, params->buffer_size,
                  GFP_KERNEL);
        if (!newbuf)
            return -ENOMEM;
        runtime->buffer = newbuf;
        runtime->buffer_size = params->buffer_size;
        runtime->avail = runtime->buffer_size;
    }
```

If a midi device is plugged in or emulated (which is the case under a
default VMware instance), then this device driver is reachable via
/dev/snd/midiC0D* interfaces.  This can lead to memory corruption and
all the fun that follows if abused correctly.

Thanks to ZDI has done the reporting to Red Hat,

https://bugzilla.redhat.com/show_bug.cgi?id=1590720

-- 
Wade Mealing

Product Security - Kernel, RHCE

Red Hat
