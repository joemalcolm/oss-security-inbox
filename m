X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1662" "Wednesday" "14" "April" "2021" "19:08:10" "-0300" "Thiago H. de Paula Figueiredo" "thiagohp@gmail.com" nil "69" "[oss-security] CVE-2021-27850: Apache Tapestry: Bypass of the fix for CVE-2019-0195" nil nil nil "4" nil nil (number mark "U       thiagohp@gma Apr 14   69/1662  " thread-indent "\"[oss-security] CVE-2021-27850: Apache Tapestry: Bypass of the fix for CVE-2019-0195\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-27850: Apache Tapestry: Bypass of the fix for CVE-2019-0195" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1553 invoked by uid 550); 15 Apr 2021 10:29:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12125 invoked from network); 14 Apr 2021 22:08:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=6+rYTAWvq99h1uvAYzppP04yRMZ92mkP+8MlqPyaGVE=;
        b=m2cOM5x+zVsIqmtioegXe6xOcmaMlC7f81LFeZI/hdnhQDyz2pKc3wOuaePyMF6YfW
         Pm2M9K3mMuLPTYx4xiQM5MkwTjRgAi5jZHOX3sfHtmQQdHJzouIJhJ3LNS8JNGe6zwve
         1zVFgHYfaFM72Ng3PJTkO70lxA8Pq4YbLrau20EjjBFxsqb/Wz5MiyW1fnmVplVx3XTY
         lruYYYYQeM9VXPgoCvmTq4Y5NVqST6ajaB4dJl6gYe168YWe2Z2LaHe+rc6WGEhJv4It
         qjfOLZHg10a3958QcTsdjseaFQKlxnrEspz3v2f/hSyxwZJACTXCCteckEKnXtfm9tct
         ztdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6+rYTAWvq99h1uvAYzppP04yRMZ92mkP+8MlqPyaGVE=;
        b=oxNjfMfXUsSgZ2bjuzHZa/8UsiStt2FY2Ea+aXtxxe7HZ1X/rdj5iEaf++frwXC7Bw
         b8FOx4Mkd+qkeA4dDpwELYDa76v6/Koxki1xFiE7H7qwGG74aAytx946y3hRg2bs4/fT
         DIfBAp/3u3ixrxi5TQX+ASCVOILK8sX5mHu+f9T13Ehj98Vr6XPb1J6QY4KBppfnP84O
         iAYHjuhPr5+FB2AsFxIWdBdXIv+mFiz6BqDRLMydRv0YIQz04ET2+89PMAmSUFXZIApD
         pG/t4jezziLzkw+a0/a2b/TcwTh7Y0sOWJPs60sPGjOmmGJqr4lcHTm+Cx6MWDpBgITL
         Fxow==
X-Gm-Message-State: AOAM531pXCUZmgxMbwOU0+mR+FLVIQDpPSUZB+8QXa6HHgX8USGQ5qHL
	x8oyWI7HJ8pe4dtkDicxiVVnkemywcNiqwcsSLn/bD9Du3A=
X-Google-Smtp-Source: ABdhPJygPTFQiYOhTDEMQyGmMqNHtlNGmg3zufM1D0mQK4zaPltv1QQb8F3A8kowGTza90HTjzF8aMA3ls76HUD7tT4=
X-Received: by 2002:a05:6512:3a83:: with SMTP id q3mr226964lfu.460.1618438100834;
 Wed, 14 Apr 2021 15:08:20 -0700 (PDT)
MIME-Version: 1.0
From: "Thiago H. de Paula Figueiredo" <thiagohp@gmail.com>
Date: Wed, 14 Apr 2021 19:08:10 -0300
Message-ID: <CAE_88GZCZPNLtUbT9K_dJ9Y=b18pKu3Us3BkE5ueZAUnvnSsnQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000175b6c05bff5fc8a"
Subject: [oss-security] CVE-2021-27850: Apache Tapestry: Bypass of the fix for CVE-2019-0195

--000000000000175b6c05bff5fc8a
Content-Type: text/plain; charset="UTF-8"

Description:

A critical unauthenticated remote code execution vulnerability was found

all recent versions of Apache Tapestry.

The affected versions include 5.4.5, 5.5.0, 5.6.2 and 5.7.0.

The vulnerability I have found is a bypass of the fix for CVE-2019-0195.

Recap:

Before the fix of CVE-2019-0195 it was possible to download arbitrary

class files from the classpath by providing a crafted

asset file URL.

An attacker was able to download the file `AppModule.class` by

requesting the URL

`http://localhost:8080/assets/something/services/AppModule.class`

which contains a HMAC secret key.

The fix for that bug was a blacklist filter that checks if the URL

ends with `.class`, `.properties` or `.xml`.

Bypass:

Unfortunately, the blacklist solution can simply be bypassed by

appending a `/` at the end of the URL:

`http://localhost:8080/assets/something/services/AppModule.class/`

The slash is stripped after the blacklist check and the file

`AppModule.class` is loaded into the response.

This class usually contains the HMAC secret key which is used to sign

serialized Java objects.

With the knowledge of that key an attacker can sign a Java gadget

chain that leads to RCE (e.g. CommonsBeanUtils1 from ysoserial).

Solution for this vulnerability:

* For Apache Tapestry 5.4.0 to 5.6.2, upgrade to 5.6.2 or later.

* For Apache Tapestry 5.7.0, upgrade to 5.7.1 or later.

This issue is being tracked as TAP5-2663

Credit:

Apache Tapestry would like to thank Johannes Moritz for finding and
notifying this vulnerability
-- 
Thiago

--000000000000175b6c05bff5fc8a--
