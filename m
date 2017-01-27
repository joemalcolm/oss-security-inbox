X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1104" "Friday" "27" "January" "2017" "07:13:04" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170127061304.GA12270@lorien.valinor.li>" "29" "[oss-security] CVE Request: Wordpress: 4.7.2 security release: unauthorized bypass, SQL injection, cross-site scripting issues" nil nil nil "1" "2017012706:13:04" "[oss-security] CVE Request: Wordpress: 4.7.2 security release: unauthorized bypass, SQL injection, cross-site scripting issues" (number mark "U       carnil@debia Jan 27   29/1104  " thread-indent "\"[oss-security] CVE Request: Wordpress: 4.7.2 security release: unauthorized bypass, SQL injection, cross-site scripting issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26101 invoked by uid 550); 27 Jan 2017 06:13:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26077 invoked from network); 27 Jan 2017 06:13:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=FIAgTNxcdrm4YLxPZI5ZDYK2IML1c3IdWABvKr5v7mc=;
        b=IwGiqx1VQ+gcj/ipaBtK5RrIffXxbvMEXCM3GFTyOH2gNuapWYLmWVxXmfuE5h9KL/
         xymL8vnGxm6MWGbRw/2bxKxxySG9WXccG22pOWLbDc3iV6ePgMYXbKaks2QAW+HgO9Xz
         5HeSkxWht5wPlhGC8ZcT3YG4ecP/ouDu94TkkHYIVMsZePfJ4nZ3nn1Uo9T30bey/B4D
         yqMiig/HW43J0WyMUoz1x3yLTmKJpgy0SEx4m/XvfHsyyolSXfVDtoD3nPAA4MNviIcz
         4W0WcQP/wISvZH082VjHkwvIdvxpQEyhLOkvklcRwudcczPnle97+xvIqrUVQYLHtIKa
         TY8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent;
        bh=FIAgTNxcdrm4YLxPZI5ZDYK2IML1c3IdWABvKr5v7mc=;
        b=WyLo0yn51ChajdHLCdbFmTNKpcgnrdbrF+xxNSZAipmWv7zDvKcKY8uPtLtS8YcRf1
         p6Nx14Ok0JfeevfQ8vi+FJSw9ErcM3JmmbAS0YHH+LL4ItJK+Wo7NRQFrhp5+iT/rHX+
         I7zpKr0bSNyBHDvnnFC/RKSMKhJ6M1iqjOfjwuEybfknaN54fXwE0rocYdVwLnHZZ4n/
         nXCk7YyFjnP96m4AqxI0No7bsjReVEDLZXt45YJER4yBubrU/KpH7Bp5G2vtdDRtVylC
         rTCPcJfabJzoEHzlfZfwrxR/5s0ZPdQRLbYdef9Fh5WsYpyacCwoKB3WydZTAp09bjSs
         YhEQ==
X-Gm-Message-State: AIkVDXJ45G/NYIKd/mXizw7RYoP5hIzGCCwcp96oMliaM3eO0PuoY/M/7scXddKOnY6anA==
X-Received: by 10.107.18.12 with SMTP id a12mr6980847ioj.155.1485497586278;
        Thu, 26 Jan 2017 22:13:06 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 27 Jan 2017 07:13:04 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170127061304.GA12270@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE Request: Wordpress: 4.7.2 security release: unauthorized bypass,
 SQL injection, cross-site scripting issues

Hi

Wordpress has released 4.7.2 as security release. Quoting from the
advisory there seem to be three issues fixed (full quoting for the
list archives):

WordPress 4.7.2 is now available. This is a security release for all previous
versions and we strongly encourage you to update your sites immediately.

WordPress versions 4.7.1 and earlier are affected by three security issues:

 1/ The user interface for assigning taxonomy terms in Press This is shown to
users who do not have permissions to use it. Reported by David Herrera of Alley
Interactive.

 2/ WP_Query is vulnerable to a SQL injection (SQLi) when passing unsafe data.
WordPress core is not directly vulnerable to this issue, but we’ve added
hardening to prevent plugins and themes from accidentally causing a
vulnerability. Reported by Mo Jangda (batmoo).

 3/ A cross-site scripting (XSS) vulnerability was discovered in the posts list
table. Reported by Ian Dunn of the WordPress Security Team.

https://wordpress.org/news/2017/01/wordpress-4-7-2-security-release/

Could you please assign CVEs for those issues?

Regards,
Salvatore
