X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["547" "Monday" "6" "November" "2017" "21:18:51" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20171106201851.arkdgqnjzx3rafv5@eldamar.local>" "22" "Re: [oss-security] [CVE-2017-15186]: ffmpeg: Double free when ffmpeg parsing an craft AVI file to MKV file using ffvhuff decoder" nil nil nil "11" "2017110620:18:51" "[oss-security] [CVE-2017-15186]: ffmpeg: Double free when ffmpeg parsing an craft AVI file to MKV file using ffvhuff decoder" (number mark "U       carnil@debia Nov  6   22/547   " thread-indent "\"Re: [oss-security] [CVE-2017-15186]: ffmpeg: Double free when ffmpeg parsing an craft AVI file to MKV file using ffvhuff decoder\"\n") "<87po9iugl6.fsf@gnu.org>" ("<A962A2D04FAB5C4499FEFD15B642FA0A35DF0CA5@EX02.corp.qihoo.net>" "<87po9iugl6.fsf@gnu.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23684 invoked by uid 550); 6 Nov 2017 20:19:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23657 invoked from network); 6 Nov 2017 20:19:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=x0S3TBiJBmoHNZ5mVUaMiN3anuEuL3J2oAYoqQwyYEw=;
        b=eW/Dkvj3Wo5hYH/PhY/Cq3AJ2O2KDDHpgVuBfm2eWnGovoIE5UVcxTfI24Y0tmFv4F
         gX61eKyEJY56nqAqf6Ei3tuGv9TabzGtVwyXLWkGD8EFKjUtJFuAa2/qY6bjWu7BMwEX
         hbdjHgm8UP/TTXlN6HrGPIDvEix2GvEZkMhdBjKxzMnyZ4vKQlCRyE5mMSgrZPE9mrwb
         cbh0KXOa2Wv4qZjoeHIo9lhnWdGCyhdEhY6oOHbZHD4bYs1ow/Hk8GVRkzlXKGwi4+nP
         jqp//yGz4amZYlkE8V08jIeZy2SSxJbdDlWICtZLVGNJz9bt7TE8FKKGtsp/EJMNDyFl
         Aumw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=x0S3TBiJBmoHNZ5mVUaMiN3anuEuL3J2oAYoqQwyYEw=;
        b=Or34yrukhSBvMacJsk4tgiPdRm2/IPgEOr5zpeiub4fiwP6CAFHEwoVBc1nSbHuisS
         WxIAJIvQUdNJcZZ66jxWHve3ObyMvLQyd/9XbRM4dPmZnrBda+0EHKZwKISrcjnBBYHV
         9C3AAxPAgkJmBEQ87C8s4/3v7LDTcmwUufGsXD1tqyEKOF/JINaSXedTYr1xoLENTdYG
         vC0D0GVd/Nk7XThWlH5YnRjYWYGraRZbPc8CRB0Xxhy9theOSVZmCq5maigX0fvIkmht
         akco+x6JMX+FVDkMrfpzC7OXrvgztTFT18n/IBZyhfpXqwMpiiGLDxd2S+GzFCut5jZY
         yvFw==
X-Gm-Message-State: AJaThX4rl/58+XlCSFUkE0Wl6PWJsSUtj14o5gM0MkEhJdVslprJX4YQ
	ySS964OiqjbRDi7MqJFHKrWlGA==
X-Google-Smtp-Source: ABhQp+QM3yZGBz2WNPAL8MO1NJxFwm3Cv4i3U4CWplwznBtoHYHAhakJ8s+GD7ScadD2UZTkDKUtkQ==
X-Received: by 10.223.184.171 with SMTP id i40mr6314493wrf.124.1509999533260;
        Mon, 06 Nov 2017 12:18:53 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 6 Nov 2017 21:18:51 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: =?utf-8?B?6L+e5LiA5rGJ?= <lianyihan@360.cn>
Message-ID: <20171106201851.arkdgqnjzx3rafv5@eldamar.local>
References: <A962A2D04FAB5C4499FEFD15B642FA0A35DF0CA5@EX02.corp.qihoo.net>
 <87po9iugl6.fsf@gnu.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87po9iugl6.fsf@gnu.org>
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: Re: [oss-security] [CVE-2017-15186]: ffmpeg: Double free when ffmpeg
 parsing an craft AVI file to MKV file using ffvhuff decoder

Hi

On Fri, Oct 20, 2017 at 02:52:21PM +0200, Ludovic Courtès wrote:
> Hi,
> 
> 连一汉 <lianyihan@360.cn> skribis:
> 
> > FFmpeg trigger double-free when it parsing an craft AVI file to MKV file using ffvhuff decoder.
> 
> [...]
> 
> > This was fixed with the following commit:
> > https://www.ffmpeg.org/download.html#releases
> 
> Looks like this is not the URL you intended to share, is it?

The fix for this issue appears to be:

https://git.ffmpeg.org/gitweb/ffmpeg.git/commit/df62b70de8aaa285168e72fe8f6e740843ca91fa

Regards,
Salvatore
