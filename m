X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["569" "Friday" "8" "January" "2016" "15:07:15" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160108140715.GA25718@eldamar.local>" "19" "[oss-security] CVE Request: WordPress: cross-site scripting vulnerability fixed in new 4.4.1 release" nil nil nil "1" "2016010814:07:15" "[oss-security] CVE Request: WordPress: cross-site scripting vulnerability fixed in new 4.4.1 release" (number mark "U       carnil@debia Jan  8   19/569   " thread-indent "\"[oss-security] CVE Request: WordPress: cross-site scripting vulnerability fixed in new 4.4.1 release\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18078 invoked by uid 550); 8 Jan 2016 14:07:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18060 invoked from network); 8 Jan 2016 14:07:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+TneQ6TsGwhz5T6BMYt5r+KWYDmSAq/lD6DBH8TmNlA=;
        b=zx+caz8xdwuIPR7eNxJCMRKh4pBgek3OT5wpYhdXyZNZf1Rg8iW0GSQZClGd+lRH08
         XqxuD3KRidsQ2rOhJgjVIPcmkr1DI6r+LdRdX/kP1LJamdOh0aS2rdpLXiSQV4koAjam
         kutfoXWZNL8GuUXz75BNoO1PWKbo+y5aVSgOzWc4SnMBoqVhZpV04KWVAaSIAzYVc76U
         61BHlzJoOzqXVaQSpyTlzwRLSiKhD9EfM1NNDpAlrkacPu8hUkO+CE0GWJmYf8fTkSwY
         KjU4L7sr4MwAdknvSY44ErRsC7TX6SsxbRdUh5Kd/Mmy+JScPcTPbyiel4PvBW/AmW7s
         83Ww==
X-Received: by 10.28.102.5 with SMTP id a5mr22291135wmc.85.1452262037741;
        Fri, 08 Jan 2016 06:07:17 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 8 Jan 2016 15:07:15 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160108140715.GA25718@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: WordPress: cross-site scripting vulnerability fixed in
 new 4.4.1 release

Hi

On 6th of January 2016, a new release of WordPress was posted,
https://wordpress.org/news/2016/01/wordpress-4-4-1-security-and-maintenance-release/

> WordPress versions 4.4 and earlier are affected by a cross-site
> scripting vulnerability that could allow a site to be compromised.
> This was reported by Crtc4L.

There is no reference to the fix, but the change seems to be

https://core.trac.wordpress.org/changeset/36185

Cf. as well https://twitter.com/brutelogic/status/685105483397619713

Can a CVE be assigned for this WordPress issue?

Regards,
Salvatore
