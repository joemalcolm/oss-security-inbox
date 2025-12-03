Received: (qmail 28104 invoked by uid 550); 3 Dec 2025 13:28:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9428 invoked from network); 3 Dec 2025 12:43:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=greenbone.net;
	s=MBO0001; t=1764765822;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=czQm9LNwJbBKxMqs5Drg/Swre1qLqW7xzGXuwqZQ/Y4=;
	b=y2uCcTqqsDSHkGbOoPIVP/DTzf0JFifiFYTtZHTOS76dbpJULCLzR6qLlsQo0zTVtLCzdw
	hqdP6OTUbvqtDjWJXot6l/VS9pJm/Ig3KAehEG+EZT9mOObvmEiG1WudY5HuhEY0fNY8zR
	UMgRyGZaGWu6OSHVYUzwkdPo2cDq56Lh4BCv5bADu76JdGivsOwg56tmY3iWsCv52bfUBj
	7487bwZzY9lX3vtrZgJK4sdYZMHVJ9BJ6iECP1EKHBHYw6k8hAaUwZOx1udiA+8Sw1BXvW
	OSLN5JSXhBIfNaLu58EwGMahU863v9zfJlU/8AbwqvS3z9wMSE3qsyMn10TH2Q==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of christian.fischer@greenbone.net designates 2001:67c:2050:b231:465::2 as permitted sender) smtp.mailfrom=christian.fischer@greenbone.net
Content-Type: multipart/mixed; boundary="------------Y8joz2JOpKtpkVapzZUqp90y"
Message-ID: <c3748619-bb6f-4670-986d-613bd1404751@greenbone.net>
Date: Wed, 3 Dec 2025 13:43:40 +0100
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <2362c3be-360c-413b-be59-d15dd682deee@oracle.com>
 <aS33bPmVC5MVinXv@256bit.org>
 <5e016ff3-a121-4137-a5c5-b53f91f4ca91@greenbone.net>
 <aS8MFknR8ZPxcniJ@256bit.org>
Content-Language: en-US, de-DE
From: Christian Fischer <christian.fischer@greenbone.net>
Autocrypt: addr=christian.fischer@greenbone.net; keydata=
 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
 nSh/BvVF+Xp6Dow=
In-Reply-To: <aS8MFknR8ZPxcniJ@256bit.org>
Subject: Re: [oss-security] 5 CVE's fixed in Fluent Bit

--------------Y8joz2JOpKtpkVapzZUqp90y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/2/25 4:56 PM, Christian Brabandt wrote:
> Well, I have asked upstream
> https://github.com/fluent/fluent-bit/issues/11230 and they have
> confirmed and updated the blog post[1] to mention 4.0.13 as the proper
> backported fix.
> 
> I did not check or even verify the other versions.

Thanks a lot for the reference, this was a missing link so far.

As it only includes "I think it should be 4.0.13" and as i noticed that 
the linked blog post includes links to the relevant pull requests on 
GitHub i did a short own analysis here (also attached as plain text for 
archiving purposes):

https://github.com/fluent/fluent-bit/issues/11230#issuecomment-3606609133

My initial assumption/assessment is that four out of the five issues / 
CVEs are actually already fixed in 4.0.12 while one requires 4.0.13 for 
a "full" fix and 4.1.1 is currently still partly affected by that one.

I have forwarded this information to the Fluent Bit Security Team and 
asked them to publish official advisories for these CVEs as this could 
largely clear up some confusion / inconsistencies on the affected and 
fixed versions.
--------------Y8joz2JOpKtpkVapzZUqp90y
Content-Type: text/plain; charset=UTF-8; name="fluentbit_analysis.txt"
Content-Disposition: attachment; filename="fluentbit_analysis.txt"
Content-Transfer-Encoding: base64

SGVsbG8sCgphbmQgc29ycnkgZm9yIHRoZSBzaG9ydCBmb2xsb3ctdXAgYnV0IGkgbm90aWNlZCB0
aGF0IGh0dHBzOi8vZmx1ZW50Yml0LmlvL2Jsb2cvMjAyNS8xMC8yOC9zZWN1cml0eS12dWxuZXJh
YmlsaXRpZXMtYWRkcmVzc2VkLWluLWZsdWVudC1iaXQtdjQuMS1hbmQtYmFja3BvcnRlZC10by12
NC4wLyBpbmNsdWRlcyBsaW5rcyB0byB0aGUgcmVsYXRlZCAvIHJlbGV2YW50IFBSczoKCi0gaHR0
cHM6Ly9naXRodWIuY29tL2ZsdWVudC9mbHVlbnQtYml0L3B1bGwvMTA5NjEKLSBodHRwczovL2dp
dGh1Yi5jb20vZmx1ZW50L2ZsdWVudC1iaXQvcHVsbC8xMDk2NwotIGh0dHBzOi8vZ2l0aHViLmNv
bS9mbHVlbnQvZmx1ZW50LWJpdC9wdWxsLzEwOTY5Ci0gaHR0cHM6Ly9naXRodWIuY29tL2ZsdWVu
dC9mbHVlbnQtYml0L3B1bGwvMTA5NzIKLSBodHRwczovL2dpdGh1Yi5jb20vZmx1ZW50L2ZsdWVu
dC1iaXQvcHVsbC8xMDk3MwoKYW5kIGlmIHdlIGNoZWNrIC8gZm9sbG93IHRoZXNlIHdlIGNhbiBz
ZWUgZWFjaCBiYWNrcG9ydCB0byB0aGUgNC4wLnggYnJhbmNoOgoKLSBodHRwczovL2dpdGh1Yi5j
b20vZmx1ZW50L2ZsdWVudC1iaXQvcHVsbC8xMDk4MgotIGh0dHBzOi8vZ2l0aHViLmNvbS9mbHVl
bnQvZmx1ZW50LWJpdC9wdWxsLzEwOTkxCi0gaHR0cHM6Ly9naXRodWIuY29tL2ZsdWVudC9mbHVl
bnQtYml0L3B1bGwvMTA5ODMKLSBodHRwczovL2dpdGh1Yi5jb20vZmx1ZW50L2ZsdWVudC1iaXQv
cHVsbC8xMDk4NAotIGh0dHBzOi8vZ2l0aHViLmNvbS9mbHVlbnQvZmx1ZW50LWJpdC9wdWxsLzEw
OTg2CgpJZiBmaW5hbGx5IGNoZWNraW5nIGh0dHBzOi8vZ2l0aHViLmNvbS9mbHVlbnQvZmx1ZW50
LWJpdC9yZWxlYXNlcy90YWcvdjQuMC4xMiB3ZSBjYW4gc2VlIHRoYXQgdGhlc2UgUFJzIGFyZSBh
Y3R1YWxseSBpbmNsdWRlZCBpbiA0LjAuMTIgYW5kIG5vdCBpbiA0LjAuMTMuCgpPbmx5IGZvciB0
aGUgbGFzdCBpc3N1ZSAoQ1dFIDMwNiAtIE1pc3NpbmcgYXV0aGVudGljYXRpb24gaW4gaW5fZm9y
d2FyZCkgbWVudGlvbmVkIG9uIHRoZSBibG9nIHBvc3QgZm9sbG93LXVwIGZpeGVzIGhhdmUgYmVl
biBtYWRlIHZpYSB0aGVzZSBmb3IgNC4yLjA6Ci0gaHR0cHM6Ly9naXRodWIuY29tL2ZsdWVudC9m
bHVlbnQtYml0L3B1bGwvMTEwMjYKLSBodHRwczovL2dpdGh1Yi5jb20vZmx1ZW50L2ZsdWVudC1i
aXQvcHVsbC8xMTAyOAoKd2hpY2ggZW5kZWQgdXAgdmlhIHRoaXMgUFIgaW4gNC4wLjEzOgoKLSBo
dHRwczovL2dpdGh1Yi5jb20vZmx1ZW50L2ZsdWVudC1iaXQvcHVsbC8xMTAyOQoKTXkgaW5pdGlh
bCBhc3N1bXB0aW9uIGlzIHRoYXQgZm91ciBvdXQgb2YgdGhlIGZpdmUgaXNzdWVzIC8gQ1ZFcyBh
cmUgYWN0dWFsbHkgYWxyZWFkeSBmaXhlZCBpbiA0LjAuMTIgd2hpbGUgb25lIHJlcXVpcmVzIDQu
MC4xMyBmb3IgYSAiZnVsbCIgZml4IGFuZCA0LjEuMSBpcyBjdXJyZW50bHkgc3RpbGwgcGFydGx5
IGFmZmVjdGVkIGJ5IHRoYXQgb25lLgoKSSB0aGluayBhIHB1YmxpY2F0aW9uIG9mIHNlY3VyaXR5
IGFkdmlzb3JpZXMgb24gaHR0cHM6Ly9naXRodWIuY29tL2ZsdWVudC9mbHVlbnQtYml0L3NlY3Vy
aXR5IHdpdGggcmVsZXZhbnQgYWZmZWN0ZWQgYW5kIGZpeGVkIHZlcnNpb25zIHdpdGggYSBmb2xs
b3ctdXAgdXBkYXRlIHRvIHRoZSBibG9nIHBvc3QgY291bGQgbGFyZ2VseSBjbGVhciB1cCBzb21l
IGNvbmZ1c2lvbiAvIGluY29uc2lzdGVuY2llcyBvbiB0aGUgYWZmZWN0ZWQgYW5kIGZpeGVkIHZl
cnNpb25zLiAK

--------------Y8joz2JOpKtpkVapzZUqp90y--
