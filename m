Received: (qmail 13368 invoked by uid 550); 14 Nov 2025 07:53:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13512 invoked from network); 14 Nov 2025 07:48:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=schafweide.org;
	s=2007; t=1763106525;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=DkGVkBoeJ7poI1koqIf1VEmn/2cIMhyvB/ZgNrpBp00=;
	b=iySp4I1zqlmGa2scTu8CyCH6GzZvFxUkN/G5QltM8fNVa4EvCWRbA0KaO3uMH6B2JDnobq
	Xgnqgl6je7e23U2uD/8lqcqDgms1Tjozj1RkpNjuMIv1e2J5mCrMn2m9OZ+qFQa9iywHND
	42IpqKGB+afEoniNrb3JOmUJH+raLvs=
Message-ID: <70e25a3d-7652-44da-8e4d-4e0a2e3a7a63@schafweide.org>
Date: Fri, 14 Nov 2025 08:48:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
Content-Language: de-DE, en-US
From: Bjoern Franke <bjo@schafweide.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-40300 / VMScape

Hi,

I stumbled at work upon CVE-2025-40300 (as it caused Ubuntus USN-7860-1) 
and was wondering that it wasn't mentioned on this list. Usually CVEs 
are posted here before some distro specific fixes appear.

Regards
Bjoern
