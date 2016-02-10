X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["413" "Wednesday" "10" "February" "2016" "22:23:48" "+0100" "FEIST Josselin" "josselin.feist@gmail.com" "<56BBAA64.4050701@gmail.com>" "15" "[oss-security] CVE Request : Use-after-free in accel-ppp" nil nil nil "2" "2016021021:23:48" "[oss-security] CVE Request : Use-after-free in accel-ppp" (number mark "U       josselin.fei Feb 10   15/413   " thread-indent "\"[oss-security] CVE Request : Use-after-free in accel-ppp\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3794 invoked by uid 550); 10 Feb 2016 21:24:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3768 invoked from network); 10 Feb 2016 21:24:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:subject:to:message-id:date:user-agent:mime-version
         :content-type:content-transfer-encoding;
        bh=oCDDBTzHWxJl21sa3DrVdUXY3jW8o4zCPWpCnJspvBQ=;
        b=P+sdyEyze0NyHGIM5u+87xGDnTxpTocM91ORQlrIX1mMBHEqdsQAHgrcK+D18C1jZY
         Wre7JWrUV9MzjYjQaUJeQ9NIqpiNE6ypaZFMT/4gRjcjlmwwF7gGDy6aqFEgvUEHz3SO
         8vuW9of26zYSboB2D4R/SFNxaLk88Y65BKZ5O+xRMtz81iUFegxzWb1GegZTbzu6TZaI
         TRWeyG+Tuu6BJ9FEQpn3hk9r9hVvOqKP7LqJvlC1lez8qXUEqUR8h2tqkw1/yNFAIbUg
         W1FuJX/pXl52ApcrlJyRF3c8MjKVEY+owgwehlCIzpslyIbEKspqwd8qmarFHUit6v6o
         F70w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:subject:to:message-id:date:user-agent
         :mime-version:content-type:content-transfer-encoding;
        bh=oCDDBTzHWxJl21sa3DrVdUXY3jW8o4zCPWpCnJspvBQ=;
        b=brsA5EvbGKeRl4viSCdan6bWV2N5/p5EFw4rdxWg+/m3Tzvwic0FNXYoDflYTgntgc
         Sighf60yKtGr1MYhTRSFZScYEjjQX4lk2tD6720rPygdgtrWr+XTGyxPgXjH+urjjOc0
         +8nE2Kxkhvtp1sSOQzF3zhIx0o0i4NSMQKYMyie05mssQMfQx2h1/Mtx2i1AL9FpQG8n
         Y40QiZzNdpg0RrZJATpaO6BJz0MRpcfL8t2yE3RN9lOghwpZVcQ6O279w3NAePIOIwHm
         MatdXRzonY+zBRLzelfAtumzau5roMVLY6+g8HewYtj1Z6saatVQ4w0oDPOxu3ljDxDW
         IWVw==
X-Gm-Message-State: AG10YOQOfp4eHIQ6RXmzlmoZsMhCJHg84Eu13EjqqbePmcpaMUQybl9AgeJh80M7BSKflg==
X-Received: by 10.194.93.102 with SMTP id ct6mr49296770wjb.157.1455139430192;
        Wed, 10 Feb 2016 13:23:50 -0800 (PST)
From: FEIST Josselin <josselin.feist@gmail.com>
X-Enigmail-Draft-Status: N1110
To: oss-security@lists.openwall.com
Message-ID: <56BBAA64.4050701@gmail.com>
Date: Wed, 10 Feb 2016 22:23:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE Request : Use-after-free in accel-ppp

Hi,

A use-after-free in accel-ppp was reported one month ago. accel-ppp is a
VPN server (https://accel-ppp.org)
Since I got no news from the dev (neither by email or through the
forum), I would suggest to use this service carefully.

More details about the vuln here :
http://accel-ppp.org/forum/viewtopic.php?f=3D18&t=3D581

The vuln was found with the help of the analyzer GUEB.

Best regards,
Josselin Feist

