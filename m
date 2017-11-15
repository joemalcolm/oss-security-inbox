X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["487" "Wednesday" "15" "November" "2017" "21:37:35" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20171115203735.svsrk7hu2z7rtxaa@eldamar.local>" "13" "Re: [oss-security] collectd: CVE-2017-16820: snmp-plugin: double free of request PDU" nil nil nil "11" "2017111520:37:35" "[oss-security] collectd: CVE-2017-16820: snmp-plugin: double free of request PDU" (number mark "U       carnil@debia Nov 15   13/487   " thread-indent "\"Re: [oss-security] collectd: CVE-2017-16820: snmp-plugin: double free of request PDU\"\n") "<20171115203040.ygcpeaxl4lsgrkmo@eldamar.local>" ("<20171115203040.ygcpeaxl4lsgrkmo@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30004 invoked by uid 550); 15 Nov 2017 20:37:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29986 invoked from network); 15 Nov 2017 20:37:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=y0XAxGRQEdCbdFIP54uzeNY9euk9hoTZLBmWPUBxmQ8=;
        b=YiOpl7WkK3NO96hkZA35KBU2Lj0FwhNCkgqPUPAPU/44+QfOhI8PApgS5SXU7ZgJ9q
         k04OxmtpAxeyTCWzZrRdsAvbtMsnGo7AT2BHgt2kIifZbfSz11HIpYW8erPRBBDUDE2O
         9Kx44UBzb/PmMoWWy0Qc//7q2Rn6qBmlzrLSv9tjcBdFn6XDCDRbFv8ZP7thi7dhCF3T
         yfMif/JlzEFdfbA5edfj3q+U7g5Z5bK6lE1KCcjySPdkARyQs5KMrEU2uWKrr+CvJR8g
         UIbD98QUjBRR0TOSZtlVm8kkwgOh87bUyZfEWu/9WIko8Z/DcNR9+UAowrVFRnTaBUed
         UuiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=y0XAxGRQEdCbdFIP54uzeNY9euk9hoTZLBmWPUBxmQ8=;
        b=ZrXcyXYVs4EaD+P2KbUQfYN6kEiwpROCWoOFzXaEBCznaAFZVcBGbtyxp0W2D3AAoM
         tT4thuDKM8KxOIciPdu0hfNvHZlPL8eU2EiYu/pX8egJaJ/bloB1HZjAT5d+vUDT7/JV
         DrWfI7bbw3k7+x44Cz/1ppH/g6Jpd5LajAh/xbGondsVoS6DAFu+weXYUXHcjFl0WHoN
         b3XihrlKgX6YZQ8orXyZI86vFS9Q17l5mjJ25xAhQ3vHqyJMzsp+mUeh4UgsEJE74kBd
         2g+YUpnV8rBRjwgAKEu6BP3Fcl8gSOCVUpLoNavx7IVa0dOVSWZr9AI381DHf1bcbSxx
         y6ZQ==
X-Gm-Message-State: AJaThX5MIq68Gx428Pe6KrJOnqlDCgQ25n3w90Wodb1HEtu7aHEoVUcm
	iW4kXWXMIj/wfwOfV65A5ojw8Q==
X-Google-Smtp-Source: AGs4zMa1UEV42xxx6Kj7yIVSJ3kcUEvSnOq2+I1IQXvWxfZJxc575LTT4sKOzBjh5luqYygEDa0fEg==
X-Received: by 10.223.148.102 with SMTP id 93mr13013391wrq.32.1510778257487;
        Wed, 15 Nov 2017 12:37:37 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 15 Nov 2017 21:37:35 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20171115203735.svsrk7hu2z7rtxaa@eldamar.local>
References: <20171115203040.ygcpeaxl4lsgrkmo@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171115203040.ygcpeaxl4lsgrkmo@eldamar.local>
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: Re: [oss-security] collectd: CVE-2017-16820: snmp-plugin: double
 free of request PDU

On Wed, Nov 15, 2017 at 09:30:40PM +0100, Salvatore Bonaccorso wrote:
> Hi
> 
> Collectd's snmp-plugin is prone to a double free vulneability. This
> issue was made aware to the Debian security team, but turned out to be
> public already in. MITRE has assigned CVE-2017-16820 for it. The snmp
> plugin contains a double-free vulnerability in the
> snmp_sess_synch_response() function. Commit message:

Should have read csnmp_read_table, not snmp_sess_synch_response.

Regards,
Salvatore
