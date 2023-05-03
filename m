Received: (qmail 21539 invoked by uid 550); 4 May 2023 10:37:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1223 invoked from network); 3 May 2023 21:43:46 -0000
To: oss-security@lists.openwall.com
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
 <20230429100407.3yqdy2vtzokv3t5l@stig.io>
 <6d30fdfb-ad9a-2839-9ad1-93ff478a8459@thirddimension.net>
 <30B5E64A-3EEE-4676-979C-A5A39373F46B@dwheeler.com>
 <8038fdf3-2532-9a54-caf9-7c0d40262f52@thirddimension.net>
 <336b0af3-572e-b601-a856-b09d0930d40e@eenterphace.org>
From: Reid Sutherland <reid@thirddimension.net>
Message-ID: <c3576b53-b89b-d706-002d-467acf373a9c@thirddimension.net>
Date: Wed, 3 May 2023 17:43:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 SeaMonkey/2.53.16
MIME-Version: 1.0
In-Reply-To: <336b0af3-572e-b601-a856-b09d0930d40e@eenterphace.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules

Moritz Bechler wrote:
> Hi,
> 
>>
>> A default is not a vulnerability.  There are reasons why defaults 
>> cannot be changed in libraries once they are stable.  This is also why 
>> documentation exists.
>>
>> Revoke these CVEs, it's a stain on the process.
> 
> 
> while one may criticize that CVEs have been assigned both for the 
> insecure default and (some of the) insecure usages, at least one of 
> these is a legitimate case, in terms of CVEs likely the latter. And when 
> it comes to defaming projects, at least in my book, choosing, keeping 
> and defending bad defaults speaks to much more than a CVE being assigned.
> 


Performing outside queries is not a reasonable default in terms of 
security.  It's up to the developer if they wish to open up the user to 
that risk.  Libraries cannot shift defaults on a whim, this is why they 
have documentation.

