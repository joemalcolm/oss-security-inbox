X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1659" "Thursday" "7" "May" "2015" "16:47:16" "+0200" "Hector Marco-Gisbert" "hecmargi@upv.es" "<554B7AF4.3010308@upv.es>" "42" "Re: [oss-security] CVE-Request: AMD Bulldozer Linux ASLR weakness: Reducing entropy by 87.5%." nil nil nil "5" "2015050714:47:16" "[oss-security] CVE-Request: AMD Bulldozer Linux ASLR weakness: Reducing entropy by 87.5%." (number mark "        hecmargi@upv May  7   42/1659  " thread-indent "\"Re: [oss-security] CVE-Request: AMD Bulldozer Linux ASLR weakness: Reducing entropy by 87.5%.\"\n") "<551548FD.8030700@upv.es>" ("<551548FD.8030700@upv.es>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9507 invoked by uid 550); 7 May 2015 14:47:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9482 invoked from network); 7 May 2015 14:47:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=upv.es; s=default;
	t=1431010038; bh=gZPVMGI0bQVZsYvLuGJ3w/kM5cDCPh8qVBM+MMPFPn0=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=bkCOphDqlBNCKXz8SEHsccDCdt473CeQR8vroickAWLHMNNzZANeQFs4GhUDzkBGt
	 XO0FZDkI5tj97lA+vMzBbfZIiabbCttBIbYMYXKXl/ZGoFivM35ePaAoZZqmaRGjV5
	 nRhKvGeu83Wwio5p1IwXlksv3Uq5MYYzwoX5ZW1fMrixDyNL/OUL/Tdcn/1joSwntE
	 XoE5AodZywk7hKTs3WiIP79AFUzYCBa9zjirKA3O1FS37dDYcExz3Sp7AKmvadwc8b
	 ZxtBQ0UsoWBXICSAFcMPEQH9aKgD55IytpPHGe7/08mjN9hhCCXdzF0vs41TSLdLbu
	 OPVzd6XTxYlCQ==
Message-ID: <554B7AF4.3010308@upv.es>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <551548FD.8030700@upv.es>
In-Reply-To: <551548FD.8030700@upv.es>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
CC: Ismael Ripoll <iripoll@disca.upv.es>
Date: Thu, 07 May 2015 16:47:16 +0200
From: Hector Marco-Gisbert <hecmargi@upv.es>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-Request: AMD Bulldozer Linux ASLR weakness:
 Reducing entropy by 87.5%.
To: oss-security@lists.openwall.com

Hi,

PaX solution has actually 16 random bits for mmap objects in 32bit systems on 
non affected systems. On affected systems the random bits are degraded to 2^13.
Unfortunately, depending on the PaX Kernel configuration sequence, some features
may not be enabled. There are sequences of PaX configuration which does not give
the expected result.

The configuration sequence that results in a miss-configured system is:

     1.- Starting from a clean Linux tree with PaX patch applied.

     2.- Enabled the "Grsecurity" option (which sets "Security Method" to
"Custom") and compile&test:
     Observed mmap entropy: 2^5 (as expected).

     3.- Then set "Security Method" to "Automatic" (which sets "Required 
Priorities" to "Performance") and compile&test:
     Observed mmap entropy: 2^5.

     4.- Last test: select "Security" on the "Required Priorities" option and
compile&test:
     Observed mmap entropy: 2^5.

     5.- At this point, it seems that the "Required Priorities" option has no
effect, that is, switching from "Performance" to "Security" or the other way
around (as may times as desired) does not enable/disable the expected features,
including the mmap randomization.

If steps 2 and 3, or 2 and 4 are configured at once (without exiting from the
menuconfig), then the system gets properly configured.


It seems that something in the PaX Kconfig files are not properly done. Could 
anyone check it ? So, if you are using PaX, it worth to ensure that you are not 
losing any PaX feature.


-- 
Hector Marco-Gisbert @ http://hmarco.org/
Cyber Security Researcher @ http://cybersecurity.upv.es
Universitat Politècnica de València (Spain)
