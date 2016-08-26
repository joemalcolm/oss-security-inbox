X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["892" "Friday" "26" "August" "2016" "13:46:40" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3OM-PVZXDmPvrdVrxbHaz9zxGkTrUC=-cM9M0XQhadYw@mail.gmail.com>" "28" "=?UTF-8?B?UmU6IFtvc3Mtc2VjdXJpdHldIE11bHRpcGxlIHZ1bG5lcmFiaWxpdGllcyBpbiBSUE0g?==?UTF-8?B?4oCTIGFuZCBhIHJhbnQ=?=" "^Cc:" nil nil "8" "2016082619:46:40" "=?UTF-8?B?W29zcy1zZWN1cml0eV0=?= =?UTF-8?B?TXVsdGlwbGU=?= =?UTF-8?B?dnVsbmVyYWJpbGl0aWVz?= =?UTF-8?B?aW4=?= =?UTF-8?B?UlBN?= =?UTF-8?B?4oCT?= =?UTF-8?B?YW5k?= =?UTF-8?B?YQ==?= =?UTF-8?B?cmFudA==?=" (number mark "        kseifried@re Aug 26   28/892   " thread-indent "\"=?UTF-8?B?UmU6IFtvc3Mtc2VjdXJpdHldIE11bHRpcGxlIHZ1bG5lcmFiaWxpdGllcyBpbiBSUE0g?==?UTF-8?B?4oCTIGFuZCBhIHJhbnQ=?=\"\n") "<20160826213205.102bf6c0@pc1>" ("<20160826213205.102bf6c0@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12257 invoked by uid 550); 26 Aug 2016 19:46:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12239 invoked from network); 26 Aug 2016 19:46:52 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=3J9GuL0BV4gqpWcaR0kpE0IDFFz7zBY+pEak0i5gH6Q=;
        b=dITkr5cssS/YdJPGX2vnnpcu7rzivcoHgq/SDWWYry2tMoq262ubgu1dvoIcW2vf5S
         8obyen5d6nvGwxu9RNmY/jAfawDeBulkdyLSaY+SsH6AtMpZAUKAZKVjprj9g5/Bpvw9
         q0Ej2Qk4XJds91vsCvIsMPZGsggBhUrAxz5ppRCgkZ4P2ag7wFW4Cg4fpkOwKhK4mOoe
         AZokAcx9rr32y2SJe0dy182qgHUE8+XIE7JEX/VJ/7DyI5zT6xLTJs2ppDdSARFXP0jL
         meLjaLA8SAODqhn4mMnMojTwrMVID7OrY0GKdrqzpQQaCc3pBqWsIJQWhsojhZIMEJV7
         w7cg==
X-Gm-Message-State: AE9vXwNXPhshDM+88sd1xUGbSEdAXGtyztjK7PRbLCYq5ClHEdstluN7rescsn0JAkSm74h3Y/D2gknazrROm35O
X-Received: by 10.202.237.204 with SMTP id l195mr3818229oih.68.1472240800636;
 Fri, 26 Aug 2016 12:46:40 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160826213205.102bf6c0@pc1>
References: <20160826213205.102bf6c0@pc1>
Message-ID: <CANO=Ty3OM-PVZXDmPvrdVrxbHaz9zxGkTrUC=-cM9M0XQhadYw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113d30d2f24a7a053afec5df
Cc: CVE ID Requests <cve-assign@mitre.org>
Date: Fri, 26 Aug 2016 13:46:40 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: =?UTF-8?Q?Re=3A_=5Boss=2Dsecurity=5D_Multiple_vulnerabilities_in_RPM_?=
	=?UTF-8?Q?=E2=80=93_and_a_rant?=
To: oss-security <oss-security@lists.openwall.com>

--001a113d30d2f24a7a053afec5df
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 26, 2016 at 1:32 PM, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:

> https://blog.fuzzing-project.org/52-Multiple-vulnerabilities-in-RPM-and-a-
> rant.html
>
> Okay, but RPM stands for =E2=80=9CRed Hat package manager=E2=80=9D, so ma=
ybe Red Hat
> feels responsible. So I reported three bugs with sample files
>

Actually it doesn't. RPM =3D RPM Package Manager (like GNU).

http://www.rpm.org/
https://en.wikipedia.org/wiki/RPM_Package_Manager

Also I would note that Red Hat isn't the only user of RPM, there are a
large number of distros that use RPM (e.g. SUSE).

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113d30d2f24a7a053afec5df--
