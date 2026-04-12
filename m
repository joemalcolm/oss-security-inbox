Received: (qmail 13379 invoked by uid 550); 12 Apr 2026 23:11:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28601 invoked from network); 12 Apr 2026 16:14:31 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 0B1F43C033C26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1776010461;
	bh=dcXmyJSF0JD553E/nxlICoyn1IamQxxdwBBtJfNl76Y=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=P0M6YmK0D48yOC1J2Hbvhg7Ivy211+7SHiLzUgSlp8ywBAsg+IcXlo+7Xb/bWfz/5
	 okARiKnZjpuo2zAKxefrLLfQlTuxfUCEPiMjXFf3YWlvhduQH28zi+ajchbmz1Sh5s
	 zCoLGfYZhVUj5pawqbL5758bHqqsWGMSEiAYRl+FHuvnvoRAYAJw/JBWYLtQYTKz62
	 KWdgQ8VREylJkxAy21I3kj6s8sch7EJJwGQZxgISlst7MkKOUDKiSigVYqMlvrxXzN
	 B5e2o3qT/WMAy/iLVnsJZI0KMNYmM2n9MRD+bWlMzNEu/RvUI0RHzFeCUE8dqVJKEK
	 MGlG3iVJDpSxw==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Message-ID: <fa8031b0-b1fb-4412-ad30-5fb11c3e5752@cs.ucla.edu>
Date: Sun, 12 Apr 2026 09:14:20 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Collin Funk <collin.funk1@gmail.com>, oss-security@lists.openwall.com
Cc: Vahagn Vardanian <vahagn@redrays.io>
References: <e9445380-c50f-4385-93fb-02fbeec634af@oracle.com>
 <20260412030203.GA27554@openwall.com> <87ik9wzumr.fsf@gmail.com>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <87ik9wzumr.fsf@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] GNU tar: listing/extraction desynchronization
 allows hidden file injection

On 2026-04-11 21:10, Collin Funk wrote:
> I didn't look much at the others since I am not very familiar with tar.
> Hopefully Paul can quickly tell if they are bogus or not.

Yes, it's on my list of things to look at. As Collin hinted, much of 
that bug report is AI slop and this is why it's low priority for me.
