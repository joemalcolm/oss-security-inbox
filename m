Received: (qmail 7798 invoked by uid 550); 14 Mar 2025 14:35:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3223 invoked from network); 14 Mar 2025 14:14:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=michel-slm.name;
	 h=cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1741961676;
	 x=1741965276; bh=hnKUmmt80+3u3IQ11Hv0mVeGG3ymBfHQjHx2Z0VPEOk=; b=
	AfkyN+ILwgvY334C37D99cBfxp9ug/lxlSt/Pc92uaQ7a93UvQqi3nbrYGHpFHT5
	4E2qogKDNw549kqsLZu4sJmOI0B27N4cBJCGKszwtE/sJkb6zCK1hIByjsHGy0gJ
	eaDPkiB/1wXijr5C96S1akb0GEd9G8vg8/qebElxkXgllrTKVjxH8oZM1x3rCMka
	Ey9gYJ0iSOcC+4m02Ghf83EzhjNICkalkir68fDTiZ1sfDkwoEmFsAxCEtDi3ZPg
	KlZpLhIEzHrEF2P8ggygt2DQdu4pYIQtUjYT2+cWFFP0b0RJzpnI2KdOft7tNMY4
	vx3BbaNtzX41pmluB0eotw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1741961676; x=1741965276; bh=h
	nKUmmt80+3u3IQ11Hv0mVeGG3ymBfHQjHx2Z0VPEOk=; b=wcBynYPCGIjw9XsYv
	CI7VybWIns38eoD0sx5+7EZ8dfjHv9tFmHeOXlZlA9E0pu5cPUdLaWTDy09zTFml
	LedNeLmFfVkeaTc+GAUmIMdvc1iMQ7nVwEh/VGoWSkIfOQu8yL1jV+adpZbTFrgo
	Icfz0/JyaJwo3vgyKD/Z0n7HDX57A30ejhzZtHUeCD7Lil5A0cYrh5ZAQ1h9D+Y/
	bXaz/WO7tl8ZFtEih4b9e1cP6u/OZTx3EaGgYBrm0pIvZ0SDoS9TdvQ8zgw3cmQT
	izvCYpnKDBI+3LuCRhO8iLlaseYI0iOz7DZzZjA8GltPoPhC9RiQiXmTtAVn+IqS
	31AzA==
X-ME-Sender: <xms:yznUZ4FqEQmsvCJNnXVQQikfiZng7jhElGPaojwkFFx0R9ividQlEA>
    <xme:yznUZxVb_NYHtG1QAqmf8ECK_KI9mUnbNOxcdhbvmqtnJJUEU7Kyvke6vo8XSXPOH
    Xx_Hqo-OEMhnEFprlU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddufedutdehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
    pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefogg
    ffhffvkfgjfhfutgfgsehtjeertdertddtnecuhfhrohhmpedfofhitghhvghlucfnihhn
    ugdfuceomhhitghhvghlsehmihgthhgvlhdqshhlmhdrnhgrmhgvqeenucggtffrrghtth
    gvrhhnpeeigfetleejgeeghefhvdevgffgudelheeuvdevkedvgeegvedtgfejfeeiffet
    gfenucffohhmrghinhepghhithhlrggsrdgtohhmpdhfrhgvvgguvghskhhtohhprdhorh
    hgpdhkvgihohigihguvgdrohhrghdpmhhitghhvghlqdhslhhmrdhnrghmvgenucevlhhu
    shhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmihgthhgvlhesmh
    hitghhvghlqdhslhhmrdhnrghmvgdpnhgspghrtghpthhtohepuddpmhhouggvpehsmhht
    phhouhhtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnh
    ifrghllhdrtghomh
X-ME-Proxy: <xmx:yznUZyL-A2hJQN8BMV_6oG3-ti0rrqK9Ts8iNHa06uisJu7RpU7wPQ>
    <xmx:yznUZ6EsQeillQqJmCwD6AOC8lEUjePYkfK55vd6cQpg4zQjEA1chQ>
    <xmx:yznUZ-VqiHDXqeqGI_mq5txpMOi5AITuAjmd-p-dpYSQScaXdZzxcw>
    <xmx:yznUZ9PdIRyk8tAoFUYWp2-ykEKmNTadEW7h1twaVYF16R34Fmc25A>
    <xmx:zDnUZ3VgvCmPCEfL3AgYefvzOEuUMQpLdbqwWlGP34QOgYxNffNGSlQw>
Feedback-ID: i71264891:Fastmail
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Fri, 14 Mar 2025 09:14:15 -0500
From: "Michel Lind" <michel@michel-slm.name>
To: oss-security@lists.openwall.com
Message-Id: <27e2f23c-464a-44d7-9b7b-0679a6d348fa@app.fastmail.com>
In-Reply-To: <d617f3e6-7e17-43f0-bb48-3969832627c4@canonical.com>
References: 
 <SA1PR15MB4840CBCB4D36E36C85723862DAD32@SA1PR15MB4840.namprd15.prod.outlook.com>
 <0e83fd0ed11d376814baaa98c1c3deed5ce50295.camel@michel-slm.name>
 <d617f3e6-7e17-43f0-bb48-3969832627c4@canonical.com>
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2025-27363: out of bounds write in FreeType <= 2.13.0



On Fri, Mar 14, 2025, at 7:55 AM, Marc Deslauriers wrote:
> Hi Michel,
>
> On 2025-03-13 22:54, Michel Lind wrote:
>> 
>> The fixes I'm working with both the Meta security folks and the EL
>> community (CentOS / AlmaLinux) can be tracked
>> herehttps://gitlab.com/redhat/centos-stream/rpms/freetype/-/merge_requests/8/diffs
>
> I think if you're removing the 4 "phantom points" from outline.n_point 
> and 
> outline.n_contours, you probably need to add them back in other places, 
> like the 
> parts you are missing from this patch does:
>
> https://gitlab.freedesktop.org/freetype/freetype/-/commit/47103b2f195e0f9664c9470182f063cb7d41dc9f
>
That's a good call. I've been slightly concerned about those 4 points too. Will probably have to cut another fix

> Is there a reproducer available for this CVE? I was thinking of just doing a 
> minimal fix for older freetype versions in Ubuntu, maybe something like this:
>
> -- a/src/truetype/ttgload.c
> +++ b/src/truetype/ttgload.c
> @@ -1957,6 +1957,13 @@
>
>           limit = (short)gloader->current.num_subglyphs;
>
> +        /* make sure this isn't negative as we're going to add 4 later */
> +        if ( limit < 0 )
> +        {
> +          error = FT_THROW( Invalid_Argument );
> +          goto Exit;
> +        }
> +
>           /* construct an outline structure for              */
>           /* communication with `TT_Vary_Apply_Glyph_Deltas' */
>           outline.n_points   = (short)( gloader->current.num_subglyphs + 4 );
>
>
I'll ask the security folks to weigh in again

Thanks,

-- 
 _o) Michel Lind
_( ) identities: https://keyoxide.org/5dce2e7e9c3b1cffd335c1d78b229d2f7ccc04f2
     README:     https://michel-slm.name/
