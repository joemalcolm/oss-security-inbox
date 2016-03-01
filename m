X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["730" "Tuesday" "1" "March" "2016" "18:18:12" "+0000" "Stuart Henderson" "stu@spacehopper.org" "<20160301181812.GY13281@symphytum.spacehopper.org>" "16" "Re: [oss-security] CVE's for SSLv2 support" "^Cc:" nil nil "3" "2016030118:18:12" "[oss-security] CVE's for SSLv2 support" (number mark "        stu@spacehop Mar  1   16/730   " thread-indent "\"Re: [oss-security] CVE's for SSLv2 support\"\n") "<CAOp4FwSj_OAUV0qsnE35VR4UdFCC1qjvQXy9_Rf=-kK0S1eMQQ@mail.gmail.com>" ("<CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>" "<CAOp4FwSj_OAUV0qsnE35VR4UdFCC1qjvQXy9_Rf=-kK0S1eMQQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20264 invoked by uid 550); 1 Mar 2016 18:18:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20244 invoked from network); 1 Mar 2016 18:18:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=spacehopper.org;
	 h=user-agent:in-reply-to:content-disposition:content-type
	:content-type:mime-version:references:message-id:subject:subject
	:from:from:date:date:received:received; s=spacehop2; t=
	1456856292; bh=4Lym+MTJoUSf3Bv+n0HcnPtWyN5PbyBSjmecimohq24=; b=o
	UdQrAk6RJPMMOOKnKAXqpuMTPcrTaEBTtlAtK0LCKD10OqAh5EqsP+e+0ssAC3S+
	oX7WffL6ASh/C+gO8RJkrnf7Pdzel0pGR3VP957B9OgfSAFCqjJgELxQHGYcA3qM
	Z7v8uNtxMsAMyPMjnfP7Fij5VlL+f0PWNtdOsavx4zAqt2/bq6YOAeSr7N74Cd+6
	cVQQd5/8ZdKLAkCYiqiT2Zr1gA3Y2hkbh3qredK8Jx7EmOsethhsPMTHm66lcgd0
	cfwokDpfdROlGLSYLq+Ql3Sf4d+nq0X/+xSKy2J7B8XAk1cCO9OJyuO5GvhDpYu5
	OSxdopXPZpi/Dg5KczKIQ==
X-Virus-Scanned: amavisd-new at spacehopper.org
Message-ID: <20160301181812.GY13281@symphytum.spacehopper.org>
References: <CANO=Ty3qgsHtaivrfwoB=ZdbgyE=z5+Q+HkhazE06ppDbw63RQ@mail.gmail.com>
 <CAOp4FwSj_OAUV0qsnE35VR4UdFCC1qjvQXy9_Rf=-kK0S1eMQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOp4FwSj_OAUV0qsnE35VR4UdFCC1qjvQXy9_Rf=-kK0S1eMQQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: CVE ID Requests <cve-assign@mitre.org>
Date: Tue, 1 Mar 2016 18:18:12 +0000
From: Stuart Henderson <stu@spacehopper.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE's for SSLv2 support
To: oss-security@lists.openwall.com

On 2016/03/01 17:39, Loganaden Velvindron wrote:
> Btw, FreeBSD has done some work there:
> https://wiki.freebsd.org/LibreSSL/PatchingPorts#SSLv2.2FSSLv3_method_failures

Debian did most of that work for SSLv2 years ago. Quite a lot was
upstreamed and a bunch more in patches, this really made it easier
to disable SSLv2 support in OpenSSL when we did it in OpenBSD.

> Linking with LibreSSL would help uncover those cases, and assign CVEs :)

There shouldn't be all that many left for SSLv2. There are a number
of patches in OpenBSD ports for SSLv*3* removal, some upstreamed -
if OS/distros are already going through ABI change pain at this
point to drop SSLv2, why not go the whole hog and drop v3 as well
while you're at it?

