X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["731" "Wednesday" "3" "May" "2017" "20:55:23" "+0200" "Guido Vranken" "guidovranken@gmail.com" "<CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>" "17" "[oss-security] rpcbomb: remote rpcbind denial-of-service" "^Date:" nil nil "5" "2017050318:55:23" "[oss-security] rpcbomb: remote rpcbind denial-of-service" (number mark "        guidovranken May  3   17/731   " thread-indent "\"[oss-security] rpcbomb: remote rpcbind denial-of-service\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32134 invoked by uid 550); 3 May 2017 19:14:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7296 invoked from network); 3 May 2017 18:55:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=efgUpwYoKYPZItBnDHPtchuBxgvwDlqMmqWR498EakU=;
        b=eYPZkbs83xtIrLCD9DNwWD0wHw2HA2zdrZTFVSrj567CQcn2mlNf4lDJGbWLy9yOVe
         TjqCuRpecb+4MCr4PkfxOvGjLUzSirrAns/xfwt3VhRzYl3p7lwlKRyaiqjKuIlLbPd5
         IXLuu5ZDX293i0jLgrWFV1H8cjX8er5Frq6ndjDmsxc/VSP1QAdTGg8/rh9BSuAlHat+
         0S/tX8oVBXqlXZPDmyV9CNzBvjwKbBNdfnPVPzQpHI3Pq2k8XS9K+j1E8cGSMUhrlMhw
         7a9TIS4+BSIBkRSmYe1cWx14VljFsZRWUMAymqBm54CpSlnxFPAn/67VuI7BICoT39RN
         hGpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=efgUpwYoKYPZItBnDHPtchuBxgvwDlqMmqWR498EakU=;
        b=gm8X8Uhw9rA6QNTmXQtud3bu5e0Cb6rZNQrfLkb4zexuOO6s7ZWLc48ERZD5iAucpb
         Zbo5cW96D6+YoQv6Qy985GWiYPTOnVoL8Z9qaLxjZTcyc3Nms6w/VqLNsgrnF9zbGtBw
         xiEC06FG6YZ1UnQHqPMzXJ9Jql4R1QQ62qLVJYsaOtUws/q0AiQIXmUAVFQwZ0rFfwKX
         tzinbmSFyeovH4ye6mbn3J5IwhhbEwZcn5OO+MiTs0vFYPc0ozTHPzZoNFioa4y+CQ61
         3tOP9lgbuVBOKNn3U+ioepYL6vj9UtzT11oNm2j6UzkC9QX/sDEhvCbLelnoefv2AYfC
         gcMQ==
X-Gm-Message-State: AN3rC/4P8kjjorW9OCSUUeYYp+jxbU6MwpLPIemAxv9zL0YQbwDyKI5o
	Ag0arcjoCBlNJtClJWnTaEwNmebiNZfB
X-Received: by 10.31.155.4 with SMTP id d4mr9538949vke.3.1493837723337; Wed,
 03 May 2017 11:55:23 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 3 May 2017 20:55:23 +0200
From: Guido Vranken <guidovranken@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] rpcbomb: remote rpcbind denial-of-service
To: oss-security@lists.openwall.com

This vulnerability allows an attacker to allocate any amount of bytes
(up to 4 gigabytes per attack) on a remote rpcbind host, and the
memory is never freed unless the process crashes or the administrator
halts or restarts the rpcbind service.

Attacking a system is trivial; a single attack consists of sending a
specially crafted payload of around 60 bytes through a UDP socket.

This can slow down the system=E2=80=99s operations significantly or prevent
other services (such as a web server) from spawning processes
entirely.

An extensive write-up can be found here:
https://guidovranken.wordpress.com/2017/05/03/rpcbomb-remote-rpcbind-denial=
-of-service-patches/

Exploit + patches: https://github.com/guidovranken/rpcbomb/
