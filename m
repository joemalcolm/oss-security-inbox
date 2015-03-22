X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1452" "Sunday" "22" "March" "2015" "12:04:54" "+1000" "Justin Steven" "justin@justinsteven.com" "<CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>" "52" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032202:04:54" "[oss-security] CVE for Kali Linux" (number mark "        justin@justi Mar 22   52/1452  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550E21FA.6090704@redhat.com>" ("<550E21FA.6090704@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20269 invoked by uid 550); 22 Mar 2015 02:06:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19920 invoked from network); 22 Mar 2015 02:05:20 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=YrvVjzDr20LKpcPKCvU/Hk/d07E02LKqEZUkbvSB7h8=;
        b=KYrWw5m73kAYWd2Aj+AmKo67KO7ss5jLvkWSRHHlatzcKALzKg3HZGxf4MyYr57EVx
         dW0+m2XD/eR8zZuDYW3q/wxiWKVrWnUs726gSorjzFl3FBoj7/zhky6bymW+xVtdad//
         1k7PNFgkS/pxJbxjHiXhg+2Yc674eXKwBCZwHN5GEZLkzQfHDP6L8NO4yzhQIUliDlGK
         2/IuM/GoNNZXljFzG9Ay9sB319immHELjJh2SSjm/IKu7EBFfAnWJV8ZF/s45S4qAw9z
         fHmM6l+giyjGr4hU0v2+T3AvWCZigVKF0I2RkQaakHS6loPIFVDFMHXaYURipth8vWJO
         EwtA==
X-Gm-Message-State: ALoCoQmWR0Opyelk/nAIKU0QT/mnKvzaDKV0PSaJM3T00aaKV8yI2+KYntmLWafuvE5mfVkIH4MA
X-Received: by 10.107.155.131 with SMTP id d125mr159022696ioe.17.1426989909409;
 Sat, 21 Mar 2015 19:05:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <550E21FA.6090704@redhat.com>
References: <550E21FA.6090704@redhat.com>
Message-ID: <CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1140aacea6189d0511d6fa49
Cc: Assign a CVE Identifier <cve-assign@mitre.org>
Date: Sun, 22 Mar 2015 12:04:54 +1000
From: Justin Steven <justin@justinsteven.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

--001a1140aacea6189d0511d6fa49
Content-Type: text/plain; charset=UTF-8

Kali, like its upstream (Debian), signs packages using gpg.

https://wiki.debian.org/SecureApt

Kali provides sha1sums over https at their site to verify the .iso
download, as well as providing gpg signatures for .iso files

--
Justin

On 22 March 2015 at 11:59, Kurt Seifried <kseifried@redhat.com> wrote:

> From RISKS, looks like it needs a CVE
>
> Date: Tue, 17 Mar 2015 07:37:50 -0700
> From: Henry Baker <hbaker1@pipeline.com>
> Subject: Kali Linux security is a joke!
>
> FYI -- Your best chance to hack the hackers...
>
>   "Downloading Kali Linux"
>
>   "Alert!  Always make certain you are downloading Kali Linux from official
>   sources, as well as verifying md5sums against official values.  It would
>   be easy for a malicious entity to modify a Kali install to contain
>   malicious code, and host it unofficially."
>   http://docs.kali.org/category/introduction
>
> ---
>
> No kidding!
>
> So how come whenever you do apt-get install in Kali Linux, it accesses
> http://security.kali.org and http://http.kali.org ??
>
> Hasn't Kali heard about MITM attacks against http ??
>
> What's the point of verifying md5 sums against "official values", if Kali
> can't even get the "official values" securely ??
>
>
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
>
>

--001a1140aacea6189d0511d6fa49--
