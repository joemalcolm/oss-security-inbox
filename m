X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["867" "Thursday" "22" "June" "2017" "02:00:52" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1498111252.32057.3.camel@gmail.com>" "14" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062206:00:52" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        danielmicay@ Jun 22   14/867   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<6cf5d7b3-6d5c-7209-f634-d02a22f21c72@redhat.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>" "<20170619203933.GA910@openwall.com>" "<20170621214006.GB28151@localhost.localdomain>" "<6cf5d7b3-6d5c-7209-f634-d02a22f21c72@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5331 invoked by uid 550); 22 Jun 2017 06:01:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5313 invoked from network); 22 Jun 2017 06:01:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=uFyFuoylprldg9bDeMiQKEHO48SHEfQ3JWc6j/YDEuc=;
        b=Ez+2sdAJl4N5jEYE9KXCCPeV0MMW2GNQVdg2f4abmbjayo+dYUUnhGRYxzRhEBE5TI
         wJE/efDwyhun6KdkgHP1bxqc6kKt/iYqHaZXXg9UqXj5cBzgJ9mpXIk1VYdzCkgksXp2
         PAXpcHKaK4oG3igE9bEKF0kS2ayoaXfELNaYjE5/dQalP1IAUtxHN9evIbu3fw2DdepM
         bdCGbXQE2h4iRge5VbT654bxuKGjo2GH0mFNcVh6k+dfNIXX76IKfhhkwRSMS2+cQueR
         vicib+QL5mKW0txtYa78OdHQ0KRY57g2fJkmRQ73pO60HiHeqStAhp4M5jED3kyg0ON8
         NGPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uFyFuoylprldg9bDeMiQKEHO48SHEfQ3JWc6j/YDEuc=;
        b=kHbZ6zF9LKxt5bvVeAA2Ohjxt0eNqXuVKeogAxoofFmwtgqrOOx/vBaqiUMm+3L921
         ZVnx2vua79zDmlqJF+JMZL3TCuTSVqvvo8as/1kb5PrM5Y3XK83ZIrJ9Nt4WPx3zTviE
         2i9oswtQpdVJtpALxQ8OBVF78bN/ySeeyvgrDGofX/ShxJrHJKXYBis/jSFe9dmqEV8h
         6OYk/TghJWiq6W6ne9N9FCPqV3HN+y/YQ+RWQ8y0A6188LhWA4+ZuICOqpGy1V8yvkVx
         KVWjSBRBVAaApAsxGIyTUJz25Q94rN4zHral8PxBsO38g/Az/AHVf7PPmTZ11f4gi3lE
         aXcA==
X-Gm-Message-State: AKS2vOwn6H1HCaBKsR6KBXu3idpG+bOk2kUCjl/wl/FYl74h96anK2af
	KXcwzPuBFopmlK8AluQ0Bg==
X-Received: by 10.36.146.133 with SMTP id l127mr443272itd.102.1498111254235;
        Wed, 21 Jun 2017 23:00:54 -0700 (PDT)
Message-ID: <1498111252.32057.3.camel@gmail.com>
In-Reply-To: <6cf5d7b3-6d5c-7209-f634-d02a22f21c72@redhat.com>
References: <20170619152843.GC7769@localhost.localdomain>
	 <2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>
	 <20170619203933.GA910@openwall.com>
	 <20170621214006.GB28151@localhost.localdomain>
	 <6cf5d7b3-6d5c-7209-f634-d02a22f21c72@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.3 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Thu, 22 Jun 2017 02:00:52 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com, Qualys Security Advisory
 <qsa@qualys.com>

Is it planned to have glibc use a larger 1M gap for secondary stacks
rather than a single guard page? That would be a *lot* easier than it
was to set it up for the main thread stack. It follows the main thread
stack rlimit as a guideline so it seems to make sense to use the same
guard region size too. If it ends up exposed as a sysctl, it could read
the current value from there.

For the local setuid/setgid/setcap binary attack surface, the main
thread stack is most relevant, but in general many cases of large stack
frames that were found are called in threads other than the initial one.
Secondary stacks are also mixed in with other mmap allocations rather
than having a separate ASLR base and glibc doesn't do any secondary
stack ASLR. IIRC, it does cache color the stacks but not randomly and I
don't remember how much space it currently reserves for that.
