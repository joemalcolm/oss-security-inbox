X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["816" "Tuesday" "6" "June" "2017" "07:20:25" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170606052025.hnwrsb5kmnf54v7r@lorien.valinor.li>" "28" "Re: [oss-security] Information on recent sqlite3 issues?" "^Date:" nil nil "6" "2017060605:20:25" "[oss-security] Information on recent sqlite3 issues?" (number mark "        carnil@debia Jun  6   28/816   " thread-indent "\"Re: [oss-security] Information on recent sqlite3 issues?\"\n") "<20170601134213.GA23889@inutil.org>" ("<20170531203037.hxl4v36govklpenk@pisco.westfalen.local>" "<95c188ba-76a3-7190-94ea-a369d011ae6c@suse.com>" "<20170601062046.GI15203@suse.com>" "<EC58D857-2282-4632-95E5-00205A75C51D@redhat.com>" "<20170601134213.GA23889@inutil.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23559 invoked by uid 550); 6 Jun 2017 05:20:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22495 invoked from network); 6 Jun 2017 05:20:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Wz05A0Wp1LeWbUxg/BQ0XyCbzwpfWdERw9mrTkTTcOw=;
        b=ufKH3lsLvFM/a8cy92us+txByOzniRCSwvO/y5maH19vzi+m6c2aPDsAWfiydhgcgC
         pADeG4jjiVGHY3IgBwAh45AlPu6BlIk/nlSXL7fuf9OLZoLC1y8iOnDpvs0qasLhZo3l
         zdiGwbIAZ+2tQOcdlfry6/MZpWZSfA5mM3FYeNbm6dwcKQ4yQf1JmmzpbELV3t02mHSY
         pwG+y/IidyL63rp1aa0Lm54MJdxaz/2VMVJp5Y38t2rglcpFB3Lm+X4XcxDNFJfPGcnh
         CkFMlTLSYDIizXaa+zbXX8RiWzEQb7V7ucE6KVTo/PVLBsUL+9X/xfujZ3nr4tC1Ebsl
         DrRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=Wz05A0Wp1LeWbUxg/BQ0XyCbzwpfWdERw9mrTkTTcOw=;
        b=Lus59aTYwFupPGxgR/c1mKoYTnQntkto0yrY6G4jjvOVLrfgKWdwrxGhXfI4hlaGLg
         /uNh+UGIIz33Zu8Oni3sGSCf7frSaBxCfG5QDNKmryqjfTPwjICAX9MBqyhUuhaUH+WV
         A1MqEYdtUpWuOPwzW/EajvEQYymw+si0WFm5Akst74/oQlNjnyDgFT0yXQnryN8UnWNZ
         W3a9LYTvFYaRE00L539PcavOoLwQ7VgwtdDe2aFQdEKrEbzMEgySgH0uXPodosE+sycW
         CmElVVGH0rhgFAeVR1ZqYFJzhDk1GP/l6dUjUBFvIZedxwtA/vRwc7fUBCbR72OxkVbe
         leGQ==
X-Gm-Message-State: AODbwcAK6+iJnS/G13VKSKAWouiLnYWokJJIZpOVZJIs00kaZmlrMlDw
	NpKGNerPDlp2A9QU
X-Received: by 10.107.13.196 with SMTP id 187mr23239418ion.168.1496726428392;
        Mon, 05 Jun 2017 22:20:28 -0700 (PDT)
Message-ID: <20170606052025.hnwrsb5kmnf54v7r@lorien.valinor.li>
References: <20170531203037.hxl4v36govklpenk@pisco.westfalen.local>
 <95c188ba-76a3-7190-94ea-a369d011ae6c@suse.com>
 <20170601062046.GI15203@suse.com>
 <EC58D857-2282-4632-95E5-00205A75C51D@redhat.com>
 <20170601134213.GA23889@inutil.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170601134213.GA23889@inutil.org>
User-Agent: NeoMutt/20170306 (1.8.0)
Date: Tue, 6 Jun 2017 07:20:25 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Information on recent sqlite3 issues?
To: oss-security@lists.openwall.com

On Thu, Jun 01, 2017 at 03:42:13PM +0200, Moritz Muehlenhoff wrote:
> On Thu, Jun 01, 2017 at 07:14:46AM -0600, Kurt Seifried wrote:
> > I will bring this up at the next cve board meeting (2 weeks from now).
> 
> Thanks! That also goes beyond sqlite, BTW. There's also a number of
> CVE IDs issued by Apple for libxml/libxslt which are in the same 
> position.
> 
> libxml:
> CVE-2016-4619 CVE-2016-4616 CVE-2016-4615 CVE-2016-4614 CVE-2015-7116
> CVE-2015-7115
> 
> libxslt:
> CVE-2017-2477 CVE-2016-4612 CVE-2016-4610 CVE-2016-4609 CVE-2016-4608
> CVE-2016-4607

On a query to Apple's product security team we got confirmed that

CVE-2016-4612 is a duplicate of CVE-2016-1683 (libxslt)

and

CVE-2016-4619 is a duplicate of CVE-2015-8317 (libxml2)

But no other information for the other CVEs.

Regards,
Salvatore
