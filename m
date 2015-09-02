X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1081" "Wednesday" "2" "September" "2015" "14:28:59" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3i9JGHOm9J=XbQDLq9POLa2=G5FVzKs58b4YHrS=-iqA@mail.gmail.com>" "40" "Re: [oss-security] CVE-2015-5239 Qemu: vnc infinite loop issue" nil nil nil "9" "2015090220:28:59" "[oss-security] CVE-2015-5239 Qemu: vnc infinite loop issue" (number mark "        kseifried@re Sep  2   40/1081  " thread-indent "\"Re: [oss-security] CVE-2015-5239 Qemu: vnc infinite loop issue\"\n") "<alpine.LFD.2.20.1509030058080.6240@wniryva>" ("<alpine.LFD.2.20.1509030058080.6240@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18041 invoked by uid 550); 2 Sep 2015 20:29:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18023 invoked from network); 2 Sep 2015 20:29:11 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=EZ8KbZJvhfLe8oWeQp7Gq969IQsTIOslqpoeU5B8BWo=;
        b=lNVwps391/zWMMRpP/vV/lZrMt/WkTwNNqm2+fAHPCrXsOVrUJiliNk4ECI1wTqac/
         oJ85uorwVfX1Wx8/8pVmv/OhZco4oPZpzQhe0VN5v5oku8BcbEI4475sWCB4SHdWr6W3
         M+Zj64j7t1sB7/Mj4s2xo2CoPTmB7k3LclY0R7fmYW0fAvb0xBfrf7Fz2VMi8qPUS8XF
         bOqOT6/lWo/jaOdlVZV/wocTVqK0/qtPTl69BeZTwiRm0j73SlgfbcambPun8RJafddf
         rlffRhWc8AzTalDwQpbKTkw2gFjs/sNeszGrwYuWzSIHRSalU93+KaTpwwFdBpNRqBAJ
         Ifmg==
X-Gm-Message-State: ALoCoQl6bvtjlyg2kyRM5AnzkdnlZ6bMVHDJu86ucaGQalEWTpx6t4SaLSFYp5UUuvzxslogPvMV
MIME-Version: 1.0
X-Received: by 10.129.79.198 with SMTP id d189mr19332872ywb.159.1441225739871;
 Wed, 02 Sep 2015 13:28:59 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1509030058080.6240@wniryva>
References: <alpine.LFD.2.20.1509030058080.6240@wniryva>
Message-ID: <CANO=Ty3i9JGHOm9J=XbQDLq9POLa2=G5FVzKs58b4YHrS=-iqA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114db2ea44662f051ec984af
Cc: lianyihan@360.cn
Date: Wed, 2 Sep 2015 14:28:59 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-5239 Qemu: vnc infinite loop issue
To: oss-security <oss-security@lists.openwall.com>, Prasad Pandit <ppandit@redhat.com>

--001a114db2ea44662f051ec984af
Content-Type: text/plain; charset=UTF-8

PJP are you sure this isn't
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2015-5239 ? Mitre: can you
please hold off in case this already has a CVE assigned. Thanks.

On Wed, Sep 2, 2015 at 1:33 PM, P J P <ppandit@redhat.com> wrote:

>   Hello,
>
> Qemu emulator built with the VNC display driver is vulnerable to an
> infinite loop issue. It could occur while processing a CLIENT_CUT_TEXT
> message with specially crafted payload message.
>
> A privileged guest user could use this flaw to crash the Qemu process on
> the host, resulting in DoS.
>
> Upstream fix:
> -------------
>   ->
> http://git.qemu.org/?p=qemu.git;a=commit;h=f9a70e79391f6d7c2a912d785239ee8effc1922d
>
>
> Thank you.
> --
> Prasad J Pandit / Red Hat Product Security Team
> 47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114db2ea44662f051ec984af--
