X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["869" "Thursday" "27" "August" "2015" "08:29:38" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150827062938.GA32721@lorien.valinor.li>" "23" "Re: [oss-security] CVEs requests for Drupal Core (SA-CORE-2015-003)" nil nil nil "8" "2015082706:29:38" "[oss-security] CVEs requests for Drupal Core (SA-CORE-2015-003)" (number mark "U       carnil@debia Aug 27   23/869   " thread-indent "\"Re: [oss-security] CVEs requests for Drupal Core (SA-CORE-2015-003)\"\n") "<CAMYtjAqji6gbnMywDQa0-P5sFTNYG4PBxfTitT8Fxw7JRznf0Q@mail.gmail.com>" ("<CAMYtjAqji6gbnMywDQa0-P5sFTNYG4PBxfTitT8Fxw7JRznf0Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30047 invoked by uid 550); 27 Aug 2015 06:29:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30027 invoked from network); 27 Aug 2015 06:29:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=TG7EL+R9A6sLvp3BpC8Q2br/fvOYpRwdqo9a8r1gvMg=;
        b=V0+7cVF4STVdZvmZhwpjHxUgDQbMsXLInK5+LhnycJqqtRZMh+KETSFnt6wxd46skK
         +X5cBQoM0BwoZS6UrOni4sEc7rPxedsGYJ4tt9yupSmLqh5uNh0v4ZtOD60x4HeyvEHY
         +i0ebvsoB/YUjD+bDQ27XnmOktfOLesfhd8BuuLX5AS5q0x6WaMbirtYLWCX/syU+c0l
         NN6m/rBQeLoNUvx4z0HvP/RD965qyGFMn8g7LHohp0qS0wolN6B3yeAHa56V14ukfwLk
         RyOEDRLKINiG9iLAbO8rH+l8V+nVvNyyCMtRarZ1u6hdmDMTV/DxiMjTNdC9CGk72YWh
         gJ1Q==
X-Received: by 10.194.88.102 with SMTP id bf6mr2405198wjb.99.1440656980469;
        Wed, 26 Aug 2015 23:29:40 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 27 Aug 2015 08:29:38 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Drupal Security Team <security@drupal.org>,
	CVE Assignments MITRE <cve-assign@mitre.org>
Message-ID: <20150827062938.GA32721@lorien.valinor.li>
References: <CAMYtjAqji6gbnMywDQa0-P5sFTNYG4PBxfTitT8Fxw7JRznf0Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMYtjAqji6gbnMywDQa0-P5sFTNYG4PBxfTitT8Fxw7JRznf0Q@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] CVEs requests for Drupal Core (SA-CORE-2015-003)

Hi Pere

On Fri, Aug 21, 2015 at 07:53:29PM +0200, Pere Orga wrote:
> Please can I have CVE IDs assigned to the following vulnerabilities:
> 
> Cross-site Scripting - Ajax system - Drupal 7
> Cross-site Scripting - Autocomplete system - Drupal 6 and 7
> SQL Injection - Database API - Drupal 7
> Cross-site Request Forgery - Form API - Drupal 6 and 7
> Information Disclosure in Menu Links - Access system - Drupal 6 and 7
> 
> See https://www.drupal.org/SA-CORE-2015-003 for details.

For reference: Looks like these five CVEs were assigned:

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-6658
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-6659
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-6660
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-6661
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-6665

Regards,
Salvatore
