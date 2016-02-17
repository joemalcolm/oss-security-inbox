X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["555" "Wednesday" "17" "February" "2016" "18:53:57" "+0100" "Manuel Mancera" "sinkmanu@gmail.com" "<56C4B3B5.3010701@gmail.com>" "22" "[oss-security] CVE Request: graphite-web: open redirect" "^Cc:" nil nil "2" "2016021717:53:57" "[oss-security] CVE Request: graphite-web: open redirect" (number mark "U       sinkmanu@gma Feb 17   22/555   " thread-indent "\"[oss-security] CVE Request: graphite-web: open redirect\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32662 invoked by uid 550); 17 Feb 2016 17:58:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30140 invoked from network); 17 Feb 2016 17:54:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:subject:to:cc:message-id:date:user-agent:mime-version
         :content-type;
        bh=pr5wR+ySKTRIct+HpxxBi3bxSnfR0sM9oGI58iLhDEQ=;
        b=s3V3dPPEoNHcGI8LNtKs240By23wpiTPSL7aWhOBeD8vRieKgjHNQQGYQrfAgQZ+Rw
         4UV6recW2358m8Nie+8H6j7HXCInhNe5FmulmwDDrKwl5vypgP749Kxz9sZCIYJNDaDM
         oyjT3nTP737fnhYQFsLPPKTrJeCqjkYv0QIP8Szd8Y3MVOVJc7wP0PTOORf+Qj3Su6lS
         GXTVa9PVvnEaV+lniRtGoxcC7Q8cAbNGlSloSQtcw9tPX9QefSJGLQm3PEY1jWwouYyV
         AZ7cmCLwsxyN4zcsizDwqsyNEljF8r78Ls0ak7vTUTFOqDVWUtKsqnaDDcAxAVXC6+jW
         nK7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
         :mime-version:content-type;
        bh=pr5wR+ySKTRIct+HpxxBi3bxSnfR0sM9oGI58iLhDEQ=;
        b=fQkIE2KcmmL0z3xXHzzMisOB4zPRMfDkmD6KcnXLJAs4xUWn28w+1kqq0owrQzC9k3
         E7dIUU3vMhWZAB7UzVuS8jjGNuqCZJS0O4yrcpXc0HFxtHo7/o8KweDBXrj/lS2Tmfz5
         69rZ1t6P4cEj8B00L+5a0XaG+a5AGJpTlNt7EOeIIr+rzvBX+MgAL/KEaBTna0C/ySxe
         U3rwe3TsxOiGbsiOND7QynMlfjfokoTqj0ynT434Qvita950g2EL2/rLR7sQyJQ3YM7h
         xb/Q7WyHbpXroG6KwY5ssM2x5sIDvL4Xh62WsXnswGS+WtIUixYHne0q/qFw274Gufw5
         D7jw==
X-Gm-Message-State: AG10YOQXHQ0UM+67Jad1pm/ciZTB8zzrK6dPDa/qjHQRg58va0yoaPBxm0wTCnbkY5TW4Q==
X-Received: by 10.194.187.108 with SMTP id fr12mr3219722wjc.107.1455731639363;
        Wed, 17 Feb 2016 09:53:59 -0800 (PST)
X-Enigmail-Draft-Status: N1110
Message-ID: <56C4B3B5.3010701@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------000405060002040402030301"
Cc: security@debian.org
Date: Wed, 17 Feb 2016 18:53:57 +0100
From: Manuel Mancera <sinkmanu@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: graphite-web: open redirect
To: oss-security@lists.openwall.com

--------------000405060002040402030301
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I found and reported an open redirect vulnerability in graphite-web.=20
Through this vulnerability an attacker could redirect to a legitimate user =
to a malicious website.=20

https://github.com/graphite-project/graphite-web/issues/1441
<https://blog.filippo.io/bleichenbacher-06-signature-forgery-in-python-rsa/>

Can you assign a CVE for this issue?


Regards,

Manuel Mancera


--------------000405060002040402030301--
