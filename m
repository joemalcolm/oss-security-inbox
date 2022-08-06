Received: (qmail 25822 invoked by uid 550); 6 Aug 2022 11:41:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26037 invoked from network); 6 Aug 2022 09:07:42 -0000
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vulndisco.cc; s=mail; t=1659776799;
	bh=HBN9hLaNeiGjNAvLD2KPHrxv4JcgMNxkVuwcgrQeMGA=;
	h=Subject:From:To:Date:Message-ID;
	b=YADgIzkqicaX+RcuCb3ZV6jRjkqT+UOGvXC5ksNrDvTaRKTvU41ABST/5uHpWzZQ+
	 lvrU0o90ga673xL2TzpdEZiS4jnfiitBHdXhdRTDyfE5005Bg2brF+LbHGMstMNEqc
	 FCftpPiPTccdXMTiEINHJkYEi1Y3ML/AA376qT4g=
Authentication-Results: sas8-9a72d639b2ad.qloud-c.yandex.net; dkim=pass header.i=@vulndisco.cc
Message-ID: <2007d258-97ab-fb3c-bfa8-0544c63ec1b8@vulndisco.cc>
Date: Sat, 6 Aug 2022 12:06:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Evgeny Legerov <admin@vulndisco.cc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Exim 4.95 invalid free

Hi,


The issue has been silently fixed in Exim 4.96 - 
https://github.com/ivd38/exim_invalid_free



regards,

-e

