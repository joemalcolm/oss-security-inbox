Received: (qmail 17553 invoked by uid 550); 29 Jan 2026 17:21:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17532 invoked from network); 29 Jan 2026 17:21:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pipping.org;
	s=manitu-webhosting; t=1769707256;
	bh=Ak4kBUgN9lLqY6ScP/OWZa/6B0lGm66kx1Bu4xIpWbo=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=wDsTAAKJjktzNMZ5IOLqgeEcM5Fa8QWwnafqmsCOZISNezmTV35fQp47fDicrR6rW
	 zpQLCtnmmLJyCrVlN2zmEbgbmgkKGViCt7Jhk2t4hNaeTV8UcKQ8aSa0b9a53b87FJ
	 n2AtlYF+XILwT4XTTa0Vpmtss7AcVoNLakC7rLdCBzfn+JwLu2sGfJbR2QjjO7EVw0
	 OYpjaHvFZlLuOzMgQL9USCKMzTH6fBqo/Ze8rLZKlYs996r8XLiFtrU/6Q+btJM4tb
	 MDi0vFJqVXdlTplyaGOgZcqc8zEwMzT4F/IptFsIRLIdHQSXMvH1lc7kxoiBDNqUe1
	 SYkX1TfXIO9IA==
Message-ID: <fa8cf739-4934-4e65-a59a-d895b4aadf3b@pipping.org>
Date: Thu, 29 Jan 2026 18:20:55 +0100
MIME-Version: 1.0
To: oss-security@lists.openwall.com, Jakub Wilk <jwilk@jwilk.net>
References: <7d323bf4-91fb-4bee-aed4-e5f3757c3631@oracle.com>
 <072c05eb-c9fe-46b1-9601-552ca09cb083@oracle.com>
 <20260129162602.46ymqnlk2ixipsjn@jwilk.net>
Content-Language: en-US
From: Sebastian Pipping <sebastian@pipping.org>
In-Reply-To: <20260129162602.46ymqnlk2ixipsjn@jwilk.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2025-56005 Undocumented RCE in PLY via
 `picklefile` Parameter

> I don't know what uv is, [..]

uv is https://docs.astral.sh/uv/


