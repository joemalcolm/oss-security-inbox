Received: (qmail 11349 invoked by uid 550); 9 May 2022 11:51:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30277 invoked from network); 9 May 2022 09:46:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=activis.me; s=dkim;
	t=1652089565;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yWM8BYnrB8cJZr/ON+4KaGdGFlzJVux9c/cAguvZMNk=;
	b=LoeyIeQMSK7NeHm3vwfHlSC4JN3i2y3tW/Y5+fA8dAwAPzMW3CeA6eTfmNZHkIuNBo6dWh
	1RyzOnGmBTIJkwmlfp57S78svcRB4HM53Lcqea9sGV79WOvkguqrjE5pD/STQ/g42BfHyY
	2HQf9rfdhwQ3Bk3kMD/jlRwjZYKOCl4EZftAbryvXemdiArsiHxfhHJVhBuHJ9o2BbfyvS
	NVXWNZ5Ywg2hBJWtzzfK1jwsfKLrHYqyxwpIsGtEnAAzCSQ3tvMXIt2q0evFF7EwMlkJVc
	7lwp4aKswG/1LVJEqSaM8znaNi/i8OccgC1FGQBLPne4jQHM6SoP/ksqT3qgcw==
Message-ID: <76ef068a-c6d3-109d-6e70-84007151f487@activis.me>
Date: Mon, 9 May 2022 13:46:00 +0400
MIME-Version: 1.0
Content-Language: fr-FR
To: Jan Lehnardt <jan@apache.org>
Cc: oss-security@lists.openwall.com,
 Security CouchDB <security@couchdb.apache.org>
References: <a388a13c-2f49-a36d-668a-633583013717@apache.org>
 <62df0f69-5768-80ea-9dbf-f3e1c6f1e69c@activis.me>
 <063FB760-CBFF-4669-9BDD-49B9D1CD56DD@apache.org>
From: Archange <archange@activis.me>
In-Reply-To: <063FB760-CBFF-4669-9BDD-49B9D1CD56DD@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2022-24706: Apache CouchDB: Remote Code
 Execution Vulnerability in Packaging

Le 09/05/2022 à 13:41, Jan Lehnardt a écrit :
> Hi Bruno,
>
> first of all, thanks for maintaining CouchDB for Arch. Secondly, for any security related questions, please do not hesitate to contact security@couchdb.apache.org instead of any one of the team individually, as we can’t know if any of is available at all times (vacations and whatnot :)

Sure, you should put this address in copy when posting to oss-security 
then, so you would be sure people reply to that one too. ;)

> As for your questions, see this PR to our packaging infrastructure for how we handle this on Debian and Centos/Rocky: https://github.com/apache/couchdb-pkg/pull/92/files

Thanks, so you use a default env file to set the variable and allow 
people to easily change it in the case of a clustered setup. Will do so 
as well then!

Regards,
Bruno

