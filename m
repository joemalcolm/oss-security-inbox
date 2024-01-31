Received: (qmail 15481 invoked by uid 550); 31 Jan 2024 14:56:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13345 invoked from network); 31 Jan 2024 07:51:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1706687615; bh=XFCvwuyOIwVUDiM52d+58KmjcqF5r6urRogiybIMbjU=;
	h=From:To:Cc:Subject:Date;
	b=Xt0pbzIE2zgKf+EjCFqHJ8VVFCcjO3H9BwBJthZ+jKESdloKltBOkoh2orC7qwAFy
	 paD7rVI1IE4vKZIU37xQE14AJMbLnkyuVYYkeLvaH3czW1wvZ4Aw1Bae7A7w6ZC8TE
	 WUKG4esXwIsvChLQyef+pSdYFoWMQM4ZSrtE8w2c=
X-QQ-FEAT: 0LWSjAOnH4EqDtMzSJIdDA==
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-XMAILINFO: NhuZ2EUUEDkwY/2A8mxStt7+H2f7/ftqFuJECU3MeoqbHYrT1jgOYP3KTEMo3Z
	 FLfDefdz2FMUj62immSvluitJjuyHx1AX59aSCZcUK4P3uGul0uHsgKccQSMODpZALLM20MJWZC0+
	 VfP+YVsELIHpZyjJzXtdsurqF23kAgD/w7wq/K75/ci39oTRgBxGyreV7+MqswC0hdkkJHMG/U4BC
	 iSqdIQkWqavIU8RBOTVmgFmY1Ud3gr0LSg1k9zKnRWFjcLdQfbVsn+Uj7H19SB3a612+J7eixzo2V
	 JMmv81Pfb2s8wvrytqoGSHHrNJQl0KHFOyMCZ2MchyYhThJD5yoOmeCu873Civ6kWZM6UTDCxb9nC
	 O/TC76i8jgscujcUZH6S+QHLJGXL4aga17BirVEM7nS32d2hFR6E5A2f9fgsCZNGkzeR1lTYW6nI7
	 BTX5M/dkTaSdn1oONnAS93SyWhhLVdSrNaRp8v+qsnPrEJClekE17RgLjmb7hTF8f4eOfcVLJ62+9
	 aUgSuDR+dx8rfxZVk9W3M0UiF1mg7Lo9/ZLFyJ/2D/BIXf9IKRfGsB8eghECYhKX1QLWpNr09MBzf
	 8fnC7NyhItrd1AffsFyhkLYMiaTqLTw3UOw1xS6XIvga1JuAsuUJkkLKgCkjrdIw4GzJfLIkHTbi9
	 1+kUS5m1LYWgaX1xOnaIcoUUccoi17Ga4H9mYHSQwdXHHC0G4qQMnjQWxESUXbthqld+7s2NESZvE
	 o0IFU7CO9zMu+ep3tbll10pXD/LZMslQq//f/H80ZSu2f65WshAlzzrKh4Yiv53y5C8GVGpbDrBd0
	 d2OXvUTdpIERTq5XBX8rtTgV1YsLw7T06zZk/FRBEFW1gWeCW9uhJJPppE2m6TtxbpuOhUQSU0SgW
	 J5bgeV1JOuXmGCvqzljP2s4wz2I2BLc1h+OSdrIZsDkuOX9MVUjYLOiTeP983dkoonCYT5FR+mEt9
	 BCjCbjHA==
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 119.8.203.210
X-QQ-STYLE: 
X-QQ-mid: webmail343t1706687614t2181894
From: "=?gb18030?B?YmlzbXk=?=" <bismy@qq.com>
To: "=?gb18030?B?b3NzLXNlY3VyaXR5?=" <oss-security@lists.openwall.com>
Cc: "=?gb18030?B?ZGV2?=" <dev@servicecomb.apache.org>
Mime-Version: 1.0
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64
Date: Wed, 31 Jan 2024 15:53:34 +0800
X-Priority: 3
Message-ID: <tencent_5A06E31044B20EDA2BA45A251E45B1286A06@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
Subject: [oss-security] CVE-2023-44312: Apache ServiceComb Service-Center: attacker can query all environment variables of the service-center server 

QWZmZWN0ZWQgdmVyc2lvbnM6CgotIEFwYWNoZSBTZXJ2aWNlQ29tYiBTZXJ2
aWNlLUNlbnRlciB0aHJvdWdoIDIuMS4wCgpEZXNjcmlwdGlvbjoKCkV4cG9z
dXJlIG9mIFNlbnNpdGl2ZSBJbmZvcm1hdGlvbiB0byBhbiBVbmF1dGhvcml6
ZWQgQWN0b3IgaW4gQXBhY2hlIFNlcnZpY2VDb21iIFNlcnZpY2UtQ2VudGVy
LlRoaXMgaXNzdWUgYWZmZWN0cyBBcGFjaGUgU2VydmljZUNvbWIgU2Vydmlj
ZS1DZW50ZXIgYmVmb3JlIDIuMS4wIChpbmNsdWRlKS4KClVzZXJzIGFyZSBy
ZWNvbW1lbmRlZCB0byB1cGdyYWRlIHRvIHZlcnNpb24gMi4yLjAsIHdoaWNo
IGZpeGVzIHRoZSBpc3N1ZS4KCkNyZWRpdDoKCsvVILCyIDxzdWFud2VsbEBo
b3RtYWlsLmNvbT4gKGZpbmRlcikKClJlZmVyZW5jZXM6CgpodHRwczovL3Nl
cnZpY2Vjb21iLmFwYWNoZS5vcmcvCmh0dHBzOi8vd3d3LmN2ZS5vcmcvQ1ZF
UmVjb3JkP2lkPUNWRS0yMDIzLTQ0MzEyPC9zdWFud2VsbEBob3RtYWlsLmNv
bT4=
