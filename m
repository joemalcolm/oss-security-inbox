Received: (qmail 27943 invoked by uid 550); 23 Jun 2023 07:02:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27916 invoked from network); 23 Jun 2023 07:02:05 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3e; t=1687503713; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to; bh=S7Xy6GN79KoK9D/1yYHyMoEBqUgm6oRrktGiT6DYhDE=;
	b=ah05EUBBSAVi/m+TjIwdDLOI1nDcgS4q6K2OgftB0wsWOFGmY07m8XlPnWh1cAijgAdleo
	2AxafAEit0DqCvAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1687503713; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to; bh=S7Xy6GN79KoK9D/1yYHyMoEBqUgm6oRrktGiT6DYhDE=;
	b=GrrzQYR2tMSCqNXlUcjV+IRut4LpyblUXYvDIgDf244HUf3WKJXSiMnYxfQPzWTm1E33De
	LmkWhNJOlqBs2K+d84TZaJ3QwNwhh00VP0WZOqgDLBL961N8BgDKVBIquxueT6MJzTW0/a
	v+TOEAp5/TMl/BXHu9VbI0oYA8sCoAiahM0IAm372m4Dl18GgXdHnEDh8tXOS1fSz02THz
	JfE6wB19t4YmApdqCT7kqUMvgYjhBu8A/fe1AGhktnFrsMX2+2vNPHXisV8PoKy1fyZ7Ib
	V3UIql5YANtoIPmw5cHhQkxiF52kwKEXEA1tKs4LP/9lm3H7HOzIwT0UQyL3Iw==
Date: Fri, 23 Jun 2023 08:01:53 +0100
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <ZJVDYZd5Q_cGtMcL@symphytum.spacehopper.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <72BCBA86-4192-47C9-ACA7-5F1A39994104@amazon.com>
 <CAH8yC8njh+1Q2QHvkN2pwAFWsL+v1HdxFYZYBDjk9h9qZHUcfA@mail.gmail.com>
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

On 2023/06/23 01:20, Smith, Stewart wrote:
> Even if you were doing all the wrong things and running a yasm-as-a-service continually building untrusted source right alongside other processes as the same user, that contain all sorts of things you don’t want exposed, I still don’t see how this would be anything but a 0.0.

Some are conflating "doesn't work how we want with our tools to find
leaks and vulnerabilities without extra work" with a vulnerability itself.

Still, this is just how the CVE system works, it's not imho really
useful as anything more than a ticket system tracking id to tie
together information about a particular thing which may/may not be
an actual problem (and possibly less useful than that).


On 2023/06/21 22:11, Jeffrey Walton wrote:
> Just ask the OpenJDK developers who had to contend with the OpenSSL
> memory leaks that exhausted all memory on Android devices. The

not GNU

> Another offender from GNU is ncurses. It leaks like a sieve, too.

also not GNU

