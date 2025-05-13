Received: (qmail 15674 invoked by uid 550); 13 May 2025 00:48:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15635 invoked from network); 13 May 2025 00:48:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ucc.asn.au;
	s=ucc-2016-3; t=1747097280;
	bh=hoftCHrYpD+FBP2/Uz040kHQh7YKSL5BqDWK30LB8CQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=n62RS3QteUtu5oxnvW29bqLxN6gRJGHz6rLk6yvNhqD2As2Ze1+NQ4GUazylNUduz
	 H4Wr6N4QmRlv5CL6NsfJZ2bfRg48reflnNQxzbsn9UvIh0lJqe4nIQ6zRqBbZ9eU0Z
	 lrc/MjW1HRl4QbULZQjXXH8WuWdPTTMGy5KfdI2M=
Authentication-Results: OpenDMARC; dmarc=pass (p=none dis=none) header.from=ucc.asn.au
Authentication-Results: OpenDMARC; spf=pass smtp.mailfrom=ucc.asn.au
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ucc.asn.au;
	s=ucc-2016-3; t=1747097280;
	bh=hoftCHrYpD+FBP2/Uz040kHQh7YKSL5BqDWK30LB8CQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=n62RS3QteUtu5oxnvW29bqLxN6gRJGHz6rLk6yvNhqD2As2Ze1+NQ4GUazylNUduz
	 H4Wr6N4QmRlv5CL6NsfJZ2bfRg48reflnNQxzbsn9UvIh0lJqe4nIQ6zRqBbZ9eU0Z
	 lrc/MjW1HRl4QbULZQjXXH8WuWdPTTMGy5KfdI2M=
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date: Tue, 13 May 2025 08:47:58 +0800
From: Matt Johnston <matt@ucc.asn.au>
To: oss-security@lists.openwall.com
Cc: Albert Veli <albert.veli@gmail.com>
In-Reply-To: <42b72ad8-61d2-48f6-9d29-0774149e344e@gmail.com>
References: <23c5cd0c-2a9b-4caa-a936-381210400cc2@oracle.com>
 <42b72ad8-61d2-48f6-9d29-0774149e344e@gmail.com>
Message-ID: <f4a0fa7f299ca02b5cf46a805d9c989c@ucc.asn.au>
X-Sender: matt@ucc.asn.au
User-Agent: Roundcube Webmail/1.3.17
Subject: Re: [oss-security] Dropbear SSH 2025.88 fixes CVE-2025-47203

Hi Albert,

2024.86 is affected.

On 2025-05-13 2:47 am, Albert Veli wrote:

> I'm currently triaging CVE-2025-47203 to determine whether an embedded
> system we maintain is actually affected. It runs 2024.86, and is built
> with DROPBEAR_CLI_PROXYCMD and DROPBEAR_CLI_MULTIHOP enabled.
> 
> However, despite attempting various multihop hostname inputs
> containing shell metacharacters (e.g. semicolons, backticks, pipes,
> $(cmd)), I’ve been unable to trigger any shell execution or command
> injection. All such inputs are interpreted literally as hostnames.
> 
> I have two main questions:
> 
> 1. Is there a reliable way to confirm from the command line whether
> I'm vulnerable?

dbclient 'localhost,|touch 123 '

stdout is captured, stderr isn't.

> 2. Both dbclient and ssh are symlinks to the same dropbear binary.
> Does this CVE apply equally to both, or is it specific to dbclient?

It applies to both.

Cheers,
Matt
