Received: (qmail 17485 invoked by uid 550); 3 Dec 2025 23:43:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1392 invoked from network); 3 Dec 2025 23:09:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=panix.com; s=panix;
	t=1764803365; bh=wIeBRpa9AQwYbTTV3ZLhjykAlHKTbYuI2xMxF+u3Knk=;
	h=Date:From:To:Cc:Subject:Reply-To:In-Reply-To:References;
	b=N9yVpsJXwyRiTOpfUFZgR4+qcmtyWdYxs3ejAYMNWCKQb3usUq2NCz+E6p3sSG0Ae
	 MX8mhYLJ4S+wiMggzSkMaFaVDUD3jG5OQBh10aWednq/b8RzZAHdgmr5htXNQkVEZu
	 Z4GUYxVQzHs0FYQiX2jmt1FC9T3ySoW2xkJBar9c=
MIME-Version: 1.0
Date: Wed, 03 Dec 2025 15:09:25 -0800
From: Greg Roelofs <roelofs@panix.com>
To: Cosmin Truta <ctruta@gmail.com>
Cc: Alan Coopersmith <alan.coopersmith@oracle.com>,
 oss-security@lists.openwall.com
Mail-Reply-To: newt@pobox.com
In-Reply-To: <CAAoVtZwm9yLRV_DgvVTmir8-eEfLxksUshTQ-EBpPf1Cz_Vf=A@mail.gmail.com>
References: <CAAoVtZwksfG-MFfhdamHt2SazD-n-_1HuZwXcRpRAJe_g3NDKg@mail.gmail.com>
 <7e93b4f6-2ccd-4859-97b4-d51d61b95694@oracle.com>
 <CAAoVtZwm9yLRV_DgvVTmir8-eEfLxksUshTQ-EBpPf1Cz_Vf=A@mail.gmail.com>
Message-ID: <1b4f6c556882843b58d84b0412264c58@panix.com>
X-Sender: roelofs@panix.com
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] libpng 1.6.52: Out-of-bounds vulnerability fixed:
 CVE-2025-66293

Fixed now, and many thanks to Alan! That oversight had been there since 
Glenn's death 7+ years ago.

Greg

On 2025-12-03 13:33, Cosmin Truta wrote:
> [Cc-ing Greg Roelofs, who owns and maintains libpng.org [1]]
> 
> On Wed, Dec 3, 2025 at 11:09 PM Alan Coopersmith
> <alan.coopersmith@oracle.com> wrote:
> 
>> Does this bug (and the recent bugs fixed in 1.6.51) not affect the
> older> branches of libpng, or is the statement that "libpng 1.2.x
> continues to get
>> security fixes, as has 1.0.x for well over a decade" on
>> https://libpng.org/pub/png/libpng.html no longer correct?
> 
> The good news is this: neither this bug nor the ones in the previous
> v1.6.51 release affect those ancient libpng releases. What these bugs
> DO affect is a thing called "the simplified libpng API", which was
> added in libpng-1.6.0.
> 
> The bad news is this:
> 
>> https://libpng.org/pub/png/libpng.html
> 
> I have seen that page a thousand times, and... yet... OOPSIE!!
> 
>> Is the statement on https://libpng.sourceforge.io/index.html that
> the older
>> branches "ARE NO LONGER UPDATED" and were frozen in 2017 the correct
> one now?
> 
> Yes, that is correct.
> 
> Sincerely,
> Cosmin
> 
> Links:
> ------
> [1] http://libpng.org
