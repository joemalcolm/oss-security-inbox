X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1446" "Tuesday" "13" "December" "2016" "06:53:15" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161213055315.GA8683@lorien.valinor.li>" "37" "[oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza" "^Cc:" nil nil "12" "2016121305:53:15" "[oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza" (number mark "        carnil@debia Dec 13   37/1446  " thread-indent "\"[oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza\"\n") "<7b789ec9b990495db739639f907b2366@imshyb02.MITRE.ORG>" ("<20161209201906.ltauap7fydkc62f6@eldamar.local>" "<7b789ec9b990495db739639f907b2366@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26078 invoked by uid 550); 13 Dec 2016 05:53:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26057 invoked from network); 13 Dec 2016 05:53:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6ow7Ujhrf7V2MUyliASxvxbQYCjCyUIC4yPSVmWSu2g=;
        b=E9G6FAHbr0mmh0QH8qFEtOEZzayC+wwz5ZoL87lFvb9qubK+3XSTwjAeXAWHLuBp7c
         y/LGPZVJGzSTqdrSGQjOJU9npA0//x7SvD//sz9+O/C2DeP0u+Y7xvwdq+C9V6ltuMdo
         Rb8kneAiizdW01svqs71ik/1inW5CcdB4+29J1AhCeca1HRk6G/S3YwHcAwFn3ANtLuf
         QaS0ThdYvgzIkp58DLreWtVnyrrS37Vgm8fKqaonCxReotGdCwnJSTQYApdyGrlBvhfS
         b0uEaAfg8TzTpbTjpPGRhL5ZbpsuZawkrVNSa9/JcwMJD9CrrPJRpdVytNHvTN5Do20f
         W5ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=6ow7Ujhrf7V2MUyliASxvxbQYCjCyUIC4yPSVmWSu2g=;
        b=LLB5+wlq+ZS4feDQA3vCqu9jA8rUbV8jgBP3zMcRHiuAtNeWa3t1dX487hrmJ6qX6P
         WhdTOa3ycX2OVSS2+CPBJmApwfp56fQ3oF3ClAM4gDkPurqep4xMMHydD1L4jAufC9cT
         KlElJ66AcLdzShfB426DOp5IzxfMgLarDm9dwEG6dwM5DygteEQNNs/zyrAstD+QK1+s
         W16ii15qELWZb2Zf4VMdIVdxM6NaXgg6xi/9SL5Gg7DIlN+LcQrfc6WdoOOMxPZXwOK2
         0TZPD4OIN5X9YxBwJ/h+rXBjWjpai6I+NlmznlB+/YsHHrHnWfTp3cS7k2vdB1Uo5xdL
         vT3g==
X-Gm-Message-State: AKaTC03sQJ3HRjM5H/j0Dl3Kga963lDpxmE/Ww0JxG1qoRoU+hOw+xZvR4LodDJDv/JjpA==
X-Received: by 10.107.176.197 with SMTP id z188mr38634963ioe.7.1481608398946;
        Mon, 12 Dec 2016 21:53:18 -0800 (PST)
Message-ID: <20161213055315.GA8683@lorien.valinor.li>
References: <20161209201906.ltauap7fydkc62f6@eldamar.local>
 <7b789ec9b990495db739639f907b2366@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7b789ec9b990495db739639f907b2366@imshyb02.MITRE.ORG>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: oss-security@lists.openwall.com
Date: Tue, 13 Dec 2016 06:53:15 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and
 intercept messages via a crafted roster-push IQ stanza
To: cve-assign@mitre.org

Hi,

On Sun, Dec 11, 2016 at 05:29:13PM -0500, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> > Sam Whited discovered that MCabber versions 1.0.3 and before, was
> > vulnerable to an attack identical to Gajim's CVE-2015-8688 which
> > can lead to a malicious actor MITMing a conversation, or adding
> > themselves as an entity on a third parties roster (thereby granting
> > themselves the associated privileges
> > 
> > https://gultsch.de/gajim_roster_push_and_message_interception.html
> > https://bitbucket.org/McKael/mcabber-crew/commits/6e1ead98930d7dd0a520ad17c720ae4908429033/raw
> > https://bugs.debian.org/845258
> 
> Use CVE-2016-9928.

Thanks.

> At present, we do not understand whether the behavior of other
> mentioned products, such as slixmpp and SleekXMPP, should be
> considered a vulnerability. If the situation is essentially "the
> product could be improved to make it less likely for third-party code
> authors to accidentally create an unsafe interaction," then typically
> a CVE ID is not required.
> 
> However, if (for example) there is going to be a DSA for the
> python-sleekxmpp and python3-sleekxmpp packages, then we can assign an
> ID. As far as we can tell, the python3-slixmpp* packages are not
> available in jessie, and poezio is packaged for Fedora but not for any
> Debian distribution.

Just to confirm, we do not plan to issue a DSA for the above.

Regards,
Salvatore
