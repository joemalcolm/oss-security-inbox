X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1414" "Monday" "21" "September" "2015" "17:50:17" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150921155017.GA31242@eldamar.local>" "34" "Re: [oss-security] CVE request: Use-after-free in Linux kernel with aufs mmap patch" nil nil nil "9" "2015092115:50:17" "[oss-security] CVE request: Use-after-free in Linux kernel with aufs mmap patch" (number mark "        carnil@debia Sep 21   34/1414  " thread-indent "\"Re: [oss-security] CVE request: Use-after-free in Linux kernel with aufs mmap patch\"\n") "<1441913190.17007.15.camel@decadent.org.uk>" ("<1441913190.17007.15.camel@decadent.org.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14127 invoked by uid 550); 21 Sep 2015 15:50:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14089 invoked from network); 21 Sep 2015 15:50:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=iYKN5lF0kPlU+n2Zdd87bQzMPVe4MMprJQVQ9li0vkQ=;
        b=rsK3ZrCsRMVIHrIhLFe93SeADJWPE2Yf9IxVBdCc4MKM73zVgGEczs2FQVdJamxK9s
         E1ahtiXi+YtZPD3p12m8UF1dJ1SFYg4hTD1fZo97SOoxfMZz54Fm+nv8buXQuyi4tXpo
         E7q510Sz0f9HJ6YNZV4jRTCNyKR0RfH53e3xKYxbACDhbXQmXtLCB5lO+CtbSohU9ThZ
         hMvKZ9NYldjSm17vDUDA7wEc/wTBQ1pCONUcxl7/dqYytr10tfvakOfIujcPayk4FH0w
         cbvHqvDVVSjSokqwI1BOH7Wc6vi1XrZkxJC1MlD0pNov5hifaqkUWXHoIoppuO7oaRrx
         XHCA==
X-Received: by 10.194.209.240 with SMTP id mp16mr14960808wjc.100.1442850618955;
        Mon, 21 Sep 2015 08:50:18 -0700 (PDT)
Message-ID: <20150921155017.GA31242@eldamar.local>
References: <1441913190.17007.15.camel@decadent.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1441913190.17007.15.camel@decadent.org.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: sfjro@users.sourceforge.net
Date: Mon, 21 Sep 2015 17:50:17 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE request: Use-after-free in Linux kernel with
 aufs mmap patch
To: oss-security@lists.openwall.com

Hi

On Thu, Sep 10, 2015 at 08:26:30PM +0100, Ben Hutchings wrote:
> The aufs (Advanced Union Filesystem) project provides an optional patch
> for the Linux kernel, called either aufs3-mmap.patch or
> aufs4-mmap.patch, which is needed to ensure correct behaviour of
> memory-mapped files from an aufs mount.
> 
> Each memory mapping (vma) holds a reference to the file that is mapped.
> This patch makes it also hold a reference to the virtual file on the
> union mount through which the file was found, where applicable.
> 
> In two functions, madvise_remove() and sys_msync(), it is necessary to
> take an extra reference to the mapped file before unlocking the current
> memory management state, as the vma may be freed after that point.
> Unfortunately the aufs patch introduces later uses of the vma, resulting
> in a potential use-after-free.  This is certainly exploitable for a
> minor denial of service (BUG in process context, so the task can't be
> cleaned up properly but the system does not panic) but might also be
> usable for privilege escalation.
> 
> I posted a patch here that works for me:
> http://sourceforge.net/p/aufs/mailman/message/34449209/
> 
> Please assign a CVE ID to this.

Adding MITRE's CVE assignment team to CC.

Can you assign a CVE for this issue?
http://www.openwall.com/lists/oss-security/2015/09/18/10 confirms that
Ben Hutchins' patch fixes the issue.

Regards,
Salvatore
