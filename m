X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["459" "Sunday" "22" "November" "2015" "18:50:03" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20151122175003.GA13876@eldamar.local>" "14" "Re: [oss-security] CVE-2015-5257 - Weak Randomization of BridgeSecret for Apache Cordova Android" nil nil nil "11" "2015112217:50:03" "[oss-security] CVE-2015-5257 - Weak Randomization of BridgeSecret for Apache Cordova Android" (number mark "U       carnil@debia Nov 22   14/459   " thread-indent "\"Re: [oss-security] CVE-2015-5257 - Weak Randomization of BridgeSecret for Apache Cordova Android\"\n") "<CAOBL_k7wfgXxa946QuVcyPk9J5LoOgFNNhQZVXY9YRoQi_0J=g@mail.gmail.com>" ("<CAOBL_k7wfgXxa946QuVcyPk9J5LoOgFNNhQZVXY9YRoQi_0J=g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9469 invoked by uid 550); 22 Nov 2015 17:50:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9451 invoked from network); 22 Nov 2015 17:50:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=zPRb+cy+GK/YzyCNhaT4NtpFMCs8nYkWKhu5wDH4KCQ=;
        b=Q081ZBF7D+zkHA/mzydIYTrAFIF7NWEktsvU2u5/wDB/znh3uRt+blv0zHPiLYLXE4
         G4afCbscooKC9id0PvB6dXC8Mi1/zo02WIvrKH3QmLBojEJryFMWtof9l0dxmwZtzZ3v
         qaimcVw8RKW+eS2/Kw1ryB11QiHE4u3rhvSTmGpKCdN+DtCAV1H1BpIgriTZMOqGqTPE
         rbamzIlhIJDFKPcZDreZUYQdf9Srg404YyBJ/pJIpL8YwOF8BwoPjaTG+wcIGoDapCM4
         EBwjeC31GWPSRpDw/PfMFCwuALqplOAKPYqikiLXX+NkhdPrVSkrWsaLFUuBqwmgoFeJ
         Lifg==
X-Received: by 10.194.82.99 with SMTP id h3mr30151367wjy.41.1448214605165;
        Sun, 22 Nov 2015 09:50:05 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 22 Nov 2015 18:50:03 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com,
	CVE Assignments MITRE <cve-assign@mitre.org>
Cc: DAVIDKA@il.ibm.com, Roee Hay <ROEEH@il.ibm.com>,
	"private@cordova.apache.org" <private@cordova.apache.org>,
	dev <dev@cordova.apache.org>,
	"security@apache.org" <security@apache.org>,
	bugtraq@securityfocus.com
Message-ID: <20151122175003.GA13876@eldamar.local>
References: <CAOBL_k7wfgXxa946QuVcyPk9J5LoOgFNNhQZVXY9YRoQi_0J=g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOBL_k7wfgXxa946QuVcyPk9J5LoOgFNNhQZVXY9YRoQi_0J=g@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] CVE-2015-5257 - Weak Randomization of
 BridgeSecret for Apache Cordova Android

Hi,

Adding MITRE team to recipients.

On Fri, Nov 20, 2015 at 11:39:56AM -0800, Joe Bowser wrote:
> ===================================================================
> CVE-2015-5257: Weak Randomization of BridgeSecret for Apache Cordova Android

Is there a typo here? CVE-2015-5257 was already assigned for an issue
in drivers/usb/serial/whiteheat.c in the Linux kernel. see
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-5257

Regards,
Salvatore
