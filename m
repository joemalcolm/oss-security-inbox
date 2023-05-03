Received: (qmail 9456 invoked by uid 550); 3 May 2023 19:20:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7248 invoked from network); 3 May 2023 19:16:18 -0000
Message-ID: <6d30fdfb-ad9a-2839-9ad1-93ff478a8459@thirddimension.net>
Date: Wed, 3 May 2023 15:15:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
To: oss-security@lists.openwall.com
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
 <20230429100407.3yqdy2vtzokv3t5l@stig.io>
Content-Language: en-US
From: Reid Sutherland <reid@thirddimension.net>
In-Reply-To: <20230429100407.3yqdy2vtzokv3t5l@stig.io>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules

Who actually decides when something receives a CVE?  This can be used to 
defame projects and products as in this case.


On 4/29/23 06:04, Stig Palmquist wrote:
> 
> - CVE-2023-31484 for CPAN.pm
> - CVE-2023-31485 for GitLab::API::v4
> - CVE-2023-31486 for HTTP::Tiny
> 
> On 2023-04-18 17:46, Stig Palmquist wrote:
>> HTTP::Tiny v0.082, a Perl core module since v5.13.9 and available
>> standalone on CPAN, does not verify TLS certs by default. Users must
>> opt-in with the verify_SSL=>1 flag to verify certs when using HTTPS.
>>
>> We grepped trough CPAN to find distributions using HTTP::Tiny that
>> didn't specify cert verification behaviour, possibly exposing users to
>> mitm attacks. Here are some examples with patches:
>>
>> - CPAN.pm v2.34 downloads and executes code from https://cpan.org
>>    without verifying server certs. Fixed in v2.35-TRIAL.
>>    https://github.com/andk/cpanpm/commit/9c98370287f4e709924aee7c58ef21c85289a7f0
>>
>> - GitLab::API::v4 v0.26 exposes API secrets to a network attacker.
>>    https://github.com/bluefeet/GitLab-API-v4/pull/57
>>
>> - Finance::Robinhood v0.21 is maybe exposing API secrets and financial
>>    information to a network attacker.
>>    https://github.com/sanko/Finance-Robinhood/pull/6
>>
>> - Paws (aws-sdk-perl) v0.44 is maybe exposing API secrets to a network
>>    attacker.
>>    https://github.com/pplu/aws-sdk-perl/pull/426
>>
>> - CloudHealth::API v0.01 is maybe exposing API secrets to a network
>>    attacker.
>>    https://github.com/pplu/cloudhealth-api-perl/pull/2
>>
>> ... and more. We have generated a list of over 300 potentially affected
>> CPAN distributions.
>>
>> More info in our blog post:
>> https://blog.hackeriet.no/perl-http-tiny-insecure-tls-default-affects-cpan-modules/
>>
>> -- 
>> Stig Palmquist <stig@stig.io>
> 
