X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1466" "Monday" "30" "October" "2017" "10:09:55" "-0400" "Michael Orlitzky" "michael@orlitzky.com" "<d9773cc8-16e8-e0f8-445b-023be2c835b4@orlitzky.com>" "33" "Re: [oss-security] Magento: Leaking of config file local.xml" "^Date:" nil nil "10" "2017103014:09:55" "[oss-security] Magento: Leaking of config file local.xml" (number mark "        michael@orli Oct 30   33/1466  " thread-indent "\"Re: [oss-security] Magento: Leaking of config file local.xml\"\n") "<20171030102422.15d1d9c2@pc1>" ("<20171030102422.15d1d9c2@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7983 invoked by uid 550); 30 Oct 2017 14:10:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7898 invoked from network); 30 Oct 2017 14:10:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1509372600; bh=bx3eThjYmi0HhXJkCsoepD6mO/+nVfRnjXHdiPu9tjg=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=CtwzBapmYUtD0pPGXYBKAn++tM3ac0b6sp+LUxTHtC5ozR8l7ld7zJfyCbfIqchYV
	 8qq+yvAz43FHBAmsLYoDDt+5/iJBJoJ8vTbmZIfEegV6s2w74OpRwK7mqdSkVbu0B/
	 PEjNjdVxI6uIqzbQMtmfagR2rCUW+kPWEItSqp0s=
References: <20171030102422.15d1d9c2@pc1>
Message-ID: <d9773cc8-16e8-e0f8-445b-023be2c835b4@orlitzky.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171030102422.15d1d9c2@pc1>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Date: Mon, 30 Oct 2017 10:09:55 -0400
From: Michael Orlitzky <michael@orlitzky.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Magento: Leaking of config file local.xml
To: oss-security@lists.openwall.com

On 10/30/2017 05:24 AM, Hanno Böck wrote:
> Magento is a web shop written in PHP.
> 
> Magento stores its configuration in a file local.xml, stored in the
> webroot under app/etc/local.xml. As it is an xml file by default a web
> server will not parse it in any way, but directly expose it to users.

Thanks for publicizing this, it's an ancient issue, see e.g.

https://tomrobertshaw.net/2012/11/magento-security-check-your-appetclocal-xml-file/

I think it may finally be fixed in the 2.x series of Magento which now
has a "pub" directory beside "app" in the tree. With DocumentRoot =
"pub", your local.xml should be safe.


> Magento protects against this by shipping an .htaccess file that blocks
> access to that directory. However that is not a sufficient
> protection. .htaccess files are specific to the Apache web server.

Indeed. And since you mentioned Drupal, they've done the same thing in
the past (search "code execution"):

https://www.drupal.org/forum/newsletters/security-advisories-for-drupal-core/2013-11-20/sa-core-2013-003-drupal-core

What's worse is that the Drupal status report will warn you about the
issue, but the "vulnerability check" that it does simply checks for the
existence of an .htaccess! So if you're running nginx and if you have
their impotent .htaccess file laying around, Drupal will tell you that
everything's OK.

(And of course, if you fix the issue properly, the status report will
tell you that you're vulnerable...)
