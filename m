Received: (qmail 7778 invoked by uid 550); 25 Feb 2026 00:38:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12231 invoked from network); 25 Feb 2026 00:34:38 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 james.steelbluetech.co.uk BD465BFC1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ehuk.net; s=default;
	t=1771979669; bh=jWkc+h78gtbEnn12F3Mb5+FU/CtvSyvjhu2p/mnMzWU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DtLmD6EFmbiPrkM+p4itPnzYendD1elYVK5g71XC7nBOqy/0jtPuNvzpg1P46O7Rs
	 gOIqeWZQp4P6diJlqoyNukDKeO5xuto4isWQxPtg7g2/WQzkMl3x/nZz4msJR6sXFH
	 8irKT46TOX97VLsD4JhHbU0C9OxvV7Oq0yhL9km2rDqfDKY2uzGuJ+q/XMKw3Quuad
	 QThUevOHIF0MA1fO0IpBDlzdcPTZGlWTJgvg9+Rn9uADJNwW/vs0BgjGjpZ3KIsBs4
	 4/6FHk9lIIR5hhXcUfPxpy/7LPnZ+N9y8Qig+iJaUTmOVPb8hEJ5J2FN+LA/RPC5NZ
	 wM4zrGr3aIHdQ==
Message-ID: <a0bbb9af-7714-4be8-ba9d-3525088e7c53@ehuk.net>
Date: Wed, 25 Feb 2026 00:34:29 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Justin Swartz <justin.swartz@risingedge.co.za>
Cc: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>,
 kf503bla@duck.com, bug-inetutils@gnu.org, ron.benyizhak@safebreach.com,
 simon@josefsson.org, auerswal@unix-ag.uni-kl.de
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com>
 <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org>
 <20260224011702.27987-1-justin.swartz@risingedge.co.za>
 <B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com>
 <27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com>
 <20260224203337.GA17345@openwall.com>
 <ae76aeaf-88e5-459d-95ca-fcab8de948e2@ehuk.net>
 <1dc55356fb2f927bb5152bb43619e139@risingedge.co.za>
Content-Language: en-GB
From: Eddie Chapman <eddie@ehuk.net>
In-Reply-To: <1dc55356fb2f927bb5152bb43619e139@risingedge.co.za>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang
Subject: Re: [oss-security] Telnetd Vulnerability Report

On 25/02/2026 00:22, Justin Swartz wrote:
> On 2026-02-25 01:18, Eddie Chapman wrote:
>> On 24/02/2026 20:33, Solar Designer wrote:
>>> On Tue, Feb 24, 2026 at 05:05:58AM -0500, kf503bla@duck.com wrote:
>>>> Who uses telnet anyway? It's deprecated. Everyone uses ssh for any 
>>>> kind of remote access.
>>>
>>> Indeed.  Yet:
>>>
>>> Quite many people surely do still use a telnet client to access various
>>> older/smaller devices
>>
>> Yes. I would hazard a guess that the largest cohort of devices running 
>> a telnet server are enterprise switches, gateways & routers. So many 
>> times over the years I've been surprised to find a switch I'm 
>> configuring has a telnet as well as the obligatory http(s) server 
>> available for the admin to login via.
>>
>> Albeit to a lesser extent these days, and more likely BusyBox telnetd 
>> than InetUtils. But switches are one of the most likely pieces of kit 
>> to be forgotten about and left running for 10+ years in a closet 
>> without a firmware update. There are a LOT of old switches running out 
>> there.
> 
> There're also serial port concentrators, programmable automation 
> controllers, remote telemetry units, protocol gateways, data 
> aggregators, and PXI/LXI instrumentation out there that run some of 
> telnet daemon - and you can be sure that it's not always busybox's 
> telnetd implementation.

Well, every cloud has a silver lining ... for some of these devices, 
this vulnerability, together with other ones, just might make it 
possible for owners to completely replace that cesspit of a firmware 
with an OSS one that can be updated :-) (if they have lots of time and 
patience!)
