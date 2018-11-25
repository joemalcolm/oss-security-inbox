X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1162" "Sunday" "25" "November" "2018" "14:30:06" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20181125133006.GA3680@eldamar.local>" "32" "Re: [oss-security] PHP imap_open() script injection" "^Date:" nil nil "11" "2018112513:30:06" "[oss-security] PHP imap_open() script injection" (number mark "        carnil@debia Nov 25   32/1162  " thread-indent "\"Re: [oss-security] PHP imap_open() script injection\"\n") "<20181122210214.240912af@computer>" ("<20181122210214.240912af@computer>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18036 invoked by uid 550); 25 Nov 2018 13:30:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18015 invoked from network); 25 Nov 2018 13:30:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=WgYi5BKw6+VgoEoX1TJYy4FvixCq/jpjDB835hIyMIw=;
        b=WPfvZ0Ygir6Yd+2UjZXD47VJR5/HzOiyKlwZEBT6mURRjp8rziVVTKl7moFZfRimGC
         +O5iDmWTcD98F69UHepULyEprHz9HxbGdlsNPhfqU8KvxeunKB+Fkm/U1E+VUeWp+QKu
         z9mcGoV1uoxnyVJKgPtmzaxWP6+neahKk7ldXlss41YRmCicFFM+8lKm1bzL/welpZc4
         DBQg2Z9A3TXZolLf5huTNEOoeR5Lr1Ag5cEvDxMJ+RMnia76VJIrM4xOjixQVZqt6u+A
         I/6doqxla8U1dugkepPHaNec746HO97lByV16gPHcWlw8aqJ3OBKC8V7IhwCXTSAmbTn
         l6+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=WgYi5BKw6+VgoEoX1TJYy4FvixCq/jpjDB835hIyMIw=;
        b=LBR9X/cytED3MwEybT8GAEGJP8ukIXPsCbcP+CjiDiSNS/6WEdHgGYzkN417fO+RY3
         acksehTyg0FvP19nTV912mefydn5ct532hUABkEKZS70IwYH6UC+1MGxOZT3RDUMiwMR
         uaFKiWQZWAEFMaE+E9Zsxf1jtTYnr8d/YH8osud4aAnYQkhh6JmvdooVEj/Bdzgg+R4Z
         sQLN2lyDptQ1DEGyM1Qra1n6GLBC+xrOJsSSrdKmjQQjTAkuUuouTtlw2cOzTxe+m4R1
         uud6dXrfvbFCHhJv7Iz7SLz4eH1mgrv4sjw4RFQ+11Bdyv+0Q/vRbOn3oN7HYdYLLq11
         ahHg==
X-Gm-Message-State: AA+aEWZ9YJ1v8hec8ZSgG08IpinazoYannej/XfPtbUWwoqaJ/X481Yp
	TZhh7aM405X2+ikvfHZihcwshFTHdTs=
X-Google-Smtp-Source: AFSGD/WwR7C8Oo6s5GTD6MxwtDP91/Yt2dlyGfZ4VxSudw2UySZ9FalVU82OkIxLaNAiDS3Qxr8JZw==
X-Received: by 2002:a50:8951:: with SMTP id f17mr19213281edf.130.1543152608807;
        Sun, 25 Nov 2018 05:30:08 -0800 (PST)
Message-ID: <20181125133006.GA3680@eldamar.local>
References: <20181122210214.240912af@computer>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20181122210214.240912af@computer>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Sun, 25 Nov 2018 14:30:06 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] PHP imap_open() script injection
To: oss-security@lists.openwall.com

Hi,

On Thu, Nov 22, 2018 at 09:02:14PM +0100, Hanno Böck wrote:
> Hi,
> 
> This was apparently posted on some russian forum recently and then
> re-posted to github:
> https://antichat.com/threads/463395/#post-4254681
> https://github.com/Bo0oM/PHP_imap_open_exploit/blob/master/exploit.php
> 
> PoC code:
> $server = "x -oProxyCommand=echo\tZWNobyAnMTIzNDU2Nzg5MCc+L3RtcC90ZXN0MDAwMQo=|base64\t-d|sh}";
> imap_open('{'.$server.':143/imap}INBOX', '', '') or die("\n\nError: ".imap_last_error());
> 
> It's pretty self explaining, it seems imap_open() will pass things to
> ssh and this is vulnerable to a shell injection.
> 
> Impact would be mostly relevant if someone has some imap functionality
> where a user can define a custom imap server. (Though it might also be
> used as a bypass for environments where exec() and similar functions
> are restricted.)
> 
> I reported it to upstream PHP a few days ago, it was closed as a
> duplicate, so it seems they already knew about it. It's unfixed in
> current versions.

CVE-2018-19518 has been assigned by MITRE for this issue.

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-19518

Regards,
Salvatore
