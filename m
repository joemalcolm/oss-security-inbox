X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["763" "Wednesday" "5" "July" "2017" "10:11:48" "+0200" "Pali =?utf-8?B?Um9ow6Fy?=" "pali.rohar@gmail.com" "<20170705081148.GH2102@pali>" "19" "[oss-security] CVE-2017-10789: DBD::mysql - mysql_ssl=1 does not enforce encryption" "^Date:" nil nil "7" "2017070508:11:48" "[oss-security] CVE-2017-10789: DBD::mysql - mysql_ssl=1 does not enforce encryption" (number mark "        pali.rohar@g Jul  5   19/763   " thread-indent "\"[oss-security] CVE-2017-10789: DBD::mysql - mysql_ssl=1 does not enforce encryption\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11508 invoked by uid 550); 5 Jul 2017 11:23:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15915 invoked from network); 5 Jul 2017 08:12:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=scW+HkWMd6y35UMa6Afue7LiJ65DppstYTaqPPGFfvQ=;
        b=Kdj+TaqiB14uxutSO+HWi6XOopKSjhT52khvf/yVRfiBPrVFge5Za2f13k0aETcIgs
         dRL7TdCwqklrwoknJYlgJut4kfR5PnNFJJrxsaIgBF0Z/p1UjZs8+1mYZP81Oc4DYA+n
         YOkstqg2jqahXNm4mGFmL9Mh9iEaC0yf29PPCWclzSbGyrBPjNcbFNwSFsEZIN4lSPUz
         zgk+YT5UCkWxmFJNjFsYa0nj3H3G/tUrT3kYF/8OAbznW9uKpOKiT0oc5URUOdITc6vd
         R3A43vxBZZb1YpzuxVtVAQ0/MjgM1UD4MIc/2zWkdv4+2LMdxlEqynnCgtmSbC4Ghmcg
         O47g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=scW+HkWMd6y35UMa6Afue7LiJ65DppstYTaqPPGFfvQ=;
        b=lIpQIPpOCJ2hy/QN/5R74xU9vgtTIuExGRubBBJOKPTLeWiw4BdUFK44Ft9mo0LcEX
         BIpRC4qaKrVAouampS/SF9nhn2ZHY7d5xcl4kkXO50O4CLMtMMZ4i8igy4/oMHn67MLB
         eejux5MMtUmKenJ8gNTJZJR/5cIJpnT0e2Cr0wZqJMb6dghDsDG1vR8YGQ0vdM6d4aRk
         Z0WSjPOYxpZgKRTwF8x1kZbLAr9wxjn+CPW4rBCr3jQ1HkQXZhQvR9wG7ox2xZ+cjVhg
         dif8gyH9nz8eA3pr77Yw7xnJd00VvbaeMQnnLxu2B1Vj7fMnPbia7qjwSD9B46875dRp
         7N5Q==
X-Gm-Message-State: AKS2vOy5Ax4KGO9q8iy5tN+2gQDi7PMC1NClFx746Hf+JUOD0vnp/XS+
	SZn/XAfqHi2Mz5Cf
X-Received: by 10.223.164.29 with SMTP id d29mr35185998wra.183.1499242310591;
        Wed, 05 Jul 2017 01:11:50 -0700 (PDT)
Message-ID: <20170705081148.GH2102@pali>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.5.23.1 (2014-03-12)
Date: Wed, 5 Jul 2017 10:11:48 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-10789: DBD::mysql - mysql_ssl=1 does not enforce encryption
To: oss-security@lists.openwall.com

Hi! I would like to announce another problem in DBD::mysql which affects
only encryption between client and server. If you have fully trusted
connection then you should not be affected.

Perl DBD::mysql driver does not enforce SSL/TLS encryption when option
mysql_ssl=1 is enabled. Enabling encryption depends on announcement from
MySQL server what it supports which can man-in-the-middle attack spoof.
DBD::mysql does not enforce SSL/TSL encryption even when certificate is
specified via connection parameter mysql_ssl_ca_file.

Therefore usage of SSL/TLS encryption in DBD::mysql is insecure.

Similar problem had also libmysqlclient.so library, see CVE-2015-3152.

http://cve.mitre.org/cgi-bin/cvename.cgi?name=2017-10789

-- 
Pali Rohár
pali.rohar@gmail.com
