X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1062" "Saturday" "23" "April" "2016" "17:03:50" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160423150350.GA28424@eldamar.local>" "36" "[oss-security] CVE Request: Roundcube: XSS issue in SVG image handling and protection for download urs against CSRF" nil nil nil "4" "2016042315:03:50" "[oss-security] CVE Request: Roundcube: XSS issue in SVG image handling and protection for download urs against CSRF" (number mark "U       carnil@debia Apr 23   36/1062  " thread-indent "\"[oss-security] CVE Request: Roundcube: XSS issue in SVG image handling and protection for download urs against CSRF\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20031 invoked by uid 550); 23 Apr 2016 15:04:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20013 invoked from network); 23 Apr 2016 15:04:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+fq/FiimXK1gxmRAZ3Fi7mj2djNk43no+5TRA/DF9iw=;
        b=tZ6JWuk/lZOdSjzhwnxLHYfW4rxeTKIwcoIIP+U81xzgGWosmGEeaiWmoF37LpCk4q
         2rS2m3HzsdJwBVMCSRl2/8nHvn43YeADkErX9u2jURkrCeRm7BI8aiPfRlSX1nliPAZl
         m/lFEt530HbyaluwVO2sRNCi0qDQoFk7v+/YyJ6yLzc9MFew8bMbPX/Y03/MDS0CUPOX
         vKeIl5qHyUw8ogp5xtLcRyLY03Ez9BhZVOb0rZPIq0N9ilE80Sz2HOqPTrtEwGmsn0aU
         FVJqRK0FjKDpgDMGcdM8ImT6F1hB9MrFsIIaqba+jOsTVE9sj803Gtdb6mXTkUFPAiYU
         EG2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=+fq/FiimXK1gxmRAZ3Fi7mj2djNk43no+5TRA/DF9iw=;
        b=Notxsfni7ZIQDJpOr+iLmNxSlWo5RzZ387FZ8SPBKGsIMCp3KjcWkMN9gZA4QC8jyF
         kjQKR4Typkr96qSmCzyEViD1nZ0+XnZYNltMhDgmEqgJZQRr4leAJrCEGNmoe9VYc0VO
         oTXtosAlYdPcl+z7C8Zh673LTWs+BJYD7m00hi78WhPTqjso+TcaWRa52tGrnONXXXSt
         dEIFkFX9XbncwBawPU1Q/4Sw+HvnzHNaFQGc7/9FnCYdgGqvPOueqaXQTyHWfyXrlKCE
         QSzJ4lJeRHzPA8F2KfGIP6y1ZMNiIuUmTfrqWOjy6K+ZuxGEX3ZLJVORb1VFqKkUlNGZ
         nuiw==
X-Gm-Message-State: AOPr4FXWHTLcpwt/SwRpLcGh/y+TM5xYbxy31peNrqm3EZddXPQgHUZCUDcl8zSE61wdMw==
X-Received: by 10.194.3.105 with SMTP id b9mr27225711wjb.140.1461423833651;
        Sat, 23 Apr 2016 08:03:53 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 23 Apr 2016 17:03:50 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160423150350.GA28424@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: Roundcube: XSS issue in SVG image handling and
 protection for download urs against CSRF

Hi

Roundcube recently released new versions:

https://github.com/roundcube/roundcubemail/wiki/Changelog

There are at least the following two fixes:

Fix XSS issue in SVG images handling (#4949):
---------------------------------------------

Upstream issue:
  https://github.com/roundcube/roundcubemail/issues/4949

Fix for master branch:
  https://github.com/roundcube/roundcubemail/commit/40d7342dd9c9bd2a1d613edc848ed95a4d71aa18

Fix for 1.1 branch:
  https://github.com/roundcube/roundcubemail/commit/7bbefdb63b12e2344cf1cb87aeb6e3933b4063e0

Protect download urls against CSRF using unique request tokens (#4957):
-----------------------------------------------------------------------

Upstrema issue:
  https://github.com/roundcube/roundcubemail/issues/4957

Fix for master branch:
  https://github.com/roundcube/roundcubemail/commit/4a408843b0ef816daf70a472a02b78cd6073a4d5

Fix for the 1.1 brach:
  https://github.com/roundcube/roundcubemail/commit/699af1e5206ed9114322adaa3c25c1c969640a53

Could you assign CVEs for those issues?

Regards,
Salvatore
