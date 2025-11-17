Received: (qmail 1391 invoked by uid 550); 17 Nov 2025 13:19:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13348 invoked from network); 17 Nov 2025 13:14:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=schafweide.org;
	s=2007; t=1763385280;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y2NxGQx9kgAY2STvGqAZ+MUB+3jBEOsNF8QmDOMAxBY=;
	b=ZNFvqkoI6BNSZN31MX0VWhqIWuVCHcAsjFEJZHlTRvOrDK4Aa+8OPFVS7ivmthh81V8phi
	9TyXkCP9sSgbl5APQw4Q5nzC+DI0eVIBdGz/NcHhuL8S43e3TpUhFx1jSsT3q3AJGP0ItS
	hvxPHLZHfPyJEAO0d3jSQdnTYnYW5yI=
Message-ID: <38e5d24d-80a9-4f56-9d6d-153cba1ef040@schafweide.org>
Date: Mon, 17 Nov 2025 14:14:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <70e25a3d-7652-44da-8e4d-4e0a2e3a7a63@schafweide.org>
 <a6aa04d0-eb96-4d87-b7d4-b37838b05ce0@oracle.com>
Content-Language: de-DE, en-US
From: Bjoern Franke <bjo@schafweide.org>
In-Reply-To: <a6aa04d0-eb96-4d87-b7d4-b37838b05ce0@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2025-40300 / VMScape

Hi Alan,


> 
> The CPU vendors have their own methods for alerting OS & Hypervisor makers of
> CPU-level security issues in advance of publication, that don't flow through
> the distros lists or this list, so fixes for those often happen without any
> notice here.
> 
> For other CVEs, it really depends on whether the project includes this list
> in their notification process, or some volunteer notices them and forwards
> the information to the list.  Many still slip through the cracks.

Thanks for your explanation!

Regards
Bjoern
