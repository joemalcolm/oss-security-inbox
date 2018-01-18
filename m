X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["853" "Thursday" "18" "January" "2018" "18:21:27" "+0100" "Matthias Fetzer" "admin@rofl.cat" "<40a5c55e-aef3-f900-9ad1-5b2d9931a07e@rofl.cat>" "20" "Re: [oss-security] How to deal with reporters who don't want their bugs fixed?" "^Date:" nil nil "1" "2018011817:21:27" "[oss-security] How to deal with reporters who don't want their bugs fixed?" (number mark "        admin@rofl.c Jan 18   20/853   " thread-indent "\"Re: [oss-security] How to deal with reporters who don't want their bugs fixed?\"\n") "<CAAnPYQ4Ck7uzf7FFOJX-H1GDOtnHDbXyZ_mzYztSK8O6DF4y7Q@mail.gmail.com>" ("<07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>" "<CAAnPYQ4Ck7uzf7FFOJX-H1GDOtnHDbXyZ_mzYztSK8O6DF4y7Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9959 invoked by uid 550); 18 Jan 2018 19:06:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5449 invoked from network); 18 Jan 2018 17:21:42 -0000
Authentication-Results: mx.rofl.cat (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)" header.d=rofl.cat
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rofl.cat; h=
	content-transfer-encoding:content-language:content-type
	:content-type:in-reply-to:mime-version:user-agent:date:date
	:message-id:from:from:references:to:subject:subject; s=dkim; t=
	1516296085; x=1517160086; bh=FcOQbXSBskLvY+4a7kMqexOQPEw1F1IO+2g
	4hG+v8u8=; b=hMWreigs6bXvNO6RVoj80QZEs8sKgr3D/ojBzwkedb9D+ZiXIc3
	ZZPP3dQFw95fdEmVpTK1pZB5vWZBGvFri/+/3J8ID32Dw20uF+FvVn6SxYBc5b3J
	5Jaz79Ydp5lazYyrQTZoTvRhruH+USGEBmGe4MFO9AVGn7AoinBKluABwYYE/k8Q
	UqZnkyCzjDQSdBSGd0r8KNH5Wkn5NCIcmzqSiL4zGopMEp2ImurzLUlatzr09zd8
	iaBe/E5BmjV201CYKiBjjtEoBTQThD4RHLmcDFzD1pAUNydxk66fB9BOv1CQ00ku
	2+0BMTdW99cia3uTxidSTPHY168smD/bu7Q==
X-Virus-Scanned: Debian amavisd-new at mx.rofl.cat
References: <07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>
 <CAAnPYQ4Ck7uzf7FFOJX-H1GDOtnHDbXyZ_mzYztSK8O6DF4y7Q@mail.gmail.com>
Message-ID: <40a5c55e-aef3-f900-9ad1-5b2d9931a07e@rofl.cat>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAAnPYQ4Ck7uzf7FFOJX-H1GDOtnHDbXyZ_mzYztSK8O6DF4y7Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Date: Thu, 18 Jan 2018 18:21:27 +0100
From: Matthias Fetzer <admin@rofl.cat>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to deal with reporters who don't want their
 bugs fixed?
To: oss-security@lists.openwall.com

Hi Gynvael,

On 01/18/2018 06:06 PM, Gynvael Coldwind wrote:
> On the other hand there are reasons for embargoes which I don't find valid,
> where the examples you've given ("paper/conference presentation/patent
> submission") fall into this category.
> They don't sound as something that would benefit users' security (please
> correct me if I'm wrong) and I'm not a big fan of sitting on already
> discovered unpatched security bugs (in the end bug discovery might be a
> function of time for all we know).

Well. The result might be, that they will *not* report the vulnerability
at all, but publish their findings as a 0day at a conference. So the
users security highly benefits, if patches are available right
before/after/during the conference.

This is not the best case, but still better than unpatched, published 0days.

Best regards,
Matthias
