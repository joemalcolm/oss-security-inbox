Received: (qmail 3774 invoked by uid 550); 13 May 2025 19:14:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3744 invoked from network); 13 May 2025 19:14:12 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3e; t=1747163643; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=KK03wgrhWz9vwseJrALSPbj385SsUEfcIpqxQ1MgQy4=;
	b=mKFvw+xBndwTzJjZvpD5e02Enq7GbuyejTBuAaRJs/V+UAB6Wap0zuOgOeSYIBKI+NEnOO
	J/YyBUAPeLju56DQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1747163643; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=KK03wgrhWz9vwseJrALSPbj385SsUEfcIpqxQ1MgQy4=;
	b=VpjtIItoMbhSkDmfcrclKkcxwAdrRToGrPmzfYraiEvGRd68FQjB69WyvdcHmwSuoJO/As
	BWHzRI6bC2AzROvvh8XS/2hPM4MCaVOVfheQ5jcIirWu+WhvikriV5VhdnTgKI39k1ZFVb
	QClSqrl3YupnPA2yUJsf0QPaa0ZmeUBvztBBQZCrqeSGcOvhe8lkbzOTmmHeyJV8GunZK1
	ngOtj7h10NmkDIb/pCMVDScJMsdaaPj3iCcQXXF0a2XjUFa4IlhNeKF/qdT4d0tui8rrwb
	Plskgx+GcUPLM/oA7+Qx/1Gbh6QUl3w9iQLQH9BBBj5+Mm6PQWnkdmqxuDeESA==
Date: Tue, 13 May 2025 20:14:03 +0100
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <sko4t7okzipikk7b3lwj3qgml5h7uc5t62tkj44wlu37zz27ja@mpse257ps566>
References: <A398F21D-1899-4061-A56A-8CDD5A31904E@graemef.net>
 <3f3dottw366msbyl7vknhxldyftyvkdz2an2iw5i5rdk24fc6k@drfe7sruxmtc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3f3dottw366msbyl7vknhxldyftyvkdz2an2iw5i5rdk24fc6k@drfe7sruxmtc>
Subject: Re: [oss-security] EU Vulnerability Database

On 2025/05/13 20:01, Stuart Henderson wrote:
> On 2025/05/13 19:43, Graeme Fowler wrote:
> > EUVD is in beta testing - given all the shenanigans with MITRE and CVE, it might be worth checking out.
> > 
> > https://euvd.enisa.europa.eu/about
> > 
> > Graeme
> 
> what a helpful website:
> 
> 403 Forbidden
> Microsoft-Azure-Application-Gateway/v2
> 

Hmm. Works after clearing cookies for europa.eu...
