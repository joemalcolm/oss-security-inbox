Received: (qmail 18116 invoked by uid 550); 3 Jul 2024 17:37:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3798 invoked from network); 3 Jul 2024 16:18:47 -0000
Message-ID: <5a4f0d9d-7bbf-489d-bac2-ed5789105882@linuxlounge.net>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxlounge.net;
	s=mail; t=1720023518;
	bh=YtO6bpverdwuJ4IkVhlJIld2F658IFrD5MskqFfetfo=;
	h=Date:To:From:Subject;
	b=tCcAwmxP0a73cCgHZGn1YbJT50ncVtuGoG+v62t14oux0FXYC+yMT0XPDwaLn8SON
	 dIv85MhhlbiU1BnalXSmpfcmNst96Zyum3dtXquKOXfxbO2nZb7qmURrtmPmtJiy/4
	 y1YWlULtIto/emWRGgDGc+SL6Q7HjCcnNWiwA8vk=
Date: Wed, 3 Jul 2024 18:18:36 +0200
MIME-Version: 1.0
To: oss-security@lists.openwall.com
Content-Language: en-US
From: Martin Weinelt <martin@linuxlounge.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2024-39844: ZNC modtcl RCE

Hi,

ZNC before 1.9.1 has a remote code execution vulnerability in its modtcl 
module, that can for example be triggered through a prepared kick message

https://wiki.znc.in/ChangeLog/1.9.1


Alternatively the following patch needs to be applied to mitigate this 
vulnerability:

https://github.com/znc/znc/commit/8cbf8d628174ddf23da680f3f117dc54da0eb06e


The vulnerability was discovered and reported by Johannes Kuhn 
(DasBrain). The patch was created by glguy.


---

Martin
