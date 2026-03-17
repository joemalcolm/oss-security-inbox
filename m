Received: (qmail 3213 invoked by uid 550); 17 Mar 2026 20:48:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3163 invoked from network); 17 Mar 2026 20:48:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pipping.org;
	s=manitu-webhosting; t=1773780517;
	bh=Pf41/mAb4nZO/d74z2MJbHsDQdFxYm9K4jL3O9Dy1LA=;
	h=Date:To:From:Subject;
	b=Sl298vyrAG58q7mwn0wytnl/MOitzsbgSqlq2ERKJaaz6YrXI404rTEkwIPt2xbbz
	 x6Seh4OqoM7wVbHP4TkjBDBHaZxe3DgKoywM1mPX3yc5OsbeOPKaR7B/19oQKeGeQx
	 JGJcVmDqEAzFEYvQcKyujh1Jw5O4qaFTeq2fIe/keazm6xOn9dCfxPYUKqDLPaACPw
	 nQFeTkFlDuja58H2TbhhcX9ajCP9DPSTEV79ZLr2n3mXsS+10C40jSptuSu50Xt5Ke
	 eT2Ayvfk/yLbrtyVIZCo/p0EC3avcL8Zycih+w11mSCFT4IrOPkBeJAoUTpEVJhyvB
	 psvlXTAbEtcKQ==
Message-ID: <9018a61b-1a9a-49bb-bcc2-152add6d48d7@pipping.org>
Date: Tue, 17 Mar 2026 21:48:34 +0100
MIME-Version: 1.0
To: oss-security@lists.openwall.com
Content-Language: en-US
From: Sebastian Pipping <sebastian@pipping.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] libexpat 2.7.5 fixes three vulnerabilities (2x null deref, 1x
 infinite loop)

Hello oss-security,


just a quick note that libexpat 2.7.5 (or "Expat 2.7.5") released
today is fixing three vulnerabilities.

Some key links are:

- The blog post about it:
   https://blog.hartwork.org/posts/expat-2-7-5-released/

- The change log of release 2.7.5
   https://github.com/libexpat/libexpat/blob/R_2_7_5/expat/Changes

- The fixing pull requests
   - https://github.com/libexpat/libexpat/pull/1158
   - https://github.com/libexpat/libexpat/pull/1162
   - https://github.com/libexpat/libexpat/pull/1163

- The official CVE metadata
   - https://nvd.nist.gov/vuln/detail/CVE-2026-32776
   - https://nvd.nist.gov/vuln/detail/CVE-2026-32777
   - https://nvd.nist.gov/vuln/detail/CVE-2026-32778

Best



Sebastian
