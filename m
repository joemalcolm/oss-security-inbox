Received: (qmail 23886 invoked by uid 550); 25 Jul 2023 17:16:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21532 invoked from network); 25 Jul 2023 17:12:58 -0000
DKIM-Filter: OpenDKIM Filter v2.10.3 james.steelbluetech.co.uk D1841BFC0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ehuk.net; s=default;
	t=1690305165; bh=DcJrTfct5Kpqu1opgyjE+Wkkj22oyaC6so0wfcIXu0k=;
	h=In-Reply-To:References:Date:Subject:From:To:Reply-To:From;
	b=vEiQdyhzLBrZTFumaouZ4sTSG15u+urGw7NjTuMov+c4KYJevmqDrmh+g455+dakQ
	 npeMcDbIWq7JxFKmI4H43x7dthAol4ijNo5n6G9EH6dqCnPOr4hZLTXHpl5GLeHBt/
	 l2wJLunTziz7BASmXgTBB6C/AGSxR+TLlT+QJe4UMQZzoMVIUotLvPdmrRCxwlODts
	 X8H7SP+uF+cRQqtKZ2zsFDklRK2djo49mVDltWgdy6+VfOhgufjhPevlELoEyUoTr4
	 uwPQcanNOW64DefrCZzNQp8vmuBGEUGITVLdc6DTT2ToligEhU1jlmm8MNdiQTleLy
	 8izoBesJlNU1Q==
Message-ID: <ab2390108dee5325ff7683d404465e32.squirrel@ukinbox.ecrypt.net>
In-Reply-To: <CUB4TMY2T01E.9PNA8WXRWGZR@sumire>
References: <ZL6Kgih+pRaeA2e/@thinkstation.cmpxchg8b.net>
    <43f83e16-e492-4540-b34d-d2b51da2bb74@canonical.com>
    <ZL8lFPN2e+6jX5HH@largo.jsg.id.au> <CUB4TMY2T01E.9PNA8WXRWGZR@sumire>
Date: Tue, 25 Jul 2023 18:12:44 +0100
From: "Eddie Chapman" <eddie@ehuk.net>
To: oss-security@lists.openwall.com
User-Agent: SquirrelMail/1.5.2 [SVN]
MIME-Version: 1.0
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang
Subject: Re: [oss-security] CVE-2023-20593: A use-after-free in AMD Zen2
 Processors

alice wrote:
> this is a disaster of a security announcement from AMD. nothing is fixed
> except for epyc. the only workaround anyone really has is the chicken bit,
> thankfully.

Yes, very disappointing. Pure speculation; perhaps they were planning on
disclosing at the end of the year with full set of Microcode ready but
something we don't know (yet) forced them to disclose early. Who knows.

Very unscientific and limited test but I just compiled qemu 7.2.4 on a
gentoo workstation with a Ryzen 7 3700X (Zen 2) running linux kernel
5.15.119. Took 5 min 37s. Rebooted into 5.15.122 with the chicken bit fix
(confirmed in dmesg appears to be applied), compiled qemu again, this time
it took 5 min 25s. So my initial impression is the chicken bit fix is fine
in general but remains to be seen if certain workloads significantly
impacted I guess.

