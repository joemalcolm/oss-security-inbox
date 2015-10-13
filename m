X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1094" "Tuesday" "13" "October" "2015" "16:28:00" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20151013142800.GA683@eldamar.local>" "28" "Re: [oss-security] Re: CVE request: BD-J implementation in libbluray" nil nil nil "10" "2015101314:28:00" "[oss-security] Re: CVE request: BD-J implementation in libbluray" (number mark "        carnil@debia Oct 13   28/1094  " thread-indent "\"Re: [oss-security] Re: CVE request: BD-J implementation in libbluray\"\n") "<20151012185056.0366DB2E069@smtpvbsrv1.mitre.org>" ("<54EAEB47.7070106@redhat.com>" "<20151012185056.0366DB2E069@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3218 invoked by uid 550); 13 Oct 2015 14:28:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3200 invoked from network); 13 Oct 2015 14:28:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Ab3sBJRc9KKTBXZxWurc2YdLcDYvX8QX5mGPPaNDAKQ=;
        b=ozF4jf7mJSi0nrOZH/I9MZnVBNe6aZ8P2gjXO/V3UV1LtAJhGYXMwoxK+RqVtHjBrJ
         DNqZcZjMEPAAZjh2YpksdmAi/L22PigF4oHP/o6/G8+ynrCB3LBHC1PV4LteT6c0Z6qH
         qy3AXgH2GLIY9MGWuI7KCQdygrMv18CA0qnMC1rZpPzovKAim/9+AlMhERFaqo+/z/ip
         D9OXGnZv9RFsjlZAj7+Q2taXf+SgolQu6dgAD5E01P0PUNG6aigpVHrXBi9OINju+dw+
         HTsNBbtFogq0LKZuWyBaOKWSBjg4XkBmM9gqDDHIT2F99660TtN6OfloXMlmhLCKjZtG
         JTWw==
X-Received: by 10.180.184.232 with SMTP id ex8mr20482201wic.15.1444746482410;
        Tue, 13 Oct 2015 07:28:02 -0700 (PDT)
Message-ID: <20151013142800.GA683@eldamar.local>
References: <54EAEB47.7070106@redhat.com>
 <20151012185056.0366DB2E069@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151012185056.0366DB2E069@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: fweimer@redhat.com, cve-assign@mitre.org
Date: Tue, 13 Oct 2015 16:28:00 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Re: CVE request: BD-J implementation in libbluray
To: oss-security@lists.openwall.com

Hi,

Disclaimer: I have not investigated the situation in detail:

On Mon, Oct 12, 2015 at 02:50:56PM -0400, cve-assign@mitre.org wrote:
> In 0.7.0, the configure script has:
> 
>   --enable-bdjava         enable BD-Java support (default is no)
> 
> under "Optional Features" but we didn't find any documentation or
> comments suggesting that --enable-bdjava was recommended for general
> use cases at that time. Apparently, BDJSecurityManager development
> came after 0.7.0.
> 
> In other words, our perspective is that the primary known mistake is
> that the Fedora packaging process chose a non-standard default
> behavior, and either didn't investigate or didn't document the risks.
> If anyone else independently chose --enable-bdjava for their package
> based on 0.7.0 or earlier, then they can have their own CVE ID.

Does that mean that in principle Debian would in principle recieve a
separate CVE ID, since it looks --neable-bdjava was passed there on
the build as well in earlier versions? Cf.

https://sources.debian.net/src/libbluray/1:0.6.2-1/debian/rules/#L4

Regards,
Salvatore
