X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["561" "Sunday" "25" "April" "2021" "12:56:35" "+0200" "Gabriel Corona" "gabriel.corona@enst-bretagne.fr" nil "20" "[oss-security] Re: DNS rebinding vulnerability in npupnp" nil nil nil "4" nil nil (number mark "U       gabriel.coro Apr 25   20/561   " thread-indent "\"[oss-security] Re: DNS rebinding vulnerability in npupnp\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: DNS rebinding vulnerability in npupnp" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32467 invoked by uid 550); 25 Apr 2021 11:06:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30079 invoked from network); 25 Apr 2021 10:56:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:from:to:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EN2aqmoSSrgtoJPwXI0iqyvNT/NFxoOfas9xzLzLXTc=;
        b=ZCLbL/px5Kj7FEtjUDWNuw4s9ITKLpAsicth8H1JAaf6qfSblfUJZs56YyT7rFvZbp
         XbtcNVwnrkkEC9Xx9zizSAUIIGwEDHCs0UWRxrlhscVlbXKXx6pqPikDXN2dVGMi6wtx
         mSn8to9Two0f7/5Wvnwn1fnRiygl2A0YOfwgBYNw4Sp6sh6g9dEbSANeZ6Jg8D3einMj
         2xgA4hYKdHWpgWFamiBpAu2GD6ukRIp2385o+Yvltzo1/qEM69Wkn3fxS3KEZTboj3RX
         NIjoOHP5WnDJaD7rcbzksbzgTwJFuNPBUyzSUmw0KN7nvg4XBJ+0WQr5PXIoP1PtXREK
         p+iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:from:to:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EN2aqmoSSrgtoJPwXI0iqyvNT/NFxoOfas9xzLzLXTc=;
        b=ZkhnbrkTnLVqLOIpGG/9ksz3dQWhoAjciiZOE9xH0IzsxWGxLOJ6W2vyctDCTwGQ9k
         ausE6PP09qYsUwHJv4b0VxbJQmlK2rDl0KDrdzSK/b8YaTVq9/U5j29wiSz95hdbMxDt
         dQuFYRqaUlojXLYA1R1/FwbAqdDA2DtHY6ZJH2AI82XxRZKYVKqrfzjSSxP3MpdxnuDC
         9pscl62Y1ZfWIp1HGpXCqAp8ngtN0IZxN0/tqOjDj058D//6OhsCRF6gEFCmPctc0gLw
         07o+owenpX1nWHEj9+BDr3Zbg/zUd/vZavvDvGrSvdOR08ZkZfikLACD3iQ0cP4ocjK/
         VMhw==
X-Gm-Message-State: AOAM532Dh46e1eLLXFYaOfbbot0o4bChv3rxRQrN/ZHs3lpGyJdHzPJz
	Yd5pn/jOFg5yZh24/wma8GbVC7TAjegrkg==
X-Google-Smtp-Source: ABdhPJwv3neQnR7G4es2I+k22vlA0O59kfLqvnPAq96iMnMMkwvIiBupmKt5ITeieBRFmL68VGNUyg==
X-Received: by 2002:a05:6000:10f:: with SMTP id o15mr16670539wrx.98.1619348198631;
        Sun, 25 Apr 2021 03:56:38 -0700 (PDT)
Sender: Gabriel Corona <corona.gabriel@gmail.com>
From: Gabriel Corona <gabriel.corona@enst-bretagne.fr>
To: oss-security@lists.openwall.com
References: <729765b4-00fc-bf19-d0b0-0f3923f685b9@enst-bretagne.fr>
Message-ID: <787be56d-f920-3846-6a0e-82ce30be6c40@enst-bretagne.fr>
Date: Sun, 25 Apr 2021 12:56:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <729765b4-00fc-bf19-d0b0-0f3923f685b9@enst-bretagne.fr>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Re: DNS rebinding vulnerability in npupnp

Le 20/04/2021 à 09:54, Gabriel Corona a écrit :
> The server-part of npupnp, a library used to implement UUPnP clients and
> servers, is vulnerable to DNS rebinding attacks.
> 
> Impact: A remote web server can exploit this vulnerability to trick the
> user browser into triggering actions on the local UPnP services
> implemented using this library.
> 
> This is fixed in v4.1.4.
> 
> https://framagit.org/medoc92/npupnp
> https://www.lesbonscomptes.com/upmpdcli/npupnp-doc/libnpupnp.html
> 
> A CVE as been requested.
> 

This is CVE-2021-31718.

Gabriel

