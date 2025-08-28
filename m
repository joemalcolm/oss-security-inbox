Received: (qmail 25683 invoked by uid 550); 28 Aug 2025 15:48:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26086 invoked from network); 28 Aug 2025 15:11:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=plone-org.20230601.gappssmtp.com; s=20230601; t=1756393864; x=1756998664; darn=lists.openwall.com;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Mzssd1uEqWso5B+N8c81DOn1eVqDUjsCUTdOVDqv70=;
        b=u6RipSe5EmtW2Ohm0o0c7ljZkTmBcL06/+OKhnVPo2DhgK5+eyQSrL8Eo601Bomm+L
         eEmM/bXatD6ZCs9VHHn39hIoPfsulcx89aYOAaMccgY5V3x0DML452nXT9gsj5W78O3I
         +GsyZptnt/V1Kt88SZ65mssx1x3WWpfdKGbzCh3x5o0lvFmyi8mtB6jrHegL2QIuDkma
         JexWny6BQhhzj/10LBkmK4U0XOEE2/srEi5C9xJgNP/CmwCiqZYoDEkTVkMdbPPUdAKW
         XB0terZj5ATubSegQ266aZCXYWx+iAFFkR1zS/YIFVo66H6qExHLZK7W0rqS3/wMSunv
         j1+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756393864; x=1756998664;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8Mzssd1uEqWso5B+N8c81DOn1eVqDUjsCUTdOVDqv70=;
        b=bXRDJG/xatDRM9uiQV0n085KQ4ttasR4nLXWwiMC2Yg50BUYN9bzXqRWRKLqjrFT9i
         Yv9zIdReEUcmdvnkCD7lypd2dPzAqqZuBwcP7Agp2plZ5f9TJHQpQf3XV6er/wlyz1FI
         ItEEgAjDdCNjCQ/CIdp2uILgTA1fSkoQUkHNd8hU7VmkcXToRpKjAYgc82Niz9prBK6N
         3T6fkzPNctDZn7QtfbgqtsDASvFB5vewxRyVi+yglOj7V2OcBbqKxu1XqcKitqESmIXc
         lxI/MCRO+LTDGLlh66zsR+u7O8vCuqJbnvvOaKhklEQVcnB3FlNyPHPBKhAxcTgm+XcH
         o0sw==
X-Gm-Message-State: AOJu0Yx0kz7beGJbKuVI5zv891mLguAq+zHGLbx0xUZfeBZiP/7XqPo5
	JantX0Xqz8NayScsEhxmszw6j5iZEDD4h+/ZKtZD9t2Pjpz6N/zTSmrhHm3IoJCPNT2XcDVTCAz
	ebdqR
X-Gm-Gg: ASbGncsT9wXk83r+9gNDqPl99WgUgWnivFBf/U+wZhOHY5E4xGR/IjPpq5z+/SawnMP
	3uSsvXTSF+sprGdq+fi1u1AwGljKT7HyjWhepV8XBg4KOmetQVdlLu0EYpR87iY0KcIaSA7iC+p
	7KTbs7qMXTjkgTe2xT7HxF3HvuRyuno1XqM/IdCabWc5ZgC4hLYR3LyrgQ5FPKCiRzlupFN9Dcr
	ncRIeY6LhGqfF8WmFrmN/9XDznKDcXOAXsjOvpBNkWHOLwzUB5Fxo0JJSAyjoC7veg8q7acwr0m
	pCeHMj70JwtCXoha7UUxt/D9C2h0hAUFF2IlH1w+yuLusskVP2ZuuDq1i2QS4t6YTOBwvwkHHNC
	pm/KussIyXa95uZSC9ScdkAgETV3Nh6BCtVSXwLoaq4g7iJrdp2H0s1cKHYevZ75RnMuijoddnB
	JLP9JuuUAx
X-Google-Smtp-Source: AGHT+IF8Dwlb0Rlj0/kExd4Ng0Oq0p+t0OAITVoxpnYRf5IEUGUlxRwhNB3FjXDnDefP9TD8WP9+LA==
X-Received: by 2002:a05:6000:178b:b0:3c9:a722:e189 with SMTP id ffacd0b85a97d-3c9a722e3e6mr10875310f8f.62.1756393864212;
        Thu, 28 Aug 2025 08:11:04 -0700 (PDT)
Message-ID: <b1209946-938c-4b87-8fae-df9212a064d3@plone.org>
Date: Thu, 28 Aug 2025 17:11:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
From: "Maurits van Rees (Plone)" <maurits@plone.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-58047: DoS in Volto (Plone CMS)

A vulnerability has been discovered in Volto, the default NodeJS 
frontend for the Plone CMS.

### Impact

When visiting a specific URL, an anonymous user could cause the NodeJS 
server part of Volto to quit with an error.

### Patches

The problem has been patched and the patch has been backported to Volto 
major versions down until 16. It is advised to upgrade to the latest 
patch release of your respective current major version:

* Volto 16: [16.34.0](https://github.com/plone/volto/releases/tag/16.34.0)
* Volto 17: [17.22.1](https://github.com/plone/volto/releases/tag/17.22.1)
* Volto 18: [18.24.0](https://github.com/plone/volto/releases/tag/18.24.0)
* Volto 19: 
[19.0.0-alpha4](https://github.com/plone/volto/releases/tag/19.0.0-alpha.4)

### Workarounds

Make sure your setup automatically restarts processes that quit with an 
error. This won't prevent a crash, but it minimises downtime.

### Report

The problem was discovered by FHNW, a client of Plone provider 
kitconcept, who shared it with the Plone Zope Security Team 
(security@plone.org).

### Github Advisory

The same information was published to GitHub in this 
[advisory](https://github.com/plone/volto/security/advisories/GHSA-xjhf-7833-3pm5).

Maurits van Rees
Plone/Zope Security Team



