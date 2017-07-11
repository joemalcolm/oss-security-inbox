X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["791" "Monday" "10" "July" "2017" "19:04:37" "-0700" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUDSOWt=z01KSv81tqsyUO1hNas0NF_aAzXRzqMKM9u89A@mail.gmail.com>" "17" "Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" "^Date:" nil nil "7" "2017071102:04:37" "[oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)" (number mark "        lcamtuf@core Jul 10   17/791   " thread-indent "\"Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)\"\n") "<20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>" ("<801547.452199401-sendEmail@localhost>" "<20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20247 invoked by uid 550); 11 Jul 2017 02:13:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15467 invoked from network); 11 Jul 2017 02:05:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coredump-cx.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=FYLr1K1/sh/0FktotTgKDH98TM0oKG4yz8kKmvCh/O0=;
        b=cp6RhAk0nMCmoPdaw33yQbOlgXgxx2bZ9kicdZotRTWSzeAbJNyWzeIbiHqD+aTsbh
         5Qmh8yUxit9J0oWUbQIq1bffuco2Zyqj77oPECid67Nuc1G4EWiGsO11siQX4lj4OsS4
         5ubIVkr/3qZ/L7A7Sg4fdMGleg1GLPcKHGfg9bFxkCqMGucUvYmnGpz6PC28rc+wTHkE
         DdMwWHdfTcse4NDLMWCvPKaBR1/GMC+andatHu7kNlXU9EKea+cBf4rT2UDwSzJMRVbk
         K+XK5Kn3WndqIbosGwsTWhlFdKjCkB6vo4EbLUlTL9hhAtc5aTT3VbiD2o+9KIP64U3W
         dtGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=FYLr1K1/sh/0FktotTgKDH98TM0oKG4yz8kKmvCh/O0=;
        b=K7yplMhVf+PO8HgVV/p9CmT3cncRfnpsNhbua2c/zoPPrZ11ezJ0N3A6j0OW1KlGSA
         Bdkt6CU5cYehurGdU+5db/kI3C7UjotrqucKw07ZgVSQg12tS9blkqztFyXuBSIfgbgZ
         SXIFekBNyLq6Iibtw/i8gH6/EaoqyXdkBgUZHEwP+Cw8f+2KjjWXXY+N4RHSek6DQTEC
         fCMrG8O+k5cK4q4ihSp01PvayOjtaesM3tJ3xG3rDd+OeV/XJC8ICIsLxSxRDrvLGc4U
         j2Y0nDOYzZbQBBXfxNZRYRVGzNIBfE+9cP56cB/0Ntm0Y/Omip7p5jv7TDg/axFvvFrj
         xTxA==
X-Gm-Message-State: AIVw112ABSBVRCDjJTnAHmZ9QZ1lpYNB7ujDUcVrA7UplohQmsq61MER
	PTmzi9YbgjOg2JbcldTwndaLE/fviBAU
X-Received: by 10.80.218.135 with SMTP id q7mr685548edj.85.1499738698281; Mon,
 10 Jul 2017 19:04:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>
References: <801547.452199401-sendEmail@localhost> <20170710114253.44fc7ac0@cortex.rrz.uni-hamburg.de>
Message-ID: <CALx_OUDSOWt=z01KSv81tqsyUO1hNas0NF_aAzXRzqMKM9u89A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 10 Jul 2017 19:04:37 -0700
From: Michal Zalewski <lcamtuf@coredump.cx>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] mpg123: global buffer overflow in III_i_stereo (layer3.c)
To: oss-security <oss-security@lists.openwall.com>

> It's hard to see a security issue here

I'm not sure this applies here, but the use of uninitialized memory
can be an issue when, say, a website calls your code to convert
user-controlled audio (e.g., to optimize it for streaming). For
libraries, this could leak some information about the audio converted
for other users, possibly revealing it to the attacker. For one-shot
conversions with a command-line tool, this is unlikely, but the
uninitialized memory could still end up leaking some system-specific
secrets (e.g., ASLR memory layout, credentials, etc).

Not that this is necessarily a risk here; depends on how much memory
is accessed, what happens with it later on, whether anyone is even
using the library / tool this way, whether doing so is sane in the
first place, etc.

/mz
