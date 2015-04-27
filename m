X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["658" "Monday" "27" "April" "2015" "21:08:44" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150427190844.GA10378@eldamar.local>" "21" "Re: [oss-security] WordPress 4.2.1 security  update - CVE please" nil nil nil "4" "2015042719:08:44" "[oss-security] WordPress 4.2.1 security update - CVE please" (number mark "        carnil@debia Apr 27   21/658   " thread-indent "\"Re: [oss-security] WordPress 4.2.1 security  update - CVE please\"\n") "<553E845E.4070503@redhat.com>" ("<553E845E.4070503@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11273 invoked by uid 550); 27 Apr 2015 19:08:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10228 invoked from network); 27 Apr 2015 19:08:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=K7ACF75WZOVkVwLiYKlOsZVjDcHeWaaFIXs/V4PiH0I=;
        b=n7ziRxEbrYMPDJFwp6MUrIOK81/fhltHSncoAOmyp+9rXsa3SkVDLSzjtbS7FSpO6Q
         XGDR7xDeZydeK6uCj26zXF4XpZQSg1Mfx0ZR7UEKk3nG8UzH0wTM7at7eZ6WgQ04QHr6
         sz38fU/KWQxEwD5L4ZleHNBDQRltN4bz3T3WB6M26mS50w139OUPD1GwoHztRQFQ2Cmd
         nCDVgwdEU0LtK/TBBtLvR5mdXGdAQQrwWjLr1SilssG76yVeMtJQpnAoz1iPU6FSoROO
         7LF/MeLvcMFNced+RmKfK3N1YZC6vXXgI0YgW0j9JNNQRU21Kj7W/90YdyilNMiXlnRm
         wESA==
X-Received: by 10.180.73.202 with SMTP id n10mr14232055wiv.0.1430161726203;
        Mon, 27 Apr 2015 12:08:46 -0700 (PDT)
Message-ID: <20150427190844.GA10378@eldamar.local>
References: <553E845E.4070503@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <553E845E.4070503@redhat.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: nacin@wordpress.org, Assign a CVE Identifier <cve-assign@mitre.org>
Date: Mon, 27 Apr 2015 21:08:44 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] WordPress 4.2.1 security  update - CVE please
To: oss-security@lists.openwall.com

Hi Kurt,

On Mon, Apr 27, 2015 at 12:47:58PM -0600, Kurt Seifried wrote:
> http://codex.wordpress.org/Version_4.2.1
> 
> Version 4.2.1 addressed a security issue.	For more information, see the
> release notes.
> 
> From the announcement post, WordPress 4.2.1 fixes a critical cross-site
> scripting (XSS) vulnerability, which could enable commenters to
> compromise a site.

Had requested CVEs for this in
http://www.openwall.com/lists/oss-security/2015/04/26/2 .

But there is as well a different stored XSS reported
http://klikki.fi/adv/wordpress2.html which seems to affect as well the
latest wordpress versions (not verified myself).

Regards,
Salvatore
