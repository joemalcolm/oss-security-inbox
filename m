X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2092" "Wednesday" "5" "July" "2017" "10:50:34" "+0200" "Pali =?utf-8?B?Um9ow6Fy?=" "pali.rohar@gmail.com" "<20170705085034.GA2638@pali>" "58" "Re: [oss-security] systemd fails to parse user that should run service" "^Cc:" nil nil "7" "2017070508:50:34" "[oss-security] systemd fails to parse user that should run service" (number mark "        pali.rohar@g Jul  5   58/2092  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14019 invoked by uid 550); 5 Jul 2017 11:23:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12191 invoked from network); 5 Jul 2017 08:50:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=IIpNxZDE0yiJwwCGIOIS7QAeYXIFz+SOLmnP6J7A+Mo=;
        b=u4/P+6dYSCG1oYEJPSI+Ap6XSO5gEnysduZtywkv085yXUWbTNb4w0g02WOmMNwIR1
         DXN1uqddbTieCWouMb17BPhHEWk0yraC+MLK8/5W4qdsAXG8n+YfbZkPy+24CmwFZRkS
         bC+qsQv86tTb/HYnz9KBBdb0PO/tELVafLt3DW9G6aA2fviG5x+QfsvRfW7cp7gvtR3x
         lbGa8uASb/idhL1vjUjacs6Rc3mcP+JC5nzkO9bIZF4M/GAyLmYj3ylCclxV6mIC6Mt8
         604hUij6Iwi7P89/v1KwuupWLyJ2eZJ2uVabbaoIDUWxKH4fB9NObFqZL2uQbbfT4H3n
         MyNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=IIpNxZDE0yiJwwCGIOIS7QAeYXIFz+SOLmnP6J7A+Mo=;
        b=XK9zVlgcjmBvpdCXxHDR/6Av/MKeih2GhO9uaRhlk3cck9o+/ucIrvkJ3Vp3cNPdEX
         5E3Tn721MpbY79CkSNVsMq8Pgbvb6OsHUjkVOnVRm5JTizUXDZ5n1henLdkmPoBGzdEf
         H0qMk/Ut5I5/2K4eoh1khfGQHKGpkePMX/rBptKcNsWh6ElMDauOubskhN/VVXi3P7hM
         7XxKQmjR+kw3FoEb8vmUH4UjuDI0n6U6Bb8gtvJKS0TRG4tG/zfnqvaTrgxM+eP5f5GO
         Jwj7XuJtug04wiXAjyUjD0PHep7qv6qg6geudM+CLaHWwu2rdcPsHrouOxdGXwS/Kd+B
         Ap4g==
X-Gm-Message-State: AKS2vOwJSaSiY9Li49lpZiDhLAT2nKsiUyP+oOBqwXA+2gHgrkdcjFy0
	lnLSrt7EMdO7MrG8
X-Received: by 10.223.164.156 with SMTP id g28mr41054456wrb.105.1499244640433;
        Wed, 05 Jul 2017 01:50:40 -0700 (PDT)
Message-ID: <20170705085034.GA2638@pali>
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.23.1 (2014-03-12)
Cc: Daniel =?utf-8?Q?Skowro=C5=84ski?= <daniel@dsinf.net>
Date: Wed, 5 Jul 2017 10:50:34 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

On Sunday 02 July 2017 12:02 Daniel Skowroński wrote:
> Hi all,
> 
> Just wanted to bring attention to issue with systemd not doing what is
> expected when parsing User that should run service.
> When it fails to parse string starting with digit it fails back to root
> causing obvious threat to security.
> 
> See discussion with developer on github:
> https://github.com/systemd/systemd/issues/6237
> 
> Best,
> -Daniel Skowronski

Hi!

There are basically two problems:

1) In more Linux distributions useradd tool allow to create a new user
which starts with digit. Also according to POSIX such user name is a
valid. This means that valid user name (for some Linux distributions)
from /etc/passwd specified in systemd unit file results running service
as root user.

2) If user name specified in systemd unit file is syntactically correct
(according to systemd check) but user name does not exist then systemd
refuse to start that unit.

Which leads to problem that syntactically invalid user name (for
systemd) results in root user and syntactically valid non-existent user
name cause error.

Because check if user name is valid is different in systemd as specified
in POSIX and also different as in useradd tool supplied by some Linux
distributions, I see this as a security problem when processing invalid
input from configuration unit file.

Correct behaviour should be to throw error also when garbage (invalid
user name), according to internal systemd check, was specified. And not
start service under root user with high privileges.

Because of this I would suggest to ask for CVE identifier, so Linux
distributions can mitigate or decide how to handle this problem.

Linux distributions which follow POSIX standard when creating new users
are affected by this.

Please note that above bug tracker on github is locked for future
discussion, which means it is not possible to ask for more details or
continue discussion in upstream.

Which is really *bad* for security related problems.

What do you think, how should be this problem handled?

-- 
Pali Rohár
pali.rohar@gmail.com
