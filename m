X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["316" "Sunday" "18" "February" "2018" "14:26:02" "-0800" "Anthony Liguori" "anthony@codemonkey.ws" "<CA+aC4kuHFrc=WYKTA9Bb0hha+MMQoM98-izspvQqGekPd5Gm5Q@mail.gmail.com>" "13" "Re: [oss-security] LibVNCServer rfbserver.c: rfbProcessClientNormalMessage() case rfbClientCutText doesn't sanitize msg.cct.length" "^Date:" nil nil "2" "2018021822:26:02" "[oss-security] LibVNCServer rfbserver.c: rfbProcessClientNormalMessage() case rfbClientCutText doesn't sanitize msg.cct.length" (number mark "        anthony@code Feb 18   13/316   " thread-indent "\"Re: [oss-security] LibVNCServer rfbserver.c: rfbProcessClientNormalMessage() case rfbClientCutText doesn't sanitize msg.cct.length\"\n") "<20180218214431.GA23494@openwall.com>" ("<20180218180945.GA22931@openwall.com>" "<20180218214431.GA23494@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21976 invoked by uid 550); 18 Feb 2018 23:01:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19938 invoked from network); 18 Feb 2018 22:26:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codemonkey-ws.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=UlHUUUfomTVzQcP2CY1U1WrNR6vYnur+ZyVuHCY1NjM=;
        b=gIF/ZxoB1Pc+ekNI7mmD2o1rldrPYpdUo+Blv//MQNXmR9SxTAcFFf2hns/ylfnYq+
         7nvwXr78HAnBP8bdrI3WMy4p3jgdDW/Irsoz8SXxvHsr9jSxcM4H6IEHQWA9hshy8uOj
         2QHbAuefAboY8WMdyTVPqEI6oRqiP3Sofzqzoy3KXfdz8vYk7FzmYu9Wn3hHaE9Gh1V0
         G7pNNEVNSvSo8I47+p8UOApm4QcU3I5bnposhyjfvCo9uHu2YA53wsXOLmYOJ/XJ2hYJ
         m92hTeHZnvVO9rKm2LcpY4nUKJFLMw4hTGrCJqvdLd6F1JS8ddnhbuiYWvpuaW7YMZTK
         Ggfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=UlHUUUfomTVzQcP2CY1U1WrNR6vYnur+ZyVuHCY1NjM=;
        b=EtFBgfwPCx+ZhoRm5LEX2UiwFmRfUJDkHFgSGKX5fz0P0RxsP+61CggXdzynzEyVAn
         nGxlrAJp+SaJ7rJu0sgULLkAaCVeYD8OMosYfsjiZ3PO0ElBoaT6q4776J6Sn6JoBMqq
         xGxzPalOdUxX/uW1QBrGcwrcNKWrg9LdwLgVyO5HTPMGGL1YzrtdtyJWdeh+xY4w+eDP
         vNtzFVK2wGauOFNVXsFhmOWHt9vYU7Y6vFPAS5q+vv52WyDx59TUHU1i8j33L21hJPnm
         +MM5NgQKShO5G6Y9akkt8QJvDraGWToAHpCpDZtWHhO6eed54GvhGBuypAVrxyLEqXW5
         pCfA==
X-Gm-Message-State: APf1xPDjErONZL7c4j4bhJvU56hMLRkn46kHms5K4BDkvym6G7MOaBMg
	ad85ReJ6lwECPom2eq8T7GrWbBYX9uGJvVmPAksF8Zx7
X-Google-Smtp-Source: AH8x226dUGci9Wrn1eHGPqLgRgUzRv5hBus2MGCRH30UHLCoDHKF397gRdvWbga6NkfN9yf9SVKS40zD+xmemY3Og6A=
X-Received: by 10.46.50.16 with SMTP id y16mr3512593ljy.53.1518992763117; Sun,
 18 Feb 2018 14:26:03 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20180218214431.GA23494@openwall.com>
References: <20180218180945.GA22931@openwall.com> <20180218214431.GA23494@openwall.com>
Message-ID: <CA+aC4kuHFrc=WYKTA9Bb0hha+MMQoM98-izspvQqGekPd5Gm5Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f4f5e808009c0ff75b05658410f8"
Date: Sun, 18 Feb 2018 14:26:02 -0800
From: Anthony Liguori <anthony@codemonkey.ws>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] LibVNCServer rfbserver.c: rfbProcessClientNormalMessage()
 case rfbClientCutText doesn't sanitize msg.cct.length
To: oss-security@lists.openwall.com

--f4f5e808009c0ff75b05658410f8
Content-Type: text/plain; charset="UTF-8"

FWIW, QEMU had a similar issue a few years ago.  There's no shared code,
but I bet your test case would have worked there too.

https://access.redhat.com/security/cve/cve-2015-5239

Regards,

Anthony Liguori

--f4f5e808009c0ff75b05658410f8--
