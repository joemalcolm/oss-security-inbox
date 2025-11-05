Received: (qmail 29894 invoked by uid 550); 5 Nov 2025 14:56:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22142 invoked from network); 5 Nov 2025 02:43:12 -0000
Message-ID: <46e47266-347a-4ebd-a400-86267ead39ac@treenet.co.nz>
Date: Wed, 5 Nov 2025 15:43:02 +1300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <6b3baf54-147d-4dce-a2c8-3cf77181030d@treenet.co.nz>
 <20251105000946.GA30872@openwall.com>
Content-Language: en-US
From: Amos Jeffries <squid3@treenet.co.nz>
In-Reply-To: <20251105000946.GA30872@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] [CVE-2019-18860] SQUID-2023:6 Cross Site Scripting
 in cachemgr.cgi

On 05/11/2025 13:09, Solar Designer wrote:
 > Hi,
 >
 > Thank you for posting this, but I'm afraid it is confusing:
 >
 > On Wed, Nov 05, 2025 at 11:26:14AM +1300, Amos Jeffries wrote:
 >>      Squid Proxy Cache Security Update Advisory SQUID-2023:6
 >
 >> Advisory ID:       | SQUID-2023:6 (CVE-2019-18860)
 >> Date:              | November 5, 2025
 >
 > OK, so it's an advisory from 2023 for a CVE from 2019 (or for an issue
 > first disclosed in 2019), which was updated in 2025.  This brings up the
 > question of what those updates in 2025 are...


Okay, to clarify;

The 2025 change is a new patch for the secondary attack vector reported 
in 2020. Which should have been part of Squid v6.7 cachemgr.cgi and 
sadly omitted. Mea culpa on that.

That omission means *all* cachemgr.cgi released by the Squid Project 
have been vulnerable and need the new v6 patch applied.
  If the previous v4 patch for this CVE was applied, then it will still 
need the new one applied on top.

The tool is no longer published upstream, so there will not be an 
officially fixed version released.


> 
>> Revision history:
>>
>>   2019-10-18 20:15:14 UTC Initial Report
>>   2019-11-03 16:22:22 UTC Initial Patches Released
>>   2020-03-31 11:07:35 UTC Additional Report
> 
> ...but the revision history starts in 2019 (before the advisory year?!)
> and ends in 2020.
> 

(oops, thanks I have updated the github text)


Cheers
Amos
