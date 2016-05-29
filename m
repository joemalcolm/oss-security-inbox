X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["230" "Sunday" "29" "May" "2016" "18:59:50" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdR5YjVY3TqJchTxhUQJQqCwJfjtZD6hzRE0AQiOYMmOXQ@mail.gmail.com>" "9" "[oss-security] CVE request: Mplayer/Mencoder read out-of-bounds parsing a mp3 file" nil nil nil "5" "2016052916:59:50" "[oss-security] CVE request: Mplayer/Mencoder read out-of-bounds parsing a mp3 file" (number mark "U       gustavo.grie May 29    9/230   " thread-indent "\"[oss-security] CVE request: Mplayer/Mencoder read out-of-bounds parsing a mp3 file\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26466 invoked by uid 550); 29 May 2016 17:00:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26445 invoked from network); 29 May 2016 17:00:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=LrLCx3Dhhyc3QifhewxC5SnlGxLzqsYp2qAScd1IO9I=;
        b=KjAj8QyhyJCHrbvn3T6fcbj2SuStAiKIRXu8/YBM5+y5xbepd9ujWEfPcCUSEA+t40
         ONM3RJUqpe8YFoJFBt39vX9QlEgrHDaRgdSm6ussjQ9otgzZPw4hX8dsp9ZZR1nw1t0b
         NKQHS8auznVVfyRdqUf+Y0b3w3ECY5smHz3PcClrODsPBH80RUWWvqt8xr6qUyionAgj
         uSbwuxCJMsAA5uxtmY2wF3f/rm76HZHC6gKhRE+5RmBnxJx47l78IWu53sECrm4S2yJZ
         6u1odv0s47aSAv/MzLWwy56mRvNJ4dktEvbwwgZvFJY1y8ST8RN1za6TSUCI/q5Dq/lz
         Ve+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=LrLCx3Dhhyc3QifhewxC5SnlGxLzqsYp2qAScd1IO9I=;
        b=FkYojpLuJnO+pNlxmRquFofmkon8859LHvyClfqshrSxVFb/Ml+sVhjfulXrEe0kcp
         xmxQYlQ5Hb+jUytQmdEby0F+PKuFM0uH0fhh2aSmAXPi/rc5+2h09f3uMSdm83/GkM5l
         zTZFUJc1HMQmGkxBnlSem4pPBEH48lmuDsO19XgWm/f/PUEuIZbG1dmHtPVRyu1EyoBN
         E+/5rL9vsGBlxmxUZxoyoMHl1mC6Ikao/1Y/rBxqNhHqLKIpn7yq2hAe7I+SmLp2FNGl
         89zr9uUdbGY0MOQ5TlnQCxKZTmMMRBwjzjHvZDCXiH9YVIYFexwV8qx6IQ6kRVKo3ob9
         Xonw==
X-Gm-Message-State: ALyK8tIq/WTnw9wdfuJ8sdH7hadAvOiis4cllmrawNXBO2iWu6Q5Iol6ujPhjaz4p8r1D4FEWRxz/oeWRiKeZA==
MIME-Version: 1.0
X-Received: by 10.107.173.20 with SMTP id w20mr22573677ioe.110.1464541190540;
 Sun, 29 May 2016 09:59:50 -0700 (PDT)
Date: Sun, 29 May 2016 18:59:50 +0200
Message-ID: <CACn5sdR5YjVY3TqJchTxhUQJQqCwJfjtZD6hzRE0AQiOYMmOXQ@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE request: Mplayer/Mencoder read out-of-bounds parsing a mp3 file

A read out-of-bounds parsing a mp3 file was found in the last revision
of mplayer. Technical details and a reproducer are available here:

https://trac.mplayerhq.hu/ticket/2298

Please assign a CVE if suitable.

Regards,
Gustavo.
