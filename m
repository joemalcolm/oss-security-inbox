Received: (qmail 3462 invoked by uid 550); 7 Apr 2022 09:41:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13848 invoked from network); 7 Apr 2022 09:17:56 -0000
X-F-Verdict: SPFVALID
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tsmtp0001.email;
	s=titan1; t=1649323064;
	bh=4e7JksPWQD9cdhRlKqfQX3CESoRr6Fp1Ute8AZdVfF8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:From:To:Cc:Subject:Message-ID;
	b=JvOMzx/vxaujjNEbEKP+kWcp5DlrEevXYIGIRPbY5iItLIWJKnGG2oV5wnG0AEIZy
	 2jDWGhnqdkoj7qogA2wc5+2eGnHtWU23AgnkWhWOM+p2RBpExqrPPR5+13o9HrSEga
	 54emLTiB6N6bNjKI+qL5duW3W6JPfXbX69wQufY4=
Message-ID: <36860add-5d62-289f-6255-02b304b1c12f@sysec.org>
Date: Thu, 7 Apr 2022 17:17:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: kangel <kangel@zju.edu.cn>, oss-security@lists.openwall.com
Cc: pgn@zju.edu.cn
References: <657e93b4.3cced.18001ce5999.Coremail.kangel@zju.edu.cn>
Feedback-ID: :qiuhao@sysec.org:sysec.org:flockmailId
From: Qiuhao Li <qiuhao@sysec.org>
In-Reply-To: <657e93b4.3cced.18001ce5999.Coremail.kangel@zju.edu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=cO3zD3SN c=1 sm=1 tr=0 ts=624eac38
	a=9zuiwUaE+4GOE7xYIc90Uw==:117 a=9zuiwUaE+4GOE7xYIc90Uw==:17
	a=IkcTkHD0fZMA:10 a=CEWIc4RMnpUA:10 a=OLL_FvSJAAAA:8
	a=wQzgBE0fSh213J1lR94A:9 a=D8H4bWiJGtFWUoFAfKj/bpVjoms=:19
	a=QEXdDO2ut3YA:10 a=_3pv9xVZcpcA:10 a=NRVb-hUXiywA:10 a=wbbTpC8Z_7cA:10
	a=oIrB72frpwYPwTMnlWqB:22
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [oss-security] Linux kernel: x86/kvm: null-ptr-deref in kvm_dirty_ring_push

Paolo's patch:
https://www.spinics.net/lists/kvm/msg273052.html
