X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["479" "Tuesday" "13" "June" "2017" "17:18:49" "+0200" "Adam Maris" "amaris@redhat.com" "<1497367129.2956.2.camel@redhat.com>" "21" "Re: [oss-security] Linux kernel 2.6.0 to 4.12-rc4 infoleak due to a data race in ALSA timer" "^Date:" nil nil "6" "2017061315:18:49" "[oss-security] Linux kernel 2.6.0 to 4.12-rc4 infoleak due to a data race in ALSA timer" (number mark "        amaris@redha Jun 13   21/479   " thread-indent "\"Re: [oss-security] Linux kernel 2.6.0 to 4.12-rc4 infoleak due to a data race in ALSA timer\"\n") "<CAG_fn=W+kiQAmmtXeEwECmyabiJwaEQVyxo0D29-PTXwzgF9jg@mail.gmail.com>" ("<CAG_fn=W+kiQAmmtXeEwECmyabiJwaEQVyxo0D29-PTXwzgF9jg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18181 invoked by uid 550); 13 Jun 2017 15:19:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18146 invoked from network); 13 Jun 2017 15:19:04 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 03351145F84
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=amaris@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 03351145F84
Message-ID: <1497367129.2956.2.camel@redhat.com>
In-Reply-To: <CAG_fn=W+kiQAmmtXeEwECmyabiJwaEQVyxo0D29-PTXwzgF9jg@mail.gmail.com>
References: 
	<CAG_fn=W+kiQAmmtXeEwECmyabiJwaEQVyxo0D29-PTXwzgF9jg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="=-uEZdEmz1JJAQoUQqwXTj"
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Tue, 13 Jun 2017 15:18:52 +0000 (UTC)
Date: Tue, 13 Jun 2017 17:18:49 +0200
From: Adam Maris <amaris@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel 2.6.0 to 4.12-rc4 infoleak due to a
 data race in ALSA timer
To: oss-security@lists.openwall.com

--=-uEZdEmz1JJAQoUQqwXTj
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit


> > https://github.com/torvalds/linux/commit/d11662f4f798b50d8c8743f43384
2c3e40fe3378
> > https://github.com/torvalds/linux/commit/ba3021b2c79b2fa9114f92790a99
deb27a65b728
> 
> 

For reference, CVE-2017-1000380 was assigned for this issue.

Regards,

-- 
Adam Mariš, Red Hat Product Security
1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2 
--=-uEZdEmz1JJAQoUQqwXTj--

