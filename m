Received: (qmail 16234 invoked by uid 550); 18 Jan 2026 01:56:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16183 invoked from network); 18 Jan 2026 01:56:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1768701351; bh=goeOspi5FxBNDDT1Efp3SrN5AOTpVN3xRy4LiwqDMVA=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=CbprfNrkFxinKEWiYOjZp+K/K88m4DqEjKCNVQpzwO5SkcZwy+Aqtl5FPFKhOMH0C
	 Copr69/uajYp+1Z9DbJUMGAdClB6jnA7YdzufmbmVt2NwilmdD2dyXPjVdXTjbpcGU
	 5hzY2xKlLNpDJSI4FMCfId3ZfBH91/ZT9aL9qFjo=
Date: Sat, 17 Jan 2026 20:55:50 -0500
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Message-ID: <aWw9pvIvulohwgSg@mertle>
References: <7ae55330-061d-41d6-a2c0-e83b2ba16235@oracle.com>
 <61dcfcad-c04d-4cef-9d2b-105e97048043@icloud.com>
 <874iojkfl9.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <874iojkfl9.fsf@gmail.com>
Subject: Re: [oss-security] CVE-2025-8110 in Gogs self-hosted git service

On 2026-01-17 15:02:42, Collin Funk wrote:
> 
> This just introduces TOCTOU races, no?
> 
> If someone can delete a portion of "opts.NewTreeName" and recreate an
> element as a symbolic link before "os.MkdirAll" is executed, they would
> be able to achieve the same thing as before the patch.
> 
> Surely Go has a way to use O_NOFOLLOW, right? That would be the correct
> way to do it.

I have not looked at the actual issue here, but in general even
O_NOFOLLOW is insufficient, because it only affects the trailing path
component. To avoid symlinks in other components, you must carefully
openat() each path component, one at a time, starting from the root.
