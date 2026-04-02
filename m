Received: (qmail 3945 invoked by uid 550); 2 Apr 2026 15:27:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18081 invoked from network); 2 Apr 2026 07:48:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deepin.org;
	s=ukjg2408; t=1775116075;
	bh=7LG12F0YaCZyS6KkconlEf2kLRNbi7B+/qGBtsUArag=;
	h=Date:From:To:Subject:Message-ID:MIME-Version;
	b=U3yydhFCsrMdRicBwuuPGBUXUMB2N3edMkpiDYDlIy8pokc4cPWZ+AGFO/kAx13zq
	 lIMgn6jqEbBcEdMEi24t7QBWE5kUTMCNU0ghFB+BhSBgi+5obTZOirqPFHfW8sSLUc
	 XtubieOox9XKRwCDtwD9XSml10xCEv4Z+vmmF2/4=
X-QQ-mid: zesmtpip3t1775116071t263be377
X-QQ-Originating-IP: hLaLmg+C2L/s3k5aYdqv62TxVV3fTENt0EWNzeZw8cQ=
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7511321657618496775
Date: Thu, 2 Apr 2026 15:47:48 +0800
From: Tianyu Chen <sweetyfish@deepin.org>
To: oss-security@lists.openwall.com
Cc: Christian Brabandt <cb@256bit.org>
Message-ID: <78956342F5383230+ac4fJDMjKT0_L7em@ut005408-PC>
References: <aco9Ai89pj+OQ0YS@256bit.org>
 <ac4aBrA6ssztvsrp@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ac4aBrA6ssztvsrp@256bit.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:deepin.org:qybglogicsvrgz:qybglogicsvrgz3a-1
X-QQ-XMAILINFO: MQ/e1nFgk5LjNp35OelPgLaYTPv18kbnyOBtYxEA3eaBgdWQv7jr2Ow0
	1UUrgqAMhn/yHgau3N/Y4z20f5IF8Dnko0qf+oHs8lG+PLzTYqYTFe7ubvd/y/SUkPXFlxc
	00sPNsWJbFgyadHQ1q3wur9GyR/9Whsmbrbj5SRyNkcB0s1k00o4zdD2qQznkEhv45LfUne
	gOdJNyzKYif66IR+EQ9d+cPwpbwX6iBnCamE5HbhtXXN50HJsPXJjZbDl8YkqqyHLa6v3MQ
	znx+NkA9ZYB371k+4U8YKQkgSCfxhr/2yrnT5LXcWg6g5Y/Xr9p59BwrnvO4zgLzzDwSve9
	dHcd3kW0RpWpbiHrr4B2r6DLPJ7BOP6oZnI/b+6IAfrDMUVdIfy7kWDoFQOFFMbHJXyi3LA
	cqpiqG1yzWe4e50tPtKPdBXtEDi/PSuX04EISLIOfoDVJodZcFJwHJ7ql6V2QwredLUrlad
	R5jSpz0szkYcoEXvqPxVGebwzONsNI7W/Lcyn8L05fKHABf9F/i24vjgYczWqcQ0apm0ZrS
	D//Ruy/SoefF825hILwZ3dP4Ul3weThzwlOPwtFi5SNihq864KB545Mt2XAFktVrtntEzz/
	mkLoRbFw6gT47yc2cqtLDTHvw8oHpuRNMJc0nR2CtxFD97NhxjxCnjcH/fwGTrpaSM2uM89
	ZdK9DlS4ukWqDAmA6j+jD96xqWchHQ9foEsdiCi7PLZqNf9pxkmKoh0oW/1arooZGza1cEi
	AmpRHbHG6+Zr6REwGCmfm0CnQwsJB1txn8Wk/ZujsFobFI74fhhxJON/LlGII8+SqvQyOlu
	UP+9kZzgpfKWXI9ur6HcE/M2FODqvhQVpMlK0/G4PxMpt98M9fKS/uGeUjJ8BwrYM/GJ93P
	VVBoBTpn0SNoF2DOOCEGdPF7LhlvBe8lNzCwysV7sPnSbYk9Mbm/6Au5RGXSeXz3OzeaGqs
	tzIg6RvG65YjBHv8RxksIszurP1XIipGijx2HdWEpZEVKb06a/XatTLTch0YVy/v3sztvE4
	EANGifMOp9srbUfF9AJzPhDKx7/oA4DYsvhnzeMQ==
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
X-QQ-RECHKSPAM: 0
Subject: Re: [oss-security] [vim-security] Vim tabpanel modeline escape
 affects Vim < 9.2.0272

On Thu, Apr 02, 2026 at 09:25:58AM +0200, Christian Brabandt wrote:
> 
> Sorry for being potentially off-topic, but I am wondering if I am doing 
> something wrong here. Did anybody request a CVE for this? I got a 
> notification from Github Support (after 10 hours or so) that they cannot 
> assign a CVE for this, as there was already one assigned.
> 
> I typically hit the *Request CVE* button before I publish an advisory 
> and send out the notifications, and usually github assigns those pretty 
> fast, but not this time.
> 
> Does anybody here know how this works? Or did I do something wrong?

Isn't it CVE-2026-34714? I saw it noted on
https://github.com/vim/vim/security/advisories/GHSA-2gmj-rpqf-pxvh.

Best regards,
Tianyu Chen @ deepin
