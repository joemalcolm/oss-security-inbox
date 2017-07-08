X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["995" "Saturday" "8" "July" "2017" "14:40:16" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170708124016.ypmkkzwrl3lxiwot@eldamar.local>" "25" "Re: [oss-security] CVE for the TSIG issue in knot?" "^Cc:" nil nil "7" "2017070812:40:16" "[oss-security] CVE for the TSIG issue in knot?" (number mark "        carnil@debia Jul  8   25/995   " thread-indent "\"Re: [oss-security] CVE for the TSIG issue in knot?\"\n") "<20170624122820.GB29096@openwall.com>" ("<1498305503.26646.5.camel@debian.org>" "<20170624122820.GB29096@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17727 invoked by uid 550); 8 Jul 2017 12:40:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17703 invoked from network); 8 Jul 2017 12:40:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=stQFkFf34XdMnOr5jIJ4z0OMW5ea1nv9vIXmpOL0xAc=;
        b=Q5OHkW0daGWrbafyESEWFgtWI8bag35mfurinS3d/+gDjyE/ll3vnI5CwFv6tyRP/E
         1/uJYHRN9mNyY8UTsTZIxVqQENzepM313ENsjPu+JCnehlbMDOtWzs/aiTMQXKcF7DwW
         Nfe0HuFInEJEkjY32LZjrthJKBEHR6jfu3P5LanLSoqmNixpoK4+X//10OcP1Sr2h5Et
         P2Q1ZJ3Hmqz1pLtdApX9nSfRTpGgNFta+EqbmubvDG02yMfB/a25URkVjHDN+mW3TWXJ
         yYfLDH2LZQRGU5iYmeyeTn22ySVvLpBfVT63/sw/J0oqDVWH5sdFKaLMuwYNSeJStJIc
         nXVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=stQFkFf34XdMnOr5jIJ4z0OMW5ea1nv9vIXmpOL0xAc=;
        b=sEFi/3t7LQOPfkRq+4BnK9yK57jbX5AEGxLJ2XTfxIey9YL/zCHvCN3Wi+Q2Kd3DD1
         1r6zBiRzdYSnBCcMs/QVh7rmLp8aKgrXxAk0VZ3Un4UlFcm0wIRbhh4MDdeVgyyEFzpU
         iSVm1BdwsmcxPN2TuCuEOJV7aMi2PortgHPaKXul9Eoo4hkmA5iWuqS137FGfpgXcWPf
         p1fdEgiPVUwxTPvNFw5y+fjKeSywia7MueyaFj7KYyGDGhG2E4Epe3cZ7pXPUpF7S4Fh
         rBDYqEV6wIXYFL+BEvYk4fn2h2KJPQL75Q67gWY8x9qi8d6f8hUJSdAn+gYnTEKPtDoI
         gieA==
X-Gm-Message-State: AIVw112oD45E6UooqaEJHIB95gmBFHbKpw65X38jcvz08IiuVsDko7oR
	K88SOaI2alyfEA==
X-Received: by 10.223.128.42 with SMTP id 39mr3318510wrk.175.1499517618454;
        Sat, 08 Jul 2017 05:40:18 -0700 (PDT)
Message-ID: <20170708124016.ypmkkzwrl3lxiwot@eldamar.local>
References: <1498305503.26646.5.camel@debian.org>
 <20170624122820.GB29096@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170624122820.GB29096@openwall.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Cc: daniel.salzman@nic.cz, ondrej@debian.org
Date: Sat, 8 Jul 2017 14:40:16 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE for the TSIG issue in knot?
To: oss-security@lists.openwall.com

Hi

On Sat, Jun 24, 2017 at 02:28:20PM +0200, Solar Designer wrote:
> On Sat, Jun 24, 2017 at 01:58:23PM +0200, Yves-Alexis Perez wrote:
> > I noticed the recent issue in knot with TSIG bypass
> > (https://lists.nic.cz/pipermail/knot-dns-users/2017-June/001144.html)
> 
> Is is inappropriate to post only a link in here.  In cases like this,
> please also quote at least the most essential portion of the content
> you're referring to, which is:
> 
> "CZ.NIC has released Knot DNS 2.5.2 and Knot DNS 2.4.5. Beside
> several fixes and improvements, these versions fix a flaw within the
> TSIG protocol implementation that would allow an attacker with a
> valid key name and algorithm to bypass the TSIG authentication if no
> additional ACL restrictions is set. This vulnerability was
> discovered by security experts from Synacktiv.  Special thanks to
> them!"

FTR, this issue has been assigned CVE-2017-11104.

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-11104

Regards,
Salvatore
