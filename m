X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["669" "Thursday" "13" "August" "2015" "21:09:46" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150813190946.GA31347@eldamar.local>" "20" "[oss-security] CVE Request: Request Tracker: cross-site scripting in cryptography interface" nil nil nil "8" "2015081319:09:46" "[oss-security] CVE Request: Request Tracker: cross-site scripting in cryptography interface" (number mark "        carnil@debia Aug 13   20/669   " thread-indent "\"[oss-security] CVE Request: Request Tracker: cross-site scripting in cryptography interface\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15554 invoked by uid 550); 13 Aug 2015 19:10:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15536 invoked from network); 13 Aug 2015 19:09:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=jTpqNFqpJdHsBPi6aqY8XS63SO4tGWt552R25zkgaBQ=;
        b=eJu54tAnj5t6azGEncVkfDwmYbHiL5Zubtg9xE9ZSf9+H1w5S6Z7HiTiGFHPhcS5Tw
         mtWnwVlfG1/xvD7MbHaqDGuafPoxcdTfDmKxPoFueJQC3Onfl/wRZWU1xCGwK3LegJ8v
         5+Unc5qSa92dddbvvL0MS0HKUCL1Qou5yI5MJOPyFaoM11JEIJHimRQfVEKeOD4RAAsc
         ZfDFTWNLfDNmDAhsyynsZUsr2y2cMlEtzIjuLNQ6tO5JfpdKgoz7t/0hq6aPFLg5vs8D
         O7Nyylk9llLALq4hXc1wkzNPG/yra3G7EAAKU7x+/5vosFZwQ3e5cHReuwJOsg+hmOSa
         E2ow==
X-Received: by 10.180.182.112 with SMTP id ed16mr60161139wic.19.1439492988488;
        Thu, 13 Aug 2015 12:09:48 -0700 (PDT)
Message-ID: <20150813190946.GA31347@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Dominic Hargreaves <dom@earth.li>,
	Shawn Moore <shawn@bestpractical.com>,
	CVE Assignments MITRE <cve-assign@mitre.org>
Date: Thu, 13 Aug 2015 21:09:46 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: Request Tracker: cross-site scripting in cryptography
 interface
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

Could you please assign a CVE for the second cross-site scripting
issue mentioned in
http://blog.bestpractical.com/2015/08/security-vulnerabilities-in-rt.html

> RT 4.2.0 and above are vulnerable to a cross-site scripting (XSS)
> attack via the cryptography interface.  This vulnerability could
> allow an attacker with a carefully-crafted key to inject JavaScript
> into RT's user interface. Installations which use neither GnuPG nor
> S/MIME are unaffected.

Fixed by:
https://github.com/bestpractical/rt/commit/36a461947b00b105336adb4997d1c7767d8484c4

According to Shawn M. Moore (Cc'ed) for this second issue there was
not requested a CVE.

Regards,
Salvatore
