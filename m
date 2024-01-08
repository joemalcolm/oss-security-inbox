Received: (qmail 11885 invoked by uid 550); 8 Jan 2024 11:58:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9900 invoked from network); 8 Jan 2024 11:56:50 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 james.steelbluetech.co.uk 5D569BFC19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ehuk.net; s=default;
	t=1704715086; bh=PVB2PiQMjsY6BEfOGa0Avy7UfMuRskeoKEr9Qe7kW+Y=;
	h=Date:From:Subject:Reply-To:To:References:In-Reply-To:From;
	b=puyOLSYnYYND5ofUcFTY4XMZOcfZOhaF1awOGXNxS6a65pNJ59369AbtNuZD9ZQiP
	 1lTv1eq6O7AMFoyPweyZESk5/4+0n/uq7iiIHUUDTqYbmwe2Hazhtmsi2G76nwQImK
	 Pi0zCJrIafCej6vALmeWBgpgxDtcWrL5W49n5EGVVcAHjzUmz2rEev8jpwf2QcShXO
	 iuuWfza4e1oiEdS4CH9NX4wBZr6uEvkfx5v06HwL9Ng5U+dPYjgPbmWQ251YTife55
	 w1bujFSDJTN/GpPVQhUK5ZJ42zipVIeChVs8XlbRyOERk8XrbUqxJpO0o06QpORaC7
	 RuRYwtqP9KEnA==
Message-ID: <e5b767b2-373c-4fea-9bd2-1bbc1a2359a3@ehuk.net>
Date: Mon, 8 Jan 2024 11:58:06 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Eddie Chapman <eddie@ehuk.net>
To: oss-security@lists.openwall.com
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
 <20230314103626.3ucbt2rjdfhjbe6t@jwilk.net>
 <20230317114844.21563d9a.hanno@hboeck.de>
 <20230317194102.wvso2ex65fuwbukg@jwilk.net>
 <20230319091821.6f2073fb.hanno@hboeck.de>
 <20230321154519.xoymfc2t6ixalgls@jwilk.net>
 <20230324195650.6785dd20.hanno@hboeck.de>
 <20240108055242.nyoj4uosjl6udonx@jwilk.net>
Content-Language: en-GB
In-Reply-To: <20240108055242.nyoj4uosjl6udonx@jwilk.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

Jakub Wilk wrote:
> * Hanno Böck <hanno@hboeck.de>, 2023-03-24 19:56:
> 
>> Here's a proposed patch to restrict access to the dangerous
>> functionality.
> 
> This patch has been included in Linux v6.7:
> https://git.kernel.org/linus/8d1b43f6a6df7bcea20982ad376a000d90906b42
> 
> --
> Jakub Wilk
> 

FWICT neither this nor the 2022 TIOCSTI patch
https://git.kernel.org/linus/83efeeeb3d04b22aaed1df99bc70a48fe9d22c4d

have been backported to any earlier kernels (yet).

I'd like to ask, does anyone know if any other work was needed in 6.2 
and/or 6.7 in addition to these 2 simple patches? They weren't part of a 
series, or have necessary prerequisite patches, right?

I've no idea nor wish to comment on whether either of them should/should 
not be backported. However, each by themselves look quite minimal and 
straightforward. On the face of it, anyone building their own older 
kernel could probably easily backport either of them if they wanted, if 
indeed this is all that is needed.

Eddie
