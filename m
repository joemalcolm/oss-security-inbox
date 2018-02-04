X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1399" "Sunday" "4" "February" "2018" "09:08:12" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20180204080812.GA12818@eldamar.local>" "35" "[oss-security] Anymail: CVE-2018-6596: timing attack on WEBHOOK_AUTHORIZATION secret" nil nil nil "2" "2018020408:08:12" "[oss-security] Anymail: CVE-2018-6596: timing attack on WEBHOOK_AUTHORIZATION secret" (number mark "U       carnil@debia Feb  4   35/1399  " thread-indent "\"[oss-security] Anymail: CVE-2018-6596: timing attack on WEBHOOK_AUTHORIZATION secret\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7690 invoked by uid 550); 4 Feb 2018 08:08:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7666 invoked from network); 4 Feb 2018 08:08:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Zt5YPZ6XHlSy8uE2+Sg5jSItlR0YPXt4ATBeZZsEYVY=;
        b=lMLpsf7Krw+TI9xhfFq5CvBRTJLHc0akacUGUEhg6uiUkn+nPSgCYRfe5q5rcXgxu8
         RxDaMlRI7jtDQyGA0GYPmtsBUsO8OLzFA10C3uhc/e7k6mRn0CtnrLZtYtczR2FIkbsY
         el8N0TalmFFvUeZScGLRgHTPN70oahY4IIX40Hqx5Wrl1qinsPrWEDbCOorCz7t8Xtgc
         A+Fq6EklKLsaucZ9bojjxD+2cugT5PK0oWSsZY4ok9n65m7o9+UWTM4MIsetNqffHLMi
         ZBLuChgWcNIa00Tq4aleQQnEUrBVgmvFoaGCM+Yannxnm2Ixnt1AcUt+VvAOM3K7P0Vb
         96wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=Zt5YPZ6XHlSy8uE2+Sg5jSItlR0YPXt4ATBeZZsEYVY=;
        b=Nxwex7yIWuhbB64GOT822itK2+8KPTKSI4Ps7R6S3lVD1hPvfXpxtf4t8MkDSvJVpT
         9Zs17w1uSVhTXlYoaQbAvkmlCAduq5XHzojAq0o9nZkeg7WMWW4G+jrjSXpEeIfyvSGf
         PdzFZ74fSiOfgE6aE/goUToJENYJ3mtMo8nMZr686soAvMqnZ7ybR2as4TZg5Vo7ea41
         UrQo1AteQJIZ6jcWBk2Yj7O9+GBFenEh6NpukXKWKDWLs1WGeQJLQstbaO0eHBbIS+AC
         smoVt0GS4JhTV1ac9eMm5qAminz4rDeWC1gGHLLn9nGI8ARvgy6fPxkIiMYABxI9S8xN
         g+mw==
X-Gm-Message-State: APf1xPC2s8fVt5sp1+zeehH31HgL1nAe0klMZ1j9xVBJzOhZ5SWF0Z+R
	2NVs+aGoUfHCTIRInwMMxEEyYg==
X-Google-Smtp-Source: AH8x224SnsBBQe22NVexfvYlY/CY3RCh0TtVD/BB8D1NoziLN2tcMr2zwSg5EKEJIJnWaH7lrHNk1Q==
X-Received: by 10.28.180.4 with SMTP id d4mr5339354wmf.13.1517731694560;
        Sun, 04 Feb 2018 00:08:14 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 4 Feb 2018 09:08:12 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20180204080812.GA12818@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.3 (2018-01-21)
Subject: [oss-security] Anymail: CVE-2018-6596: timing attack on WEBHOOK_AUTHORIZATION secret

Hi

MITRE has assigned CVE-2018-6596 for the following issue in Anymail, a
Django email backends for multiple ESPs:

https://github.com/anymail/django-anymail/releases/tag/v1.2.1
> Prevent timing attack on WEBHOOK_AUTHORIZATION secret
> 
> If you are using Anymail's tracking webhooks, you should upgrade to
> this release, and you may want to rotate to a new
> WEBHOOK_AUTHORIZATION shared secret (see docs). You should
> definitely change your webhook auth if your logs indicate attempted
> exploit.
> 
> More information
> 
> Anymail's webhook validation was vulnerable to a timing attack. An
> attacker could have used this to obtain your WEBHOOK_AUTHORIZATION
> shared secret, potentially allowing them to post fabricated or
> malicious email tracking events to your app.
> 
> There have not been any reports of attempted exploit. (The
> vulnerability was discovered through code review.) Attempts would be
> visible in HTTP logs as a very large number of 400 responses on
> Anymail's webhook urls (by default "/anymail/esp_name/tracking/"),
> and in Python error monitoring as a very large number of
> AnymailWebhookValidationFailure exceptions.

There is the upstream fix for v1.3
https://github.com/anymail/django-anymail/commit/db586ede1fbb41dce21310ea28ae15a1cf1286c5
and v1.2.1
https://github.com/anymail/django-anymail/commit/c07998304b4a31df4c61deddcb03d3607a04691b

Regards,
Salvatore
