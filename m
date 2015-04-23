X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1021" "Thursday" "23" "April" "2015" "18:36:09" "+0200" "Sven Kieske" "svenkieske@gmail.com" "<55391F79.8030809@gmail.com>" "35" "Re: [oss-security] tlsdate havoc ahead - default host randomizes tls timestamps" nil nil nil "4" "2015042316:36:09" "[oss-security] tlsdate havoc ahead - default host randomizes tls timestamps" (number mark "        svenkieske@g Apr 23   35/1021  " thread-indent "\"Re: [oss-security] tlsdate havoc ahead - default host randomizes tls timestamps\"\n") "<20150423173748.2c2a53d2@pc1.fritz.box>" ("<20150423173748.2c2a53d2@pc1.fritz.box>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15847 invoked by uid 550); 23 Apr 2015 16:36:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15826 invoked from network); 23 Apr 2015 16:36:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=ANcq5nJx8LaPQ3GElOEK2SgBqxs0U5bGrL0V65cDV+U=;
        b=UkxTADPkj23U6UfvYS9Tj8BsBUXCgkCNN1yQueLfzoANZrwj3b2Bx6lbd4g8o0KgVC
         5Kv3AESWqbB1qkftAkmfzzm5IjtP9Rf7Uc6rc0P4RCWkWu0q/s7yZG+Jme3zlP5DGWih
         p+eyfvrbnszKheRms4ygTkuAIWULy564jZsARlVpH7CnJp2WxbCoD06Rv6v8Yo8VwTL/
         kWi5yy+NKJXNHfKJDSJCucskzmmWdOnIqAYl5fhHLt5XFbSKUa+iDZWxPqJDaOiPsmAk
         8LC/qtsCeRoQE60W9Z9Xo5k68eONAY0razUkfZgt+7DkhrS2npYQ2Yj+VATAbOhqmbCJ
         +TKg==
X-Received: by 10.194.9.161 with SMTP id a1mr7142198wjb.39.1429806977579;
        Thu, 23 Apr 2015 09:36:17 -0700 (PDT)
Message-ID: <55391F79.8030809@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <20150423173748.2c2a53d2@pc1.fritz.box>
In-Reply-To: <20150423173748.2c2a53d2@pc1.fritz.box>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Thu, 23 Apr 2015 18:36:09 +0200
From: Sven Kieske <svenkieske@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] tlsdate havoc ahead - default host randomizes
 tls timestamps
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

This shows imho
that tlsdate is also not a very good idea.

I also don't get why it was invented, you jump from:

"hey our old timekeeping protocol
is totally insecure"
to:
"let's use this random protocol
which was never designed for timekeeping
but at least it's secure"

turns out this does not work.

kind regards

Sven

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQGcBAEBCAAGBQJVOR94AAoJEAq0kGAWDrqlE3UMAJkIXR2V4ezhqFXQZ2CjaAlp
EvI4CQ5ax5769bAtX+rYbMK0/4xJZple6vO60miaWJjzRxXl8i+twyZgixTyDgpy
wvvDJOzHX0EVlCg04HhXOREdSCtKovtiwZAL51qXYiIVgX8MbvZh1lLGrEOmak5x
l4e26PgO7HVP+8J/FVXVXMB/Zge8Zz8agGM/klaqxiQKSvhfiy+w+kLsFNoXsQa0
v1JyQCGkRFuDRfGryOfgQk2f5wouby59aCHroIx0eV+BWR1mDnD8y/fksgzdMZWX
4/Llo+xzrGDmNwyN0X7t9I55kvceN+DcKrtQPaBiHUAJoyixAh9OqTjQnq3CGDw5
CfaIrJnQzJcrhmHtP8hmbiG93JyAOCnirwuCJUiam1db7nCcGiqhcavz6vymD1e3
UVbLX1wN74EzlFidOed8vmk3IzGKe7D4SPysW+WLIuYaOiqryYd1eKd38rZ+U/dz
8NqEAkEYbTw7OO2EzmqzQ0KEn/1XgXrNE5bPEXzZUQ==
=bmuJ
-----END PGP SIGNATURE-----
