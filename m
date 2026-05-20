Received: (qmail 32348 invoked by uid 550); 20 May 2026 10:44:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20292 invoked from network); 20 May 2026 10:41:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1779273683;
	bh=4boj2m/7RoqbCLbBvARVZZ2UAjxtlQGMY5kEkL+cTGU=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=pXsS36JlNdr8Y2YE7Un0YXYF02vEU0x/l+OdL1q6puY5f7rQV3wVWB88QsOHRLaIi
	 CENxJpzRU8USWY+5STfceSlUE87PiR0JdlnQ/JiiSSKbGHInfVlgatN3QihpubjnaB
	 d1cWhxgiKrQaDxKY//8UsINXibtCzJBw1CSaOycFr130XVrY01Xc4puRIZe6rap5qN
	 lM5xlhV7XMnhTSdRcsh0SitPKwtLLwDxRJkyJnS18lfjwlMLpKAgOE+HbKmO68f0TC
	 5xcbcmiMMQwZ5vJ/glrWj68C3NND+WKcQS/Q+O+Kz3/BAFn037Ww8dvX0IJ8m3U/oh
	 lzXj1L8p4lZbg==
MIME-Version: 1.0
Date: Wed, 20 May 2026 12:41:23 +0200
From: gabriel.corona@free.fr
To: oss-security@lists.openwall.com
In-Reply-To: <20260519203345.01f21f23@riseup.net>
References: <20260519203345.01f21f23@riseup.net>
User-Agent: Webmail Free/1.6.14
Message-ID: <d6b157bf500fefea7bafa7a0c0f00c6e@free.fr>
X-Sender: gabriel.corona@free.fr
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] PCManFM-Qt allows arbitrary files to be opened via
 the org.freedesktop.FileManager1.ShowFolders method

> Checking whether a path is a file or
> directory can block I/O under special circumstances; so, it isn't an
> option in this case."

I am not sure I am following that argument …

When I am calling "$file-manager $some-path", I should be expecting to 
actually
open up a file manager not something else which happens to actually 
handle the file.
The file manager should not try to delegate to another program at all.

If we want the "automagically call the correct program" functionality,
we can use xdg-open / kde-open / dde-open / gnome-open / exo-open /
org.freedesktop.portal.OpenURI.OpenFile.

Gabriel
