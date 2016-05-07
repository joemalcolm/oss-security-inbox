X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1160" "Saturday" "7" "May" "2016" "06:22:32" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160507042232.GA5286@eldamar.local>" "32" "[oss-security] CVE Request: Linux: IB/security: Restrict use of the write() interface'" "^Cc:" nil nil "5" "2016050704:22:32" "[oss-security] CVE Request: Linux: IB/security: Restrict use of the write() interface'" (number mark "        carnil@debia May  7   32/1160  " thread-indent "\"[oss-security] CVE Request: Linux: IB/security: Restrict use of the write() interface'\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22409 invoked by uid 550); 7 May 2016 04:22:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22384 invoked from network); 7 May 2016 04:22:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rs6zpIE41C7lkhaCXOv0bYJNO6O50jAeNnlZNzNPBjY=;
        b=mzWxtIYmczLMZOWhvsFQmoovEKX6JX4ut22xLN0LQxPHQQhHT4h40DatzXK90Nbm8A
         cbKPvMFtk9Hu/aKWJ9/t21Na5379hMfzKOwLEFY6qOTkD0LE8RcSJoDgP3ubW55d9wrY
         OtLQhgCHbCpjs3Mj37Apey4DTX5cvnEPGfQAxpcJ8Y3k+3W6sTVCianz2l12XvyYBM+I
         bpWGX9vzSbe0g6aYZBTKqD8N5SXVWxzk1UjecLpytxBF+aP1uI2A+/+LZ8ZQCccu/1g9
         72tcvnrqwnMGVzl0fe+iGg8yA1gGsbNRNNrXPTOOdsaDQykz+8y5S1lU8CbY9sJMC1CF
         tJKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=rs6zpIE41C7lkhaCXOv0bYJNO6O50jAeNnlZNzNPBjY=;
        b=BMdwdpUQCfTHcNPUevwdY+JQU9V+VQHtmZDgo3/Y11gZzQugAnKcpItJG/PoQkCshP
         eifPokyJm3tEPBqBJFI+c+Unnqs8c7F2GY3PsPcewrAxfCFaghDxk62if+P1faekOzzb
         x23UPXCVmuijODY+7yqF/o7w461c5KRbnimwOD8YnuJnwpORKNZhU8WDXC+3QEcdpz0Z
         OYT2tLNTpeHuQzLn1ZdJJFpbQOQr3C5qAAkQGsVEh0PoiVEprwybF3ed9w3Yy6p6/5SB
         mREv3vIRTqT2Qlz3cj+vxLoWlofIOZsAcM67SqAz9x9bKzXOdA2T+3m9XxGXSeLOcyhk
         0PGg==
X-Gm-Message-State: AOPr4FVSrU1YfaxP1AIfiL3+0dtayISJsJ9fhrAqJw/eGWVv5PqDV8SFJQNEvHLuTZb6pQ==
X-Received: by 10.194.203.138 with SMTP id kq10mr23353266wjc.155.1462594954318;
        Fri, 06 May 2016 21:22:34 -0700 (PDT)
Message-ID: <20160507042232.GA5286@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Doug Ledford <dledford@redhat.com>,
	Red Hat Security Response Team <secalert@redhat.com>,
	Ben Hutchings <benh@debian.org>
Date: Sat, 7 May 2016 06:22:32 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: Linux: IB/security: Restrict use of the write()
 interface'
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

Jann Horn reported an issue in the infiniband stack. It has been fixed
in v4.6-rc6 with commit e6bd18f57aad1a2d1ef40e646d03ed0f2515c9e3:

https://git.kernel.org/linus/e6bd18f57aad1a2d1ef40e646d03ed0f2515c9e3

> IB/security: Restrict use of the write() interface
> The drivers/infiniband stack uses write() as a replacement for
> bi-directional ioctl().  This is not safe. There are ways to
> trigger write calls that result in the return structure that
> is normally written to user space being shunted off to user
> specified kernel memory instead.
> 
> For the immediate repair, detect and deny suspicious accesses to
> the write API.
> 
> For long term, update the user space libraries and the kernel API
> to something that doesn't present the same security vulnerabilities
> (likely a structured ioctl() interface).
> 
> The impacted uAPI interfaces are generally only available if
> hardware from drivers/infiniband is installed in the system.

Could you assign a CVE for this issue?

I'm just to avoid possible duplication as well Cc'ing Red Hat's
secalert, since the commit was signed off by Doug Ledford
<dledford@redhat.com>.

Regards,
Salvatore
