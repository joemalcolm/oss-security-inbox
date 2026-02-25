Received: (qmail 7533 invoked by uid 550); 25 Feb 2026 00:38:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32432 invoked from network); 25 Feb 2026 00:22:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=risingedge.co.za; s=xneelo; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:
	reply-to:sender:bcc; bh=73OQ1krLLhuNySQKE875KcxQ8SjO6Y3t0PRxvQV6jVo=; b=ip+i9
	YLFjaIElK0NZ53kGTdoMhL55NmTG/KzlHcuhtmK6sTo1OHeMEyJpIjfXkZ+2k3PX+F0qeDMnTnMbV
	XOGsqmfLH6LHOjnAEYBjGqJyTukXvxdN+FoRDDp0v7k4z3EaIVr2jTp0bAWdHuiNgB7ztvn4XQYBr
	E4koNasYiaHEySMjA7VNWuzdI2htINHwwrf/sHo6wh/XT7leCTWFtp4SxfDvNeGfsvV3jYNeXz3tm
	sbhaoF1PilWYl1djd6yxaklG+cMFJbg+jfXexcP9OpG0zW5npZ+Qyek3IfhmHj2ZiI1KurS1/7URl
	Cvq8djTsNh8FnVtLuxwmJMn42ClUg==;
MIME-Version: 1.0
Date: Wed, 25 Feb 2026 02:22:34 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Eddie Chapman <eddie@ehuk.net>
Cc: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>,
 kf503bla@duck.com, bug-inetutils@gnu.org, ron.benyizhak@safebreach.com,
 simon@josefsson.org, auerswal@unix-ag.uni-kl.de
In-Reply-To: <ae76aeaf-88e5-459d-95ca-fcab8de948e2@ehuk.net>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com>
 <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org>
 <20260224011702.27987-1-justin.swartz@risingedge.co.za>
 <B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com>
 <27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com>
 <20260224203337.GA17345@openwall.com>
 <ae76aeaf-88e5-459d-95ca-fcab8de948e2@ehuk.net>
Message-ID: <1dc55356fb2f927bb5152bb43619e139@risingedge.co.za>
X-Sender: justin.swartz@risingedge.co.za
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net; auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.10)
X-Recommended-Action: accept
X-Filter-ID: 9kzQTOBWQUFZTohSKvQbgI7ZDo5ubYELi59AwcWUnuUsLnF/X1h2Kt5MVVArOJl4dtKfs9aGCWG3
 gTVBBhpLdiu2SmbhJN1U9FKs8X3+Nt0Io1idSgCc/506nnISAkPANvJkKIxakGlbxi+ggiqZlxxH
 xN7wu8yGEPLNcyeaFThuxjKdZfFisSqg48EyZjtlBMmyNbDn7R5kilAhwr3KtFb3AgNUGvQRnUF+
 Lycvfx+SVUSshQka8VpEeqGYZUq9Zamk/MP3PZ/WkSX8ijpi24hSnw9YyoGHx/ukuag1WKBLWDaO
 GAC1PCRtpOZuVuRfKVFCXTS2zVmMeFsPQMyMp5ya4EnB7foI3WDAWEIqQR42kI22V3+6/8VpCe4k
 l4rBro7NG5FMnAx+YiDY2J/czJYIiHqfCgG4wrA3w4/kQTaLfhXaMgiD0j3v6Ie9X8yyNtozlB2x
 wyC50sLzTDZuM8Oz/JTg+1/ga9ggJRQPDrVPSiBnQw3y7nuz0gOu+r9gJYzhtLM07FfENZ8RHU+B
 Uxl67PQIId8OXsKczIob6qtK6/lfqo5MoGrKUPnw+YqRfA0d+Rs3Uq/nM+NDDOdDwD/XN7NbNDnI
 jCBzEQFB4gnRRu0QB+650zpUaf5MyhpSiDvb7SqvbsgB1qmGf8LAf1Ai/pmySFAbn0/BOOXyjZ0D
 2HRnF2MhJFDJ09LUDuB4WmwJmD2M/naFRDU0FFZnaWLqvXFqjhE0c5w2G/KrnsI8qbgUYWVY3rpU
 uu8D+5eT17NirEYyqwqMBGrw8ELiqKoNTh6xnDA20Na4SQaMK72yaki2jY7gk7Z/HWAi40eCmfGA
 qpB337hY6C0XnEWaYFO14TPTJLZuY5RQ9yt1qlp8bucaxyqfdDMQ/+5f74V7zIu/Y00I5kTRFMMU
 ropF3Dp9Uolv3sMwGo8dvAnSLUQp1BAK7+jS9NczHabWZb5kaE/dYdoYqEw0Q/v4CRmrs3fK48+5
 XIBng/2XaUL6rQHHbSbAFucYtV59kuiA+7JU5tFIie8nIjro7TRlzINDTHTU3v/uGxuRh78fJF0G
 eipDOjqPH696SEBPk7q9MTcQri/B6GVLMwa6t4bld4JAfnqwNaQ767mY32c3h8d5ughR3kZCEQgH
 tcCN5kns5C9DnYJdkzciEeKUmoi8aR6XmHyhu2LuIwZXMzMdS+Y0iutDk/NJu/7c62gwZVdXeSuW
 2Ny5UbkAItgqYdjyvkX5H0hV5wwtKgVwwkcjJjZMGv/362Aa51zgdDx20A+nIDJwuTNa7IVsbMNf
 4F0zLZ5qoZsxeCmVCJvNl3WrxEQx23AlfSvAgySTO/p2rh6beoUF
X-Report-Abuse-To: spam@antispamquarantine.host-h.net
X-Complaints-To: abuse@antispammaster.host-h.net
Subject: Re: [oss-security] Telnetd Vulnerability Report

On 2026-02-25 01:18, Eddie Chapman wrote:
> On 24/02/2026 20:33, Solar Designer wrote:
>> On Tue, Feb 24, 2026 at 05:05:58AM -0500, kf503bla@duck.com wrote:
>>> Who uses telnet anyway? It's deprecated. Everyone uses ssh for any 
>>> kind of remote access.
>> 
>> Indeed.  Yet:
>> 
>> Quite many people surely do still use a telnet client to access 
>> various
>> older/smaller devices
> 
> Yes. I would hazard a guess that the largest cohort of devices running 
> a telnet server are enterprise switches, gateways & routers. So many 
> times over the years I've been surprised to find a switch I'm 
> configuring has a telnet as well as the obligatory http(s) server 
> available for the admin to login via.
> 
> Albeit to a lesser extent these days, and more likely BusyBox telnetd 
> than InetUtils. But switches are one of the most likely pieces of kit 
> to be forgotten about and left running for 10+ years in a closet 
> without a firmware update. There are a LOT of old switches running out 
> there.

There're also serial port concentrators, programmable automation 
controllers, remote telemetry units, protocol gateways, data 
aggregators, and PXI/LXI instrumentation out there that run some of 
telnet daemon - and you can be sure that it's not always busybox's 
telnetd implementation.
