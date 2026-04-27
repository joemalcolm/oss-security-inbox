Received: (qmail 28402 invoked by uid 550); 27 Apr 2026 12:57:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28369 invoked from network); 27 Apr 2026 12:57:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pipping.org;
	s=manitu-webhosting; t=1777294657;
	bh=gR3xcGakPtT3cWFIMUq8py/lpRLuQSbLR4mmD90lDmY=;
	h=Date:To:From:Subject;
	b=L8tEiFzHSg2hiVuLlrnd4E4wrLrqBul7hPqxAJSoopRvQjTkN4RNUwCyDzxKLxnpv
	 bRCNjbyrshj+VyC4LHqefirte0LxMnDQ+n0k8HXtxrav/f6zFGkdRsCpPoRORQipjf
	 d/cRh93SU3Wuch7vLKXCKV8SMOpi42/78QZbVqIyqrLh0pQK9kkIrX/+fnKrnQeIe3
	 Wh1eCXpt5WuFJPinc8PLA28LVRyRGckiz56c8Rt989GgNurhn8GEwUE7v4HqndYvpU
	 EnplmRipY0QPyqNgWNJUDaSU8xwDulrOUYh27pSSwZnnM/zuovwR+DGAG9hq78gHWr
	 n8anFaLC65KFw==
Message-ID: <8db46812-9b6a-4db6-90d2-ea46b3dab09d@pipping.org>
Date: Mon, 27 Apr 2026 14:57:36 +0200
MIME-Version: 1.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Sebastian Pipping <sebastian@pipping.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] uriparser 1.0.1 fixes CVE-2026-42371 (integer overflow)

Hello oss-security,


just a quick note that uriparser 1.0.1 released today is fixing
CVE-2026-42371: integer overflow in text range comparison.

Some key links are:

- The change log of release 1.0.1
   https://github.com/uriparser/uriparser/blob/uriparser-1.0.1/ChangeLog

- The fixing pull request
   https://github.com/uriparser/uriparser/pull/298

- The official CVE metadata
   https://nvd.nist.gov/vuln/detail/CVE-2026-42371

Best



Sebastian
