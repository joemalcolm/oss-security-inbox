Received: (qmail 7800 invoked by uid 550); 30 Mar 2024 13:11:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13351 invoked from network); 30 Mar 2024 13:06:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=schafweide.org;
	s=2007; t=1711803999;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sFkE8hwu3BW2P+4auVMFyrQ5N8slYwqoWi0R5w4D/e8=;
	b=GOztADrcebqSkRBpyco9D/nY/Y7SFjqtio2GRklbJ1CNydV2vj4lZH5mtgpXMgzIGp80UJ
	RJAJyuX5VjIuD34fK0uPFa8Tn5ftW9vNrcov8Uy50iElnDF3M4OP5i/DPKPc5wnd84f2xM
	YofoxgbtvLykeo6/AKYoUQmwjQy03o4=
Message-ID: <72a9dfe5-a88d-4711-bc90-cd9269124f08@schafweide.org>
Date: Sat, 30 Mar 2024 14:06:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io>
 <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
 <uu7g5q$8hl$1@ciao.gmane.io> <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
 <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com>
 <uu7k2m$61a$1@ciao.gmane.io>
 <CAOp4FwT+kqoG1JRawFu6tkz0LUMgkT9RCVfh7vyaN3bbFkYx3Q@mail.gmail.com>
Content-Language: de-DE
From: Bjoern Franke <bjo@schafweide.org>
In-Reply-To: <CAOp4FwT+kqoG1JRawFu6tkz0LUMgkT9RCVfh7vyaN3bbFkYx3Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh
 server compromise

Am 30.03.24 um 04:50 schrieb Loganaden Velvindron:
> Github has suspended the repo:
> 
> 
> https://github.com/tukaani-project/xz
> 
> Im wondering what is the next step for the xz project as a whole ?
> 

https://git.tukaani.org/?p=xz.git;a=summary exists and Lasse said on IRC 
he thinks he would make a clean 5.6.2 release.

Regards
Bjoern



