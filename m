X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["391" "Wednesday" "28" "July" "2021" "08:28:53" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" nil "11" "Re: [oss-security] Prosody XMPP server advisory 2021-07-22 (Remote Information Disclosure) (CVE Request)" "^Cc:" nil nil "7" nil nil (number mark "        carnil@debia Jul 28   11/391   " thread-indent "\"Re: [oss-security] Prosody XMPP server advisory 2021-07-22 (Remote Information Disclosure) (CVE Request)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Prosody XMPP server advisory 2021-07-22 (Remote Information Disclosure) (CVE Request)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29836 invoked by uid 550); 28 Jul 2021 06:29:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29810 invoked from network); 28 Jul 2021 06:29:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=s5hxBtHd5tI6zJt6oeJ9TMylbVfkLA2cFd1zLBEYiSE=;
        b=ZtB5v5CaR1xjQZCwKkFHm6WX50bGMGNlIps/mDRgqNUaq69jIOmosqoNPhszCd939o
         0A9zmin22ANsJ3fTZ5UaqMHG1N8WratXQzZLGKfnJ42yKnt6m0BpYV0ocLNOHBIHiL/V
         HWif82RkSFEjj3hNpJWzakDNCaO/9CHqkG38xXjTGFvmNk+FO9vcLdG81dtxe/5QKUNA
         xYB1bYGg+A/X3lI/GrmrMFe8VoQFFgekqGYMkG3D33Mhkk8/SKEj2Asd+ycKruC3PnIO
         1qZ8nL+SBw9wJdc+t8K9xwZxI6m60MEbtLBpkEck038ALhiQOoOwNgRy0S5n5tEXLmd8
         8KXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=s5hxBtHd5tI6zJt6oeJ9TMylbVfkLA2cFd1zLBEYiSE=;
        b=Ue8OsCKxmxZLkE1e+iVirjCAF2+f59mv5SFUzTzf8H/+N6nWhfqKX/oBBwVFQB3LBd
         iLVW7FyYZB9Gmp4XqEYpNj8i5PuFtbeRrD8Zkt4LzG7baxPpPCA26eWL7ZtJQLyAtelF
         UQUIrIl71yV022GuuT1E6xGUy+t+oVyAMiZdSQ+8tGXjlt+N1YsFkDDiCDbMmWXgyU1+
         l27i945EBSHrA9FAuHBBGce4b396Pgr3P7Bx3WQpPKfP413AXbkGgKdzPHR9U1zrypYG
         fnaXgde36rSOk1pMMZCs1uKJ1+2jSq1350kyPijgP0AFJ5rChSvy7d0yqLWQYpugm4pS
         7NgA==
X-Gm-Message-State: AOAM531R+UD9/33CNxT1tEO+91eQmVuMh3tY2J2luO6+/S/sAUaGzqno
	E6r4WkGp39J4oh+E+a7bp1U=
X-Google-Smtp-Source: ABdhPJxJVOUrcKHl+WorYlOp4Iita78wcODsaJKmr6mGEycgiO7aojT2yft5FfgZvkQ4i9Ybv9boSQ==
X-Received: by 2002:a05:600c:4304:: with SMTP id p4mr25569140wme.93.1627453734765;
        Tue, 27 Jul 2021 23:28:54 -0700 (PDT)
Message-ID: <YQD5JUAfS954qxkQ@eldamar.lan>
References: <3576736.366f73iyps@sinistra>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3576736.366f73iyps@sinistra>
Cc: developers@prosody.im
Date: Wed, 28 Jul 2021 08:28:53 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Prosody XMPP server advisory 2021-07-22 (Remote
 Information Disclosure) (CVE Request)
To: oss-security@lists.openwall.com

Hi Jonas,

On Thu, Jul 22, 2021 at 05:03:36PM +0200, Jonas Schäfer wrote:
> (NB: [1] suggested that posting to this list is still an acceptable way to 
> request a CVE, especially if disclosure should happen immediately. Please let 
> me know if that's not going to work, then I'll fill out the form.)

Can you request a CVE directly through https://cveform.mitre.org/ ?

Regards,
Salvatore
