Received: (qmail 15805 invoked by uid 550); 3 May 2023 20:15:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1702 invoked from network); 3 May 2023 19:58:13 -0000
Message-ID: <8038fdf3-2532-9a54-caf9-7c0d40262f52@thirddimension.net>
Date: Wed, 3 May 2023 15:57:59 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: oss-security@lists.openwall.com, "David A. Wheeler"
 <dwheeler@dwheeler.com>
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
 <20230429100407.3yqdy2vtzokv3t5l@stig.io>
 <6d30fdfb-ad9a-2839-9ad1-93ff478a8459@thirddimension.net>
 <30B5E64A-3EEE-4676-979C-A5A39373F46B@dwheeler.com>
From: Reid Sutherland <reid@thirddimension.net>
In-Reply-To: <30B5E64A-3EEE-4676-979C-A5A39373F46B@dwheeler.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules

On 5/3/23 15:54, David A. Wheeler wrote:
> 
> 
>> On May 3, 2023, at 3:15 PM, Reid Sutherland <reid@thirddimension.net> wrote:
>>
>> Who actually decides when something receives a CVE?
> 
> There's a process for assigning CVEs. Anyone who wants to be able to assign CVEs - that is, to become a CVE Numbering Authority (CNA) - has to follow various processes. I'm sure it can be improved, like all things. I'm not directly involved in this. You might find more information here:
> https://www.cve.org/ProgramOrganization/CNAs
> 
>>   This can be used to defame projects and products as in this case.
> 
> 
> Identifying a vulnerability does not defame a project. If a library has the functionality to retrieve an https URLs, and fails to verify the server certificates by default, then I (and many others) would call that a vulnerability. After all, the default is what happens. If you request data from <https://google.com>, you wouldn't expect it to use the data from <https://godzilla.com>. There's a general expectation that https://FPP provides a secure connection to FOO (with confidentiality, integrity, and server authentication), unless you specially disable it.
> 
> --- David A. Wheeler
> 


A default is not a vulnerability.  There are reasons why defaults cannot 
be changed in libraries once they are stable.  This is also why 
documentation exists.

Revoke these CVEs, it's a stain on the process.
