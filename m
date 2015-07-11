X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["201" "Friday" "10" "July" "2015" "19:45:08" "-0500" "=?UTF-8?B?RmVybmFuZG8gTXXDsW96?=" "fernando@null-life.com" "<CAEr-gPECMXMc6S79EEHOfSKfGCkSLrNDd1FJcC8DxWu_ipWxeQ@mail.gmail.com>" "7" "[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow" nil nil nil "7" "2015071100:45:08" "[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow" (number mark "        fernando@nul Jul 10    7/201   " thread-indent "\"[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow\"\n") "<CAEr-gPHWcYrk2+JCLYGQsDbTTh5OH94tMBQejjt3sbP_f9p2Xw@mail.gmail.com>" ("<CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>" "<CAEr-gPHWcYrk2+JCLYGQsDbTTh5OH94tMBQejjt3sbP_f9p2Xw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1508 invoked by uid 550); 11 Jul 2015 00:45:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1487 invoked from network); 11 Jul 2015 00:45:20 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=kXQJqKJ8a9LrBUI2fAqt81VlaMNXNYSoAVV1UYPM+B4=;
        b=epeZnucwQL19PWUIltFTmFIOh71J1olBSPE9rFwNloy7FFRqUv/6KMld4kzAhnQPYi
         mn+JbpV7P8TlC4lpxd3m6sixgWl5sQ/sltTGbkt7GSQwCyGujlQavivt91EceqmTJ2cl
         tuH09ygboO5AzxbnG5M8KR4VbnmvH5QVcWLz4p3p/1Aba7uwUzn6iMJqQAoUzpqvi3yZ
         reLEUZNjk6sBau0aw1mbQlC2V7TwScm4k3RngUc3B7K5ck1qIjIJKFCJDfb0YHz2yufz
         ZnZiKsSt5lsK3rbwODhJcoU9aRVvN6X43pkgVVkVkhJOCgnWNSIdfA/ZqMdhX68nFPhn
         7DhA==
X-Gm-Message-State: ALoCoQnU1R8DE8O57UQwwRw/g6wsVCT4Ml/JBGvVcH6q+s3WAC4kumW7Au2CfsQxCbWC1jbJd1Df
MIME-Version: 1.0
X-Received: by 10.50.137.40 with SMTP id qf8mr1526519igb.52.1436575508628;
 Fri, 10 Jul 2015 17:45:08 -0700 (PDT)
X-Originating-IP: [181.50.56.230]
In-Reply-To: <CAEr-gPHWcYrk2+JCLYGQsDbTTh5OH94tMBQejjt3sbP_f9p2Xw@mail.gmail.com>
References: <CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>
	<CAEr-gPHWcYrk2+JCLYGQsDbTTh5OH94tMBQejjt3sbP_f9p2Xw@mail.gmail.com>
Message-ID: <CAEr-gPECMXMc6S79EEHOfSKfGCkSLrNDd1FJcC8DxWu_ipWxeQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Fri, 10 Jul 2015 19:45:08 -0500
From: =?UTF-8?Q?Fernando_Mu=C3=B1oz?= <fernando@null-life.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow
To: oss-security@lists.openwall.com, cve-assign@mitre.org

I'm sorry, should I just give up about trying to get a CVE here?

I've just noticed this issue is also being tracked at Red Hat at the moment:

https://bugzilla.redhat.com/show_bug.cgi?id=1228297

- F
