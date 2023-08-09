Received: (qmail 11440 invoked by uid 550); 9 Aug 2023 20:45:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9286 invoked from network); 9 Aug 2023 20:42:36 -0000
X-SourceIP: 86.4.155.149
X-Authenticated-Sender: zarniwhoop@ntlworld.com
X-Spam: 0
X-Authority: v=2.4 cv=B/V/kshM c=1 sm=1 tr=0 ts=64d3fa30 cx=a_exe
 a=69rpv3kaMhdJyoIRs2s4pw==:117 a=69rpv3kaMhdJyoIRs2s4pw==:17
 a=IkcTkHD0fZMA:10 a=UttIx32zK-AA:10 a=-LCu6K_DAAAA:8 a=RV0cxRsU81jr09BM0WsA:9
 a=QEXdDO2ut3YA:10 a=ZXulRonScM0A:10 a=J-JL0wFkX4TZ9yyCLs2E:22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ntlworld.com;
	s=meg.feb2017; t=1691613744;
	bh=JwEDRfnN1KOCERMmNHoEP3rNQfUfRWanvqDGnSIiIHw=;
	h=Date:From:To:Subject;
	b=StSD0M62VBgifpzR+GH6oOk1FP/181/3N8FNrXgsa50sK4g+MyeFilY92j9PgB1de
	 NqrRnZjsd+AnAs8fDM/V8AbtL/KIuugvD3C5QlEwxyd3iCWbS7mKUAI/vzr8pJ1SAR
	 iVOYV3QvncG/k/CX41t/EyErE/yEObmA4vMB91+LvkiBRadez2DuU/ccEsGyM9AEUp
	 ujVgtUmW9hD9734B/YcfdW/XJMBzt3Jkse/2oYi4xLE0AIfFpj2raaAFdaStVr/P3k
	 Uq8UGtxZoL+G840PnEbklZNkvXzyLPrY8lPautqM/YB9AktOXLUsm5NEXDUjkFCDQQ
	 6yjc/R5Ub95DA==
Date: Wed, 9 Aug 2023 21:42:23 +0100
From: Ken Moffat <zarniwhoop@ntlworld.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <ZNP6L6elsrB8pFsh@llamedos.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Clacks-Overhead: GNU Terry Pratchett
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/2.2.10 (2023-03-25)
X-CMAE-Envelope: MS4xfNNB490X1M3xo/Nfasgft/FNMMCpr5frev8oOg4Jcrzt5rX1sjh6uld8FUEp1nNjX1Oib7O5WyKi4IVet1mPO7XHrrGJ9eaWpUZ2Iq8PNDd+dJMR4roP
 /12YeJ+vUlQCCZwCYY7qkO2bGGchMySdllwLiTFrqlUT+6uVRYKdOlsMe3/pK7+KIlKW/fSIdpmfScjJ/V64i6NKKtwEqS/mskk=
Subject: [oss-security] Node.js security updates for August

Reading the blog entry for this,
https://nodejs.org/en/blog/vulnerability/august-2023-security-releases
it appears that ALL of these vulnerabilities are for an experimental
feature ?

If so, is it practical to disable the feature when building current
LTS releases, or indeed when building current release ?  If not, is
there any easy way to determine what uses it ?

ĸen
-- 
Ankh-Morpork! It's a wonderful town! The trolls are up and the
dwarfs are down! Slightly better than living in a hole in the
ground! Ankh-Morpork! It's a wonderfuuuuullll townnn!
