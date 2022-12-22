Received: (qmail 5931 invoked by uid 550); 22 Dec 2022 22:33:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9996 invoked from network); 22 Dec 2022 22:03:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
	t=1671746630; bh=J9cbmNLcnEnCzcBsTSDM83r/CZk2MSdV+XdK2UiVhRg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=yrc8ExY0fLJTTRWHTlch4Cyxv5EtIeitomlHj/m+ith2ighEVLQ6n2zRleruRC6iK
	 qZfblkCg9qAB1MZ2kwCJHpAfuvPggLa863smMTButGcD9cRu+sniJ9RDZFT4Tar5j+
	 Q3ZajyhrLBW7JKD/HySrXL4tKtMQKDLpTNnzAX+cv4VOJ0aClp2E/N91/ZL6Lr5kz/
	 ID7/p/lu7O0czxyVNVwaGDY6hWIqiMA1UO0lw3+/P79cbPGbhf1RLr0RzTsSjgkIcm
	 UzmXioU+AKcv9ooLREIlB8SpKxfgakyELc4UNtelHklGoEkuhUWRFH2sKq+wvpVN/G
	 b3/zZaoMAL/kQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
	t=1671746629; bh=J9cbmNLcnEnCzcBsTSDM83r/CZk2MSdV+XdK2UiVhRg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sN5SexYGLTywPu95AlPDl6xzCCf0WMMlvUROicG3DAfP5QeDpfD3rcxAiY9/y5fK7
	 pWLoEi7+tJJftjgsMEDsss8t3v6SGZMPQScgFS2UJzUeSfi/DfEzsos+rzGgkOiZR/
	 zhsYkZn+kJHISFOrv2bqWpZra6OeevrzOG0RrtlfQhlTFkSeZmdJpIm2vvtFpC2XbU
	 CQ3VCHYcAjs3g1+UsTI5oOYlAPc4xSEVKmx5+PhHHT6ClGjWAEfyBd1VZkA6cYMmVW
	 X9TjGhXQqZBr9IeRLFvKBpXMOEfs3a4LT41SunCI2nJACJE9jKRxurz1tE562ICieL
	 zrYXBCYgZLijg==
Date: Fri, 23 Dec 2022 07:03:17 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: oss-security@lists.openwall.com
Cc: Alejandro Colomar <alx.manpages@gmail.com>,
	Michael Kerrisk <mtk.manpages@gmail.com>,
	linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
Message-ID: <Y6TUJcr/IHrsTE0W@codewreck.org>
References: <Y6SJDbKBk471KE4k@p183>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Y6SJDbKBk471KE4k@p183>
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly

Alexey Dobriyan wrote on Thu, Dec 22, 2022 at 07:42:53PM +0300:
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -2092,6 +2092,11 @@ Strings longer than
>  .B TASK_COMM_LEN
>  (16) characters (including the terminating null byte) are silently truncated.
>  This is visible whether or not the executable is swapped out.
> +
> +Note that \fIcomm\fP can contain space and closing parenthesis characters. 
> +Parsing /proc/${pid}/stat with split() or equivalent, or scanf(3) isn't
> +reliable. The correct way is to locate closing parenthesis with strrchr(')')
> +from the end of the buffer and parse integers from there.

That's still not enough unless new lines are escaped, which they aren't:

$ echo -n 'test) 0 0 0
' > /proc/$$/comm
$ cat /proc/$$/stat
71076 (test) 0 0 0
) S 71075 71076 71076 34840 71192 4194304 6623 6824 0 0 10 3 2 7 20 0 1 0 36396573 15208448 2888 18446744073709551615 94173281726464 94173282650929 140734972513568 0 0 0 65536 3686404 1266761467 1 0 0 17 1 0 0 0 0 0 94173282892592 94173282940880 94173287231488 140734972522071 140734972522076 140734972522076 140734972526574 0

The silver lining here is that comm length is rather small (16) so we
cannot emulate full lines and a very careful process could notice that
there are not enough fields after the last parenthesis... So just look
for the last closing parenthesis in the next line and try again?

But, really, I just don't see how this can practically be said to be parsable...

-- 
Dominique Martinet | Asmadeus
