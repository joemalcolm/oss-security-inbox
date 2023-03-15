X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/15/6
Message-ID: <nsp78p38-3648-oss5-9279-4sq279579q7q@inai.de>
Date: Wed, 15 Mar 2023 10:44:37 +0100 (CET)
From: Jan Engelhardt <jengelh@...i.de>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: Re: TTY pushback vulnerabilities / TIOCSTI
Content-Type: text/plain; charset=utf-8

On Wednesday 2023-03-15 10:03, Dave Horsfall wrote:
>On Wed, 15 Mar 2023, Fabian Keil wrote:
>
>> In ElectroBSD I removed TIOCSTI support in 2017 [0] and haven't noticed 
>> any problems.
>
>I hate tossing out functionality; would you not make it a privileged 
>operation instead?

But also: "Perfection is achieved, not when there is nothing more to 
add, but when there is nothing left to take away", and it would 
appear TIOCSTI does not have https://xkcd.com/2347/ -criticality.
