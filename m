Received: (qmail 32012 invoked by uid 550); 11 May 2026 19:05:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31991 invoked from network); 11 May 2026 19:05:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pipping.org;
	s=manitu-webhosting; t=1778526326;
	bh=ZFCQ2QH2mXQ7rewdQ/enH1DxIlaBE6Qe2YbSQI8QxiM=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=1dzD2R749qjBoMCdIXhlUHSfbjSbfrGMihkpe2MdYXOHPxgh224bZ4ZjN+/6tYps8
	 RVyZxzBnHE/F5LDdz8jrFf7WqhZ1lhhmZjVDQnRJjQKJgyuL0l3p3afwturklfJJTA
	 Fn23gqr/sI7zw06K7PvMOmPfEgtOMdYK1CGl0ZsuHcsijqpQojdEkO/c2I//P7OLNQ
	 qwfGFkJEbS/c1C0h53rJesWyM/2+xtI1lwNuKnpWJyZ6HIP0/L6H/eaUqHtC4wBW2y
	 gMECedz3RQXHiSuaOV/aKQ+dgITaSvxlbqgIUuQOH0J0C/fBifMA8vQtoEUb9F3MJ8
	 6XgZ3qDIYXUQQ==
Message-ID: <19c81304-ee21-4ee1-9e24-8c601ec182ff@pipping.org>
Date: Mon, 11 May 2026 21:05:24 +0200
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <CAEMnaZL6=W00c8WyZjJykbHyTz67c5BsFVe4L3oKg-A_tx8Gmg@mail.gmail.com>
 <82e499f9-6702-457b-8e11-7d2d588db44e@oracle.com>
Content-Language: en-US
From: Sebastian Pipping <sebastian@pipping.org>
In-Reply-To: <82e499f9-6702-457b-8e11-7d2d588db44e@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security][CVE-2026-7210] Cpython: The expat and elementtree
 parsers use insufficient entropy for XML hash-flooding protection

On 5/11/26 19:20, Alan Coopersmith wrote:
> Fully mitigating this vulnerability requires both updating libexpat to 
> 2.8.0 or later and applying this patch.

This sentence ^^ deserves additional highlight. I confirm.

