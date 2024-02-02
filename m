Received: (qmail 31839 invoked by uid 550); 2 Feb 2024 08:26:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15429 invoked from network); 2 Feb 2024 03:51:08 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="2001:470:8:809::1010" (mail.gathman.org); auth=pass (CRAM-MD5 sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1706845975; 
 h=date : from : to : subject : in-reply-to : message-id : 
 references : mime-version : content-type : date : from : 
 subject; bh=o9LQkQJfINwQAzXZNN/n9p9xGF1CQTBiRW9ubkkN/c4=; 
 b=Hc5PFuZuRoTzpvieiALDwHNufeDEtDl6gUUqxSSnXR3eLRd0sXL7FP1c
 bji+5GJNYJjDsGgnEUIzZZTACJgdm9P3V1t9HTRx18kRNsorElnyVVoKtv
 MPMdKTTv8LkJ7p2RkBOHDQUGLB9umA0IwFrNhUGXpmAQY1YkPe/FhGQ+k=
Date: Thu, 1 Feb 2024 22:52:54 -0500 (EST)
From: Stuart D Gathman <stuart@gathman.org>
To: oss-security@lists.openwall.com
In-Reply-To: <CAFRnB2UBm6VXnK3te6NaZ6AQWHjYWe8XSWdWN3CD6TWyYzfUZA@mail.gmail.com>
Message-ID: <916012b9-ff3-c1fe-6456-0f6fccdd234@gathman.org>
References: <20240201123100.42ba1334.hanno@hboeck.de> <CAFRnB2UBm6VXnK3te6NaZ6AQWHjYWe8XSWdWN3CD6TWyYzfUZA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] Python standard library defaults to insecure TLS
 for mail protocols

On Thu, 1 Feb 2024, Alex Gaynor wrote:

> I'm the original author of PEP 476, which made certificate
> verification on by default for TLS. In 2014 I scoped it to HTTPS-only

>> By default, the mail protocol functions in Python's standard library do
>> not validate certificates for TLS connections. The API is surprising
>> and unintuitive. This is not a new issue, but I was surprised to learn
>> about it. Therefore, I'm sharing it here so more people know.

The API is the key issue for me.  Cabal CAs can forge certs anytime
they want anyway.  Ideally, the API would support PKCS#11, but more
importantly, IMO, there should be a simplified API where it defaults
to "trust the CABAL", but there is a callback to "veto" certs. E.g.
"only trust CA-X for these domains" would be something easy to
understand and implement in a callback.
