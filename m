X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["621" "Saturday" "15" "October" "2016" "06:57:11" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20161015045711.2hyce3mpwtmypwri@eldamar.local>" "20" "[oss-security] CVE Request: libgd: Stack Buffer Overflow in GD dynamicGetbuf" nil nil nil "10" "2016101504:57:11" "[oss-security] CVE Request: libgd: Stack Buffer Overflow in GD dynamicGetbuf" (number mark "U       carnil@debia Oct 15   20/621   " thread-indent "\"[oss-security] CVE Request: libgd: Stack Buffer Overflow in GD dynamicGetbuf\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12137 invoked by uid 550); 15 Oct 2016 04:57:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12116 invoked from network); 15 Oct 2016 04:57:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bchca2zQDsotVorqr3AEGUdaCvN/wl38OTjV0YRDCuE=;
        b=C6hfNCnSVSndGUa9kZWi/PrbwLVPhmSLbj08RmH2FtjtE9Pyjj7UTak7mFiM9/eA4r
         CexCepkfeIWIMQVqNf/chn/Dx4YIHBIv10n00ShF2WD9ag1goM/dLqcW+EMg9tbAGm1Q
         Kr3q5wC/MQKWFGxV9w1XMWe4LQufUqgMpfdnJbgrcmjMUau5uah845LLw7Xsy4JvvgvP
         uXlFcU/8n1kvpn3q/z8SqMbB0OO8vF8CetwoTn/XZ69xqZXFjnv/42OHpiDCUo1cEe6N
         MhFkAuvIGsDBNQbz6peWPLNRHx3n9N+YPPLqrm/av+9njn6h8NZyyGn6u0gfSnBhyh58
         kKsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=bchca2zQDsotVorqr3AEGUdaCvN/wl38OTjV0YRDCuE=;
        b=RFGzxlXZRWvKZG6g7u4AkEC3FDgqD8c72Eih8fTKtb72ixPhZtXInLb1IPLs9eLjPb
         iWYiUj9zTVMX/SlI7FcSH/M0vCXYab45LSdNUm+YAYc5hHMBQ+T7IVmMfDisclblmLUW
         tOoltkE7/6+oCkjk0yneYvpW8p93bJUcI6Ipuc0TdZAp75tU9xwH7GwL4rI8O5CS4/uT
         ILawZ10n/QC3p02SKIcbajoSvsvY+8yyY8gti8/svS9ioXpv8PIZ/+4nGCezqj1M+kXG
         NMhM85nR8PsjPL+9wbQSsCzLKOt7IL3yPMKUIPNV2hghiCN3if++2+w0jnrneZgCEgQ5
         CQaw==
X-Gm-Message-State: AA6/9RkEmQOEqeZ3JaHZ+7SvIkKsBNKGV8eiQd1W2hJqf5vKGU25r7Y7gfUsANZj8maM3w==
X-Received: by 10.194.246.39 with SMTP id xt7mr4242258wjc.50.1476507432828;
        Fri, 14 Oct 2016 21:57:12 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 15 Oct 2016 06:57:11 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20161015045711.2hyce3mpwtmypwri@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20160916 (1.7.0)
Subject: [oss-security] CVE Request: libgd: Stack Buffer Overflow in GD dynamicGetbuf

Hi

On the PHP bug tracker Emmanuel Law reported a flaw in the libgd
library in dynamicGetbuf. The PHP bug report is at (cannot quote the
full report for the list archive, sinc a bit long):

https://bugs.php.net/bug.php?id=73280

It has been reported upstream apparently (not via the issue tracker)
and fixed in upstream as with commit:

https://github.com/libgd/libgd/commit/53110871935244816bbb9d131da0bccff734bfe9

Debian has issued a DSA containing this fix as well in DSA-3693-1,
https://lists.debian.org/debian-security-announce/2016/msg00274.html

Could you please assign a CVE for this issue?

Regards,
Salvatore
