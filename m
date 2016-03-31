X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1894" "Thursday" "31" "March" "2016" "08:53:17" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1OcZ=ukxttq9A9M9ot78jDPzDmq4y1NGUMAQmSiveH_g@mail.gmail.com>" "57" "Re: [oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 filesystem DoS" "^Cc:" nil nil "3" "2016033114:53:17" "[oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 filesystem DoS" (number mark "        kseifried@re Mar 31   57/1894  " thread-indent "\"Re: [oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 filesystem DoS\"\n") "<20160330204304.GD6207@thunk.org>" ("<f4df42b35dd9a6c8c6851eba66b2b3f1.squirrel@webmail-etu.univ-nantes.fr>" "<1459286067.2596.18.camel@debian.org>" "<57514A3C-DBAD-4E5E-98EA-23E490629C02@dilger.ca>" "<20160330204304.GD6207@thunk.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28567 invoked by uid 550); 31 Mar 2016 14:53:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28546 invoked from network); 31 Mar 2016 14:53:29 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=9iBj1+Izgpc0/6um5lrLjkiMFIJooXVIDSjBnim1qcg=;
        b=SmnqYIUh+QGgjPtTzvVhcmWbcD1tGj+NoAYD+QoKsBo3zQ0I8P3eAJJuvH5ymvUZRl
         dpm/+HlbFF+BgK8P5p3CIgrG6CBNgAZRCPJ/yLCL9lG6Pk+BHBvxgUd4oawzVsJbOMFs
         PEkMpbz3RddSnSY82trY2xOMbNgzCV/90r8h3a25xfmS94JsBPo9u08ugRDNPlh0DDLP
         vRLDlT6h/y4SSNOu5H4pyGoTO0vOZyJwxjM9ZoH/mOFoaQ1Xaj7iQCwlyxdXFYKANZWM
         U2vVG0KPQNrtfzVJ7X5VBl+qb0c5uof4D6ZyYtU0PO0e3RHqg1sOPduAxyew2cN4W7So
         +Tlw==
X-Gm-Message-State: AD7BkJJ0YYqc9hMfV0lChVB6rxAKmeSkp+rtu1t5JHEvKhQpJDUFiUXl1a+4wzQx3w6SeFdeLP5e7KEOzIvJgUy7
MIME-Version: 1.0
X-Received: by 10.37.230.193 with SMTP id d184mr8266896ybh.132.1459435997854;
 Thu, 31 Mar 2016 07:53:17 -0700 (PDT)
In-Reply-To: <20160330204304.GD6207@thunk.org>
References: <f4df42b35dd9a6c8c6851eba66b2b3f1.squirrel@webmail-etu.univ-nantes.fr>
	<1459286067.2596.18.camel@debian.org>
	<57514A3C-DBAD-4E5E-98EA-23E490629C02@dilger.ca>
	<20160330204304.GD6207@thunk.org>
Message-ID: <CANO=Ty1OcZ=ukxttq9A9M9ot78jDPzDmq4y1NGUMAQmSiveH_g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c0b01e639bb21052f596c9e
Cc: Andreas Dilger <adilger@dilger.ca>, Yves-Alexis Perez <corsac@debian.org>, 
	Theodore Tso <tytso@google.com>, linux-ext4@vger.kernel.org
Date: Thu, 31 Mar 2016 08:53:17 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - Linux kernel (multiple versions)
 ext2/ext3 filesystem DoS
To: oss-security <oss-security@lists.openwall.com>

--94eb2c0b01e639bb21052f596c9e
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 30, 2016 at 2:43 PM, Theodore Ts'o <tytso@mit.edu> wrote:
>
>
> You can mount the file system with "mount -o errors=continue" and this
> will override the default behavior specified in the super block.
>
> I would argue that a Desktop or server system that had automount
> should either (a) mount with -o errors=continue, or (b) force an fsck
> on the file system before mounting it.
>

The problem is that:

a) means I'll be mounting filesystems with errors that I may want to know
about (but not have my  system panic about)

b) fsck takes a long time on large disks (the smallest size of disk I buy
for USB drives is 1TB, if I fsck every time I plug one in I'll die of old
age).


>
> So I think this is a particularly meaningless CVE, which is why I have
> zero respect for people who try to make any kind of conclusion based
> on CVE counts.   I certainly don't plan to do anything about this.
>

As for your comments on CVE counting even the then head of CVE @mitre told
people not to rely on CVE counting for vulnerability stats:

https://media.blackhat.com/us-13/US-13-Martin-Buying-Into-The-Bias-Why-Vulnerability-Statistics-Suck-Slides.pdf

As for your comment on not fixing this: I think fundamentally I should be
able to plug a file system in and try to mount it with default/reasonable
options and NOT have my system panic. File system handling code, like any
code that handles user supplied data should be able to handle garbage
gracefully and securely. At worst it should try to mount and go "derp, it's
messed up, maybe fsck it?"


>
>                                            - Ted
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c0b01e639bb21052f596c9e--
