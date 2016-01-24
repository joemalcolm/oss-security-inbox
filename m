X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["653" "Sunday" "24" "January" "2016" "07:47:46" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160124064746.GA23949@eldamar.local>" "24" "[oss-security] CVE Request: Linux: fuse: possible denial of service in fuse_fill_write_pages()" nil nil nil "1" "2016012406:47:46" "[oss-security] CVE Request: Linux: fuse: possible denial of service in fuse_fill_write_pages()" (number mark "U       carnil@debia Jan 24   24/653   " thread-indent "\"[oss-security] CVE Request: Linux: fuse: possible denial of service in fuse_fill_write_pages()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8109 invoked by uid 550); 24 Jan 2016 06:48:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8085 invoked from network); 24 Jan 2016 06:47:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=AUQNEetXPJ+6bCIVhv4ND+VW5WVSaiFgiHAOYY9qAd4=;
        b=f0uvabPxGCKNKWsjyrC71z8FzJNj2Q2dpfQtE18nNiZIJjlqILtOd73RYobOfIz8wr
         Me79dAVnkDzv0bbkKqqaCOdycaaekxRaukGWyAuAaO1kv2Uz1IBGC7sSbb0z0AkUlT+f
         ixnK4OF2GaWBY+87vn7ys7bkFUZ4+74YTc34i6WJiw+kRI65/ujDoYsGG3jgNdKCdIjH
         XIXtHVIIMUMPkzoHSuvCg2nHH1RfOuu5QZTfRxHdxQvuxzsyR0ywAST9H9UjsYotRy/k
         Qpf7wM0323dpZ15f7CNNlNcM9vT4AlN4J55Tcs1lJCW9DLdm1tAoSZDBuaRuk0ijy5KO
         tgcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=AUQNEetXPJ+6bCIVhv4ND+VW5WVSaiFgiHAOYY9qAd4=;
        b=eeBgCq9aLWp/SoiFr2spbqnOpdCTwNWrxxYncX1cWlRwAq8i5NUhKQE9mYkelSk8cr
         e4FmjXQ/kRyuhiubQXrUdBzUlYi5l7d7MPv/dEZIuqvi++BserRvsZGCyXMWyzEznVVO
         p1jSNTyhnMbNMQSvl00QF6a2SJi+cAjleaxwkJSMw9ylA9RhSKOrHmNL2MJBSmYauJU6
         xv78LYQyklBZY8OFmAZInWhumF26CHuZOJO4IhvtuiybE0fwz2tYLpAqqcSE+6oWl8mQ
         NuEESJkTTKqt/N0oYZvXZQi3duO/w4qgHFR4ccNwW7ZBHML0TR6JLU8iBQiYMbLp4kzH
         HZCA==
X-Gm-Message-State: AG10YOTgqJy+DyzUIujl6psg0q31doo/VbGU7+nFfd9Khy4sNTV6p1zVKievgazIXoFVTw==
X-Received: by 10.194.246.200 with SMTP id xy8mr10889642wjc.62.1453618068497;
        Sat, 23 Jan 2016 22:47:48 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 24 Jan 2016 07:47:46 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160124064746.GA23949@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: Linux: fuse: possible denial of service in
 fuse_fill_write_pages()

Hi

Can you assign a CVE for the following issue found

https://bugzilla.redhat.com/show_bug.cgi?id=1290642

> A patch was posted to fix an issue regarding unkillable task eating
> CPU.
> 
> The problem is in the fuse_fill_write_pages() function.  When a user
> calls the sys_writev syscall with specially crafted sequence of iovs
> the kernel function may never terminate and continue in a tight loop,
> the process is unable to be killed.

Introduced in:
https://git.kernel.org/linus/ea9b9907b82a09bd1a708004454f7065de77c5b0
(v2.6.26-rc1)

Fixed by:
https://git.kernel.org/linus/3ca8138f014a913f98e6ef40e939868e1e9ea876
(v4.4-rc5)

Regards,
Salvatore
