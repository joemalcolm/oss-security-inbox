X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1156" "Tuesday" "5" "May" "2015" "10:47:49" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150505084749.GA28854@eldamar.local>" "31" "[oss-security] CVE Request: GnuTLS: GNUTLS-SA-2015-2: MD5-based ServerKeyExchange signature accepted by default" nil nil nil "5" "2015050508:47:49" "[oss-security] CVE Request: GnuTLS: GNUTLS-SA-2015-2: MD5-based ServerKeyExchange signature accepted by default" (number mark "        carnil@debia May  5   31/1156  " thread-indent "\"[oss-security] CVE Request: GnuTLS: GNUTLS-SA-2015-2: MD5-based ServerKeyExchange signature accepted by default\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19878 invoked by uid 550); 5 May 2015 08:48:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19857 invoked from network); 5 May 2015 08:48:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6H2hDYE59sTZzoF9aNgbyBJuTp53dYXwJkFuIwNZOJ0=;
        b=S2Ie/bHTzJ2pCUMFUo0uK7lS42lucXosSCg2u0RNJDLGGzTuwhBDP2+6msy8hZ8exR
         nrL72ybjINHA8E99anPog8JcCGVa84YswwEQPbqEB1HaWRvUTJiHhmwQ5AZyHzv2gvub
         gZAS30hfLIahFVIHxIPp/y2CCmv3p9yfOZjNffYjSgzHPFO4FDKDj/9n3lvzoZSULRGv
         txk8nCv807/cmpFQgo0iUGeeNWjp4NXgoIfMEeWD0TtFYgaBt1Y2hW9zQfW/PDvXeboZ
         VY1hAk1WAkjDq3Rs49DEBWw6OywpItP2q03RP8ieFCXLMBTpuWpeiVCDYyjHDGihV26d
         lY8g==
X-Received: by 10.180.91.40 with SMTP id cb8mr1944344wib.64.1430815671471;
        Tue, 05 May 2015 01:47:51 -0700 (PDT)
Message-ID: <20150505084749.GA28854@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Tue, 5 May 2015 10:47:49 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: GnuTLS: GNUTLS-SA-2015-2: MD5-based ServerKeyExchange
 signature accepted by default
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

I wonder if the following issue in GnuTLS should get a CVE:

http://www.gnutls.org/security.html#GNUTLS-SA-2015-2

> Karthikeyan Bhargavan reported that a ServerKeyExchange signature
> sent by the server is not verified to be in the acceptable by the
> client set of algorithms. That has the effect of allowing MD5
> signatures (which are disabled by default) in the ServerKeyExchange
> message. It is not believed that this bug can be exploited because a
> fraudulent signature has to be generated in real-time which is not
> known to be possible. However, since attacks can only get better it
> is recommended to update to a GnuTLS version which addresses the
> issue.

Details: 
https://lists.gnupg.org/pipermail/gnutls-devel/2015-April/007572.html
https://bugzilla.redhat.com/show_bug.cgi?id=1218426

https://lists.gnupg.org/pipermail/gnutls-devel/2015-May/007577.html
https://lists.gnupg.org/pipermail/gnutls-devel/2015-May/007578.html

Upstream commit:
https://gitlab.com/gnutls/gnutls/commit/7d9d5c61f8445dc9e9ca47bb575c77cef17da17a

Testcase:
https://gitlab.com/gnutls/gnutls/commit/6822a37947d4e38c45b1afc0121cda35ba897182

Regards,
Salvatore
