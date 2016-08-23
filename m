X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1726" "Tuesday" "23" "August" "2016" "08:21:25" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0qqSYWXQ2SfZuq8BOZ2rhGvg5mGxD2pB38HVvp1vvrwg@mail.gmail.com>" "36" "Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" "^Cc:" nil nil "8" "2016082314:21:25" "[oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" (number mark "        kseifried@re Aug 23   36/1726  " thread-indent "\"Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices\"\n") "<20160823053842.GB21570@1wt.eu>" ("<20160818142216.GH2701@suse.de>" "<20160818143014.GA27854@kroah.com>" "<20160818143957.GI2701@suse.de>" "<20160818145724.GA32181@kroah.com>" "<20160818151654.GK2701@suse.de>" "<1471538630.13300.95.camel@decadent.org.uk>" "<3385bcd9-629a-5978-abfa-87cae962deb2@redhat.com>" "<20160818195024.GB17944@1wt.eu>" "<20160822152448.GC3132@suse.de>" "<20160823053842.GB21570@1wt.eu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23823 invoked by uid 550); 23 Aug 2016 14:21:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23787 invoked from network); 23 Aug 2016 14:21:37 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=f2MkfgUDarq97RZHJSUZoprmeegSAXppv09MMMWU6Jk=;
        b=KpjFL44Xk7U4C5vvkdJ9fdaKh0N0u6S7RwxcqBrA5JlQq7y92brppE70KBqr6wY3Hy
         pRf7BSfGo6aK4cv97/AR1r/bnitGKDEBJCGVpXfmsBDg/VgEFcvirerma//XFpoFCa3n
         +0ZLJDQpgvfaXqvArkgQArA3qUv1/ugZi9PLWdnuB7Xz54OQSYh+/LnyP+G06G9Z6QZy
         FguaQTZcVkxt3qFVDciRmaemiXpIo0u5z1xIo2wG3mgECqwfis0P85U9HdsHRAd+cU0q
         zZXqme0DUw+VlTDm0croJ74u3j9nzG+LIIjbg1A5BxgXhNMwoeArlLBdB4wQ4MxIm65s
         xCIg==
X-Gm-Message-State: AEkoouuE1LNjwyZNbMhX44Te5azGdWkBrW9T7c5r26GfnthvHKP+xTfdilBOR3l51kC2ZMr7QW9cySDnUbyAg/KF
X-Received: by 10.202.240.4 with SMTP id o4mr15376326oih.198.1471962086018;
 Tue, 23 Aug 2016 07:21:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160823053842.GB21570@1wt.eu>
References: <20160818142216.GH2701@suse.de> <20160818143014.GA27854@kroah.com>
 <20160818143957.GI2701@suse.de> <20160818145724.GA32181@kroah.com>
 <20160818151654.GK2701@suse.de> <1471538630.13300.95.camel@decadent.org.uk>
 <3385bcd9-629a-5978-abfa-87cae962deb2@redhat.com> <20160818195024.GB17944@1wt.eu>
 <20160822152448.GC3132@suse.de> <20160823053842.GB21570@1wt.eu>
Message-ID: <CANO=Ty0qqSYWXQ2SfZuq8BOZ2rhGvg5mGxD2pB38HVvp1vvrwg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c0943ee42ab31053abde16a
Cc: Marcus Meissner <meissner@suse.de>, Adam Maris <amaris@redhat.com>, Greg KH <greg@kroah.com>, 
	CVE ID Requests <cve-assign@mitre.org>, security@kernel.org
Date: Tue, 23 Aug 2016 08:21:25 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when
 plugging in malicious USB devices
To: oss-security <oss-security@lists.openwall.com>

--94eb2c0943ee42ab31053abde16a
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 22, 2016 at 11:38 PM, Willy Tarreau <w@1wt.eu> wrote:
>
> I'd classify it differently : something where a bug allows someone
> unauthorized to do something he couldn't do differently needs a CVE.
> That includes memory corruption, code execution, privilege increases,
> local DoS/panic/oops by just executing an exploit, etc. Here we're
> speaking about someone plugging some hardware into an open port which
> immediately takes the whole system down. Sure, the faulty code makes
> this possible. But the hardware is purposely designed for this. I can
> also design some hardware which takes the system down and possibly even
> fries it without involving the code at all. So once this device is
> built, if we assign a CVE, nobody will fix it and it will not even
> apply to any specific OS. Oh, after just one Google request I found
> that I was not the first one to think about it, it already exists :
>
>    http://arstechnica.com/security/2015/10/usb-killer-
> flash-drive-can-fry-your-computers-innards-in-seconds/
>

Ah but defending against this sort of physical attack is actually quite
easy, use a USB hub, or for higher assurance use a wireless USB hub. TBH
I'm not sure what the difference is between say the above USB killer and a
small taser or a small squirt bottle of saline solution.

In general I should be able to plug USB devices into a computer without the
computer succumbing to software based attacks (stuxnet anyone?).

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c0943ee42ab31053abde16a--
