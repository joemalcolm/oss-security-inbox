Received: (qmail 22492 invoked by uid 550); 20 May 2026 10:31:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7766 invoked from network); 20 May 2026 10:27:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1779272840;
	bh=GlS9CPl2Mm3rVyj/Vd3zNNLt1VdRVUGP929Stu382n8=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=DpSHN5x2xEapkYmNiKgvO2Yt9JOciNVf1vfMBpcn7y3TjAY3613IRo2P3l7OOhFtj
	 Yrvuv2PE0fFkaPS9qWE4YIvvl3IfWMJ/FVySAtxaUz3/p6eiGHgCPYqVAKYF+Lc2m9
	 +JfLGAAppgTAGpELJ21Xz23HMqTgoXGqlF6PgyS49e+fEEYfXJrKEmxygruplQjrq6
	 yOzMCjukH6sIr+MjsumDWHV0pvGwuUEQ7Nig5TBLUcRv5qymMp5sP3rdpwtyJBmWi+
	 XXzJIlXXHCC15XhzCcCHWDyAnsDNz4bN51tALJBUQwfnpjr9oOFaHCwuf1T3dHyDXo
	 n/AtSjwc3yRJw==
MIME-Version: 1.0
Date: Wed, 20 May 2026 12:27:20 +0200
From: gabriel.corona@free.fr
To: oss-security@lists.openwall.com
In-Reply-To: <ag2Hgd1x2yLaVikw@definition.pseudorandom.co.uk>
References: <20260519203345.01f21f23@riseup.net>
 <ag2Hgd1x2yLaVikw@definition.pseudorandom.co.uk>
User-Agent: Webmail Free/1.6.14
Message-ID: <f8dba5904e172d3fb259bac24b259b2b@free.fr>
X-Sender: gabriel.corona@free.fr
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] PCManFM-Qt allows arbitrary files to be opened via
 the org.freedesktop.FileManager1.ShowFolders method

> But it's probably possible to reach a similar o.fd.FileManager1 call 
> from sandboxed code indirectly, by asking the OpenURI portal to open a 
> directory, which will try to dispatch it to a file manager.

If that is the case, PCManFM is certainly equally impacted by the 
sandbox escape scenario.

Regards,

Gabriel
