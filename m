X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["879" "Tuesday" "10" "May" "2016" "15:30:24" "-0400" "Kangjie Lu" "kangjielu@gmail.com" "<CABEk9YwSrUa0qTO43n+kOqnaGc59hpkgsj=3ubNatMfwLcjJog@mail.gmail.com>" "27" "[oss-security] CVE Request: ALSA: Another information leak vulnerability in sound/core/timer" nil nil nil "5" "2016051019:30:24" "[oss-security] CVE Request: ALSA: Another information leak vulnerability in sound/core/timer" (number mark "U       kangjielu@gm May 10   27/879   " thread-indent "\"[oss-security] CVE Request: ALSA: Another information leak vulnerability in sound/core/timer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30681 invoked by uid 550); 10 May 2016 19:30:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30594 invoked from network); 10 May 2016 19:30:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=DC+jq9lCorG64821/KgX41WxlpFPV7nU+4DKtLy6eLU=;
        b=Q8j09Z8TOjf9cAJ426+nRvyQWwfyzMVMlg9u3be+5LUAi1oFTVTxYXwmK6BJ0JIril
         lLMZxYH7x9YVLbxUvinh56TvUEolAag4MkFAj+nnWEFVeuVOA5nuu7rr4SvYAdJmMkCb
         H2J+q7l2HMacg86bP1SY5jUbY5S+++ASNC78jNOMo3zgYbj7JhhZOq46QHgj8O1r3d/b
         fnL7iYoETO4spRfhQXY8NhqAprg0r6zcPwer2Lrex6406901nbLZam8hhKwGH7uamlb0
         GRTzW2D9r5txqWrmk6Vb5LqTrJ61sL5GrzGftueGeMj4QwF1tXG/g8PIhwGgOVDkRLY3
         9ozw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=DC+jq9lCorG64821/KgX41WxlpFPV7nU+4DKtLy6eLU=;
        b=KH+WcXBvXYDZQtUYcFcagsbDiT9ScuZMmgcpHhEDw584RyhJPLaSzqM0ZqQLo/Jiy0
         ioPJ8b0Ax8JyT0dme06OS21dNKEWlr1yLdSJBP9MD8cVmp9PehvuowNgHkvEKt3W+XDC
         w8qpLaAMDnQsAuWcArkSquJ2XdF0cWduC4QuFsrMsTDtUnn0fPNlXfuTgT1Tu4xrvE3p
         AjI1eWZfZh84KfoUMtPJ41p77zdGs69YJM5kY8mVt7McNh4WFAhbGevlmT8qG265NAYI
         kFYHU7Xf+mXYorQ17sLWEI0FlENVZk4F39tDHaOu8+vl1279zY0YqXBYszd7SBatuOHj
         4cFQ==
X-Gm-Message-State: AOPr4FW0DdACscZxPcBWAnmD/u01KmVDFU1jYKZl/rIbj8FozNel/rJ5VQiQasPyY5u3x0qup5oqvLNXbglCfA==
MIME-Version: 1.0
X-Received: by 10.157.34.14 with SMTP id o14mr3995663ota.63.1462908624452;
 Tue, 10 May 2016 12:30:24 -0700 (PDT)
Date: Tue, 10 May 2016 15:30:24 -0400
Message-ID: <CABEk9YwSrUa0qTO43n+kOqnaGc59hpkgsj=3ubNatMfwLcjJog@mail.gmail.com>
From: Kangjie Lu <kangjielu@gmail.com>
To: oss-security@lists.openwall.com, Chengyu Song <csong84@gatech.edu>, 
	Insu Yun <insu@gatech.edu>, Taesoo Kim <taesoo@gatech.edu>
Content-Type: multipart/alternative; boundary=001a113c2b42e645ea053281f4d3
Subject: [oss-security] CVE Request: ALSA: Another information leak vulnerability in sound/core/timer

--001a113c2b42e645ea053281f4d3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

In function snd_timer_user_tinterrupt() of file sound/core/timer.c,
the stack object =E2=80=9Cr1=E2=80=9D has a total size of 32 bytes. Its fie=
ld =E2=80=9Cevent=E2=80=9D and
=E2=80=9Cval=E2=80=9D both
contain 4 bytes padding. These 8 bytes padding bytes are sent to user
without
being initialized.

Fix info:
*https://git.kernel.org/cgit/linux/kernel/git/tiwai/sound.git/commit/?h=3Df=
or-next&id=3De4ec8cc8039a7063e24204299b462bd1383184a5
<https://git.kernel.org/cgit/linux/kernel/git/tiwai/sound.git/commit/?h=3Df=
or-next&id=3De4ec8cc8039a7063e24204299b462bd1383184a5>*
Patch has been applied: http://comments.gmane.org/gmane.linux.kernel/2214250

Please help assign a CVE to this vulnerability.

Thanks,
Kangjie Lu

--001a113c2b42e645ea053281f4d3--
