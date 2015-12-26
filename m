X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1429" "Saturday" "26" "December" "2015" "12:05:37" "+0100" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<567E7481.607@gmail.com>" "34" "Re: [oss-security] Being vulnerable to POODLE" "^Date:" nil nil "12" "2015122611:05:37" "[oss-security] Being vulnerable to POODLE" (number mark "        gsunde.orang Dec 26   34/1429  " thread-indent "\"Re: [oss-security] Being vulnerable to POODLE\"\n") "<20151226104143.GA26606@gremlin.ru>" ("<567E41B4.2010606@geeklan.co.uk>" "<20151226104143.GA26606@gremlin.ru>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25647 invoked by uid 550); 26 Dec 2015 11:09:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23718 invoked from network); 26 Dec 2015 11:05:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type:content-transfer-encoding;
        bh=OnssNoP/uCw/TKdKJ304mYhlg4oXpPP4tCLzU0FutLA=;
        b=paiE+I4eEMHKZbj0OE0JtRwjsVcJjW+BMtq9PBLfBcTOJSAnz3C3HcJwsQUM8GwwVS
         Tc3X7bNQEb4kMBNZ4iK4Xe6wLaGfTDcs0d3MLFJ2U/b0sKhHV8lNrQNCFYozqHqQ2YDF
         YXjv1RAeQHFuF3pZSKHY4clgeZ0iSRSRdmM6mqlkD7CBAJm6Mo1bh0eBGKvPq4s6UG6/
         e6S8h3T7/eoNfBqu6/PbrI2rDZmW/b6LP8x8Z62HTN7usLow5jey8iUFRmx79Jx2NRAI
         fx6e2MsHKi1m30ClV/p4pt5jt8OJZVG6GFPOzsmt0K6K3oCrjnMvLKW4yfEjsX//H/DS
         K4AQ==
X-Received: by 10.194.112.130 with SMTP id iq2mr36357027wjb.102.1451127936035;
        Sat, 26 Dec 2015 03:05:36 -0800 (PST)
References: <567E41B4.2010606@geeklan.co.uk>
 <20151226104143.GA26606@gremlin.ru>
X-Enigmail-Draft-Status: N1110
Message-ID: <567E7481.607@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <20151226104143.GA26606@gremlin.ru>
Content-Type: text/plain; charset=koi8-r
Content-Transfer-Encoding: 8bit
Date: Sat, 26 Dec 2015 12:05:37 +0100
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Being vulnerable to POODLE
To: oss-security@lists.openwall.com

On 26.12.2015, 11:41 gremlin@gremlin.ru wrote:
> On 2015-12-26 07:28:52 +0000, Sevan Janiyan wrote:
> 
>  > Hi, If you have a piece of software which is vulnerable to POODLE,
>  > should a CVE be requested for it or should CVE-2014-3566 just be
>  > referenced in any advisories published?
> 
> The POODLE is an OpenSSL vulnerability, so referencing CVE-2014-3566
> should be enough.
Nope, it is not a vulnerability specific to OpenSSL, but a design
weakness in the SSLv3 protocol - so all implementations of SSLv3 are
affected. I would use the same CVE-2014-3566 for all software that still
uses SSLv3.
This is different to "POODLE TLS", where some implementations (but not
OpenSSL) contained a similar vulnerability in their implementation of
the TLS 1.0 protocol (although the TLS 1.0 standard itself does not have
it). In this case different CVE IDs are suggested - see Mitre's
statement at [1]
"POODLE TLS" is references in multiple CVEs, see [2]

[1] http://seclists.org/oss-sec/2014/q4/1003
[2] https://web.nvd.nist.gov/view/vuln/search-results?query=poodle%20tls

> 
>  > It turns out that CoovaChilli is vulnerable to POODLE & I'd
>  > like to follow the correct procedure regarding disclosure. There's
>  > a fix pending due to needing further testing at which point an
>  > advisory will be published with the necessary details.
> 
> Does the update of OpenSSL eliminate this vulnerability?
No - see above...

Gsunde

