Received: (qmail 3123 invoked by uid 550); 24 Feb 2026 23:32:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31767 invoked from network); 24 Feb 2026 23:18:50 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 james.steelbluetech.co.uk E827CBFC1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ehuk.net; s=default;
	t=1771975120; bh=zK0Dyh1CgOMdQFMbDTjzWvOu7nJGwOdrD+NoXVj4hfk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BZj5cMGBkpQAriGW5ZpS99XzvOqO88qcfN4U+efJd+6EABEghyJYuRGar0SijK8Ob
	 D8vwShE6x+9McSVVx9R3qliQhMhJmFEV4HTVlCSYPm3es5MDTHazollJUMvb1X1IX9
	 sINX0nnV7jCh/z9gx7UV5r3SwW2pGWScwv9DX1/1PUV2I9Mhd43Xj2jsNM4MmvPbK0
	 hU7rEhFdll3F2CCFet+PMtg2Jl1y3xrZQYSID+onUlMAeKgZdRDv+qzW/MBow7xY7m
	 6IT9I/coCCNNhJuYJcgANbnHLwmAMxL3gteCLYRGYnpqqjiQ/LzBLulLuiWVTF84cS
	 zdcDPbqJTzigg==
Message-ID: <ae76aeaf-88e5-459d-95ca-fcab8de948e2@ehuk.net>
Date: Tue, 24 Feb 2026 23:18:39 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>,
 kf503bla@duck.com
Cc: "bug-inetutils@gnu.org" <bug-inetutils@gnu.org>,
 "ron.benyizhak@safebreach.com" <ron.benyizhak@safebreach.com>,
 "simon@josefsson.org" <simon@josefsson.org>,
 "auerswal@unix-ag.uni-kl.de" <auerswal@unix-ag.uni-kl.de>,
 "justin.swartz@risingedge.co.za" <justin.swartz@risingedge.co.za>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com>
 <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org>
 <20260224011702.27987-1-justin.swartz@risingedge.co.za>
 <B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com>
 <27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com>
 <20260224203337.GA17345@openwall.com>
Content-Language: en-GB
From: Eddie Chapman <eddie@ehuk.net>
In-Reply-To: <20260224203337.GA17345@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang
Subject: Re: [oss-security] Telnetd Vulnerability Report

On 24/02/2026 20:33, Solar Designer wrote:
> On Tue, Feb 24, 2026 at 05:05:58AM -0500, kf503bla@duck.com wrote:
>> Who uses telnet anyway? It's deprecated. Everyone uses ssh for any kind of remote access.
> 
> Indeed.  Yet:
> 
> Quite many people surely do still use a telnet client to access various
> older/smaller devices

Yes. I would hazard a guess that the largest cohort of devices running a 
telnet server are enterprise switches, gateways & routers. So many times 
over the years I've been surprised to find a switch I'm configuring has 
a telnet as well as the obligatory http(s) server available for the 
admin to login via.

Albeit to a lesser extent these days, and more likely BusyBox telnetd 
than InetUtils. But switches are one of the most likely pieces of kit to 
be forgotten about and left running for 10+ years in a closet without a 
firmware update. There are a LOT of old switches running out there.
