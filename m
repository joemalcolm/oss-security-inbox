X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["745" "Wednesday" "16" "November" "2016" "20:33:56" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161116193356.jmopa3xpg6yeg3eq@eldamar.local>" "23" "[oss-security] CVE Request: teeworlds: possible remote code execution on teeworlds client" nil nil nil "11" "2016111619:33:56" "[oss-security] CVE Request: teeworlds: possible remote code execution on teeworlds client" (number mark "U       carnil@debia Nov 16   23/745   " thread-indent "\"[oss-security] CVE Request: teeworlds: possible remote code execution on teeworlds client\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7226 invoked by uid 550); 16 Nov 2016 19:34:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7208 invoked from network); 16 Nov 2016 19:34:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=dUyxMJLGy9xRuIhwt3uAINjrppRGPRK6K7Z6gMi9qxM=;
        b=Ln4T9izgRttW7bYqiRMERLyeui2/7CdWM8Mk/qNwBvgSd2rNeZY/b/HG/+Jhzd1VWo
         dZC1b2icEO3d6AcqYWVDC8cY/XjrK6wctja8lGjFaNCDuaYZ1mx1U43y+m7vDLk8ezFT
         DdicqotRw1LxuIAviJ2fJgW2WfV1sNWXTomJJ+a1iokQKDUPSew8szGxTl59UAuMVu62
         KHxzhcyTxLuoo1kb020SagsMzMwRGfAubtNkQvSgJLLSipyINUNpFb4O609HMNTXJpHe
         IdOHbWUNQhasKjnjcW64BZnhU60AV9jg3Vw/hKRW97+VyZMwkrCOXODPC5Qxa75INkrh
         Ofow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=dUyxMJLGy9xRuIhwt3uAINjrppRGPRK6K7Z6gMi9qxM=;
        b=LnkrupVHEg9OiVUe8bDDjb9l3gNPd2M54wPayfdO4dIAqWT5/XbYjXQpmWXRLZKrJZ
         c6pvI5jfIt351Q4m87b3DeXpBjIl4zUDIxMDuOWKYH9poTKiiFz3ak6Z0WlVFbzSr+wA
         OIzOC7TZKlBtTbN5rMehmGoEIhibNeovyypKsZoqtCTXHgwkn5s8ZXL0130YU3IcsssK
         nfNlw/qT/Bd8F4e3T12CBg0lF2ya9QMHGMyI6h/UgoDSvuVtgTgQDo5lQq4wpEYrp4ne
         /ZPE4F/jFXym88F+lg0q9E/F0ax6qWscAa04YvbOv+qB88O3tzG7Pk99SKvoCEjL6Y44
         87jw==
X-Gm-Message-State: ABUngvdupvFPxepHrkDqs6Xbd0Ro/5bIIGDSDJr7wWuSYIGpwXTp7OhRmpiWl+X8wqRYfg==
X-Received: by 10.194.108.10 with SMTP id hg10mr3804637wjb.58.1479324842993;
        Wed, 16 Nov 2016 11:34:02 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 16 Nov 2016 20:33:56 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20161116193356.jmopa3xpg6yeg3eq@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161104 (1.7.1)
Subject: [oss-security] CVE Request: teeworlds: possible remote code execution on teeworlds
 client

Hi

teeworlds, a online multi-player platform 2D shooter, released a new
upstream version 0.6.4 stating the following in the news:

> 0.6.4 released - another security fix
> (posted by: heinrich5991) | 2016-11-13
> As with the 0.6.3 release, a reported security vulnerability motivated
> this release: This time, the security vulnerability is worse, attacker
> controlled memory-writes and possibly arbitrary code execution on the
> client, abusable by any server the client joins.

https://www.teeworlds.com/?page=news&id=12086

Upstream fix:
https://github.com/teeworlds/teeworlds/commit/ff254722a2683867fcb3e67569ffd36226c4bc62

Bug report in Debian: https://bugs.debian.org/844546

Could you assign a CVE for this issue?

Regards,
Salvatore
