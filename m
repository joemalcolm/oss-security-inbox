X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4155" "Tuesday" "3" "August" "2021" "15:37:01" "+0300" "Alexandr Savca (chinarulezzz)" "alexandr.savca89@gmail.com" nil "91" "Re: [oss-security] Polipo: denial-of-service using range" nil nil nil "8" nil nil (number mark "U       alexandr.sav Aug  3   91/4155  " thread-indent "\"Re: [oss-security] Polipo: denial-of-service using range\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Polipo: denial-of-service using range" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17432 invoked by uid 550); 3 Aug 2021 12:40:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16099 invoked from network); 3 Aug 2021 12:38:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/wpdLM4zxLtxB7wA8uDqAXsAXsFwaojOo7RrAmsr2xw=;
        b=RlaapZcgUnVGLnZayLiM0UCL/0aJgCT2WjmEfGqu2PGOQnbS+vVOXQRXDEl0yyD0iq
         rnQ2BW3yvX/pOsg8SnypKCdvWGl3+lXPQxpN6IOV+pmjdxUpOwDrv3MFLDmsO2sBHuSF
         FRLCCsLBx5eyIkXXrqvAu/Wr2bVYVCwGPXCkyY+jj2XLhcTlQ8/5sBR+REuww4j8Mrha
         3Mm9WxqYY8zTzEnxcTE4JcvGBS24E0UguZN6Dvz5c4wm94E1wKwKByQOlRHH+e4MRhwY
         n8i+cCl9fWpa/SImsuOt4ecKYpGDrWdoLSZok+Yvlk5GmC4dQUVtxUpiL/zhMGm8sYhE
         6vMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/wpdLM4zxLtxB7wA8uDqAXsAXsFwaojOo7RrAmsr2xw=;
        b=uNgoWvZSL0V3z/CSqwPVtbtBH22Z+0dJlOQSMh0X6FUTpAc0g3oCBWuzDsJrOM8Gkr
         G0sFx7uzAGYCxEWHde+MsNm30frLf3OOS7vjOMUUjLA+GG1XZwItvn/qBDXRCElakHk7
         D6UnimHshfLjSe7Np6z8LaV2no/DlDNCCbLaaSKiH79LuUMAumhhpWXzC9qjt2aRT7vN
         STrfTWss6Kh2CDkqI9V81ptUWcAO0RHFxeF9tCVaO3Hh7/UNr5Jq9FhM9qbV/zWwBsLA
         VzY9z+5t1s+1hgHeiNPYz1FzFrOWWG/g8aqMUMpVQ5HPRQqLd18W2Q0XeUijhmemAW/4
         svCg==
X-Gm-Message-State: AOAM530ZHi+1pKx6OdXah2sAUxXsWdfJN8EqkJ8XY0Jbr4IK4/+mibQM
	yntgKRwhbV0DmSJqN9vTzfc=
X-Google-Smtp-Source: ABdhPJzih9SYzBmGbhvhBVQzvVDkb8EeM/LeNADMUSiq7CbFKb3Q97km8+L07NcO1qlGAkKv8LpUKg==
X-Received: by 2002:a19:7019:: with SMTP id h25mr11236078lfc.121.1627994288687;
        Tue, 03 Aug 2021 05:38:08 -0700 (PDT)
Date: Tue, 3 Aug 2021 15:37:01 +0300
From: "Alexandr Savca (chinarulezzz)" <alexandr.savca89@gmail.com>
To: John Helmert III <jchelmert3@posteo.net>
Cc: oss-security@lists.openwall.com
Message-ID: <20210803153701.12f8cac5@gmail.com>
In-Reply-To: <YQbnc3DxV6iEaA3B@sol.nexus.lan>
References: <20201118171206.443be0215d1b142b5ce7584e@gmail.com>
	<CAH8yC8nDTF9-aBtuKG+81rEYmf4QigMfwB3EEw8hwYiGHP+AeQ@mail.gmail.com>
	<20210728150151.3eadaae2@gmail.com>
	<YQbnc3DxV6iEaA3B@sol.nexus.lan>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Polipo: denial-of-service using range

Hello John,

I reproduced it with the original PoC script.
There is an important point that I have overlooked: the parent proxy must be started.

I'm using socks5/tor parent proxy, and have not tested squid/http. 

Here is my polipo config file:

```
daemonise = false
pidFile = /var/run/polipo/pid
logFile = /var/log/polipo/log
proxyAddress = 127.0.0.1
proxyPort = 8123
allowedClients = 127.0.0.1
socksParentProxy = "localhost:9050"
socksProxyType = socks5
```

Without starting a parent proxy (tor instance) on localhost:9050,
I get ERROR 504 just like you.



On Sun,  1 Aug 2021 18:31:27 +0000
John Helmert III <jchelmert3@posteo.net> wrote:

> How did you produce this? I can't seem to reproduce with the original
> PoC script. Running it, polipo outputs:
> 
> Empty DNS name.
> Host (unknown) lookup failed: empty name (22).
> 
> The script outputs:
> 
> HTTP/1.1 504 Host (unknown) lookup failed: empty name
> Connection: keep-alive
> Date: Sun, 01 Aug 2021 18:07:07 GMT
> Content-Type: text/html
> Content-Length: 515
> Expires: 0
> Cache-Control: no-cache
> Pragma: no-cache
> 
> <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
> <html><head>
> <title>Proxy error: 504 Host (unknown) lookup failed: empty name.</title>
> </head><body>
> <h1>504 Host (unknown) lookup failed: empty name</h1>
> <p>The following error occurred while trying to access <strong>http://</strong>:<br><br>
> <strong>504 Host (unknown) lookup failed: empty name</strong></p>
> <hr>Generated Sun, 01 Aug 2021 13:07:07 CDT by Polipo on <em>localhost:8123</em>.
> </body></html>
> 
> 
> Fixing the script to GET a real website shows a bunch of memory alignment
> issues, but no heap overflow as far as I can tell:
> 
> dns.c:1467:5: runtime error: store to misaligned address 0x7ffe1de13c69 for type 'short unsigned int', which requires 2 byte alignment
> 0x7ffe1de13c69: note: pointer points here
>  63 6f 6d  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  00 00 00 00 00
>               ^
> dns.c:1468:5: runtime error: store to misaligned address 0x7ffe1de13c6b for type 'short unsigned int', which requires 2 byte alignment
> 0x7ffe1de13c6b: note: pointer points here
>  6d  00 00 01 00 00 00 00 00  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00
>               ^
> dns.c:1554:5: runtime error: load of misaligned address 0x7ffe1de13b69 for type 'short unsigned int', which requires 2 byte alignment
> 0x7ffe1de13b69: note: pointer points here
>  63 6f 6d  00 00 01 00 01 c0 0c 00  01 00 01 00 00 fe a7 00  04 5d b8 d8 22 7f 00 00  50 3c e1 1d fe
>               ^
> dns.c:1555:5: runtime error: load of misaligned address 0x7ffe1de13b6b for type 'short unsigned int', which requires 2 byte alignment
> 0x7ffe1de13b6b: note: pointer points here
>  6d  00 00 01 00 01 c0 0c 00  01 00 01 00 00 fe a7 00  04 5d b8 d8 22 7f 00 00  50 3c e1 1d fe 7f 00
>               ^
> dns.c:1596:9: runtime error: load of misaligned address 0x7ffe1de13b6f for type 'short unsigned int', which requires 2 byte alignment
> 0x7ffe1de13b6f: note: pointer points here
>  00 01 c0 0c 00  01 00 01 00 00 fe a7 00  04 5d b8 d8 22 7f 00 00  50 3c e1 1d fe 7f 00 00  22 3d 00
>              ^
> dns.c:1596:9: runtime error: load of misaligned address 0x7ffe1de13b71 for type 'short unsigned int', which requires 2 byte alignment
> 0x7ffe1de13b71: note: pointer points here
>  c0 0c 00  01 00 01 00 00 fe a7 00  04 5d b8 d8 22 7f 00 00  50 3c e1 1d fe 7f 00 00  22 3d 00 00 40
>               ^
> dns.c:1596:9: runtime error: load of misaligned address 0x7ffe1de13b73 for type 'unsigned int', which requires 4 byte alignment
> 0x7ffe1de13b73: note: pointer points here
>  00  01 00 01 00 00 fe a7 00  04 5d b8 d8 22 7f 00 00  50 3c e1 1d fe 7f 00 00  22 3d 00 00 40 60 00
>               ^
> dns.c:1596:9: runtime error: load of misaligned address 0x7ffe1de13b77 for type 'short unsigned int', which requires 2 byte alignment
> 0x7ffe1de13b77: note: pointer points here
>  00 00 fe a7 00  04 5d b8 d8 22 7f 00 00  50 3c e1 1d fe 7f 00 00  22 3d 00 00 40 60 00 00  6b 3c e1
>              ^
