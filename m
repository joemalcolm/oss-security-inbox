X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["918" "Thursday" "31" "August" "2017" "15:04:09" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170831130409.trythk5aqvjhrryd@lorien.valinor.li>" "25" "Re: [oss-security] CVE request: incorrect URL parsing in async-http-client <= 2.0.35" nil nil nil "8" "2017083113:04:09" "[oss-security] CVE request: incorrect URL parsing in async-http-client <= 2.0.35" (number mark "U       carnil@debia Aug 31   25/918   " thread-indent "\"Re: [oss-security] CVE request: incorrect URL parsing in async-http-client <= 2.0.35\"\n") "<1504181194.31557.160.camel@agarri.fr>" ("<1504181194.31557.160.camel@agarri.fr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29787 invoked by uid 550); 31 Aug 2017 13:04:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29769 invoked from network); 31 Aug 2017 13:04:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=aSZkuiqEviSFMda+ZRIWhTzw0UlQiBE0R734NIFbm6w=;
        b=lVUgfkU9xvDnYgj53mV5z7phkQC70MIOTqDoGJdWrirCRglbeRpNMyF+LyVsbhGsnh
         csStiGu+LKNg97Ys04Qb7ccHnIx7JZDK6CRkBjTk9l44Cdf0UoHBdY/QR1Sz3asShMpa
         f24Vr2H67B6KTS6HBhMv6dnwrg4QHf1way4E3g1mQ+hOj5sQy3MZxAmO520+/e2F3ahc
         P9tEE9Ll5wbGlTRuvp0U9GrAJv7X1xaA4EaO9TPijGYiF2SLcwlh8XIo1y8fNS0vOmPg
         Bv8SEIK1tsvFRRZS+U7V3+VJ0fJa+5VaapXE8fgDfSKuPwiqnXG2RJhTflXMkpao28a5
         46XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=aSZkuiqEviSFMda+ZRIWhTzw0UlQiBE0R734NIFbm6w=;
        b=FqJ4VZcyp1BTfn0zDa2MISgA2Oezw7mXLQC3epV9dF5U53xsPbnSTPqAfKIgo5m32y
         /TPlSHlGixInvMRO40XFLKd0+oirjNYuqJa8tZd69O0jU/76Nux3Tgjx2U5XzY8kGSyT
         6vGdql1rXTyaCtzNVAnbLaN3L5Ket4jbwED54YbOOW4gNJpwiSjwpl7idBrUbOtaI1f4
         +iO7SMSQtusTRMuKLBAlpo4FqYYhACi3jL1HtZloNA7Ryuv2nr73l4+1EytfaQ0/P6sx
         iroZM7THufQH/LoNbxK8c0hjksZwzaVC7rG23p0mXEnBHd7gUxYTdgHhl9tWLIm7M1uK
         vxsg==
X-Gm-Message-State: AHPjjUj3kZp8cTyDGaT62AmGQzHc3SUoJ1a+JS0aGSffERNkhIgVsIO1
	EdZEnThuxsFmzy9f
X-Received: by 10.28.176.68 with SMTP id z65mr500290wme.120.1504184650851;
        Thu, 31 Aug 2017 06:04:10 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 31 Aug 2017 15:04:09 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: nicolas.gregoire@agarri.fr
Message-ID: <20170831130409.trythk5aqvjhrryd@lorien.valinor.li>
References: <1504181194.31557.160.camel@agarri.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1504181194.31557.160.camel@agarri.fr>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] CVE request: incorrect URL parsing in
 async-http-client <= 2.0.35

Hi Nicolas,

On Thu, Aug 31, 2017 at 02:06:34PM +0200, Nicolas Grégoire wrote:
> Hello,
> 
> a flaw was identified in the URL parsing code of async-http-client, a
> Java HTTP client used in other projects like the Play Framework
> (through its WS library):
> https://www.playframework.com/documentation/2.6.x/JavaWS
> 
> The bug is similar to CVE-2016-8624 affecting cURL (incorrect
> processing of string "#@" in the hostname):
> https://curl.haxx.se/docs/adv_20161102J.html
> 
> Version 2.0.35 of async-http-client includes a fix and is available
> through Maven since Monday. Relevant GitHub issue:
> https://github.com/AsyncHttpClient/async-http-client/issues/1455

CVEs cannot be requested anymore via the oss-security list.  Could you
please request the CVE via the form at https://cveform.mitre.org/ and
possibly keep us posted with a followup to this thread once the CVE
has been assigned?

Regards,
Salvatore
