X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["394" "Tuesday" "12" "July" "2016" "15:08:48" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160712130848.GA27890@lorien.valinor.li>" "15" "[oss-security] CVE Request: libgd: Out-Of-Bounds Read in function read_image_tga of gd_tga.c" nil nil nil "7" "2016071213:08:48" "[oss-security] CVE Request: libgd: Out-Of-Bounds Read in function read_image_tga of gd_tga.c" (number mark "U       carnil@debia Jul 12   15/394   " thread-indent "\"[oss-security] CVE Request: libgd: Out-Of-Bounds Read in function read_image_tga of gd_tga.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20273 invoked by uid 550); 12 Jul 2016 13:09:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20255 invoked from network); 12 Jul 2016 13:09:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=bAzzVjnQNENLXo50rwW8bgy+d9qNTIwh80kyZgtX4DA=;
        b=d0wPktGlEByvRpaH6YEJSFCVP6I2pHIf73Q2tZyj36IdSlXld3Mqerdgc3tVU/gigX
         hbznuJwHJlR2OgmRqD3zhpTU/E2pMKfXcFpgyA4h9o6Z9rkhgFV6lps5IOJ/NdtpfdI0
         dDSkNoLSy3m2vr+vBSl1CSjlLAJ2rqyus/lgFsYDnq3CVXfnvtlRQOQ1aL7Mb/0CEH2L
         XfDPyzJoMGKHBXWRCo+lleyIYCo1u2wX5ilITuOO+CTj3sT5viMqarzRtzvIXGFBJFWv
         qzhU6uB22OssTQ7Jh052+VysT3LewkuMq2IiHKN2xe5Z0OiQBkfM0CJQsvPwdf/Ku3RG
         BQWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent;
        bh=bAzzVjnQNENLXo50rwW8bgy+d9qNTIwh80kyZgtX4DA=;
        b=TR924/eLqert6dPZ4B9IzigU4xzVJ1l4+Tkumpj2vLubh1zXwRRB0lO/ixPa5sm/Ir
         /NpZ5Q6Zp2aCac8pNEWk5NbM8BKj7FEgJAJmMr4pq0FLHAxmhDnCPMDxxAol88Su3bxM
         61ZJHz0YgaZ9zDQ+gkHf5RTmiXwQmJVvGdWE3lA11bfj+6gXsoi1UgRS0uAuOinFmZu1
         GbDwAQUicT8XtqiOTc1cF99RKatg54TV8dW/FduI/pKJ7jjrsHWxq6Ezi9kGCqRmn2i6
         BRbFJYa3y1h/kPVuz7zNWgte7gMJNdkk3qprZRt0Ije7sXNY+xfDe6BBMBdQQ2iTcrAP
         AYnw==
X-Gm-Message-State: ALyK8tKM0FgampMR5l8duEO417F3E/SKbGaUPOfDWhqa/G/4EQ30jyPsHQoGAarQbhirLw==
X-Received: by 10.28.166.150 with SMTP id p144mr19829628wme.57.1468328933381;
        Tue, 12 Jul 2016 06:08:53 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 12 Jul 2016 15:08:48 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: ondrej@sury.org
Message-ID: <20160712130848.GA27890@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE Request: libgd: Out-Of-Bounds Read in function read_image_tga of
 gd_tga.c

Hi

Another issue was reported in the libgd issue tracker, an
out-of-bounds reads in read_image_tga in gd_tga.c:

https://github.com/libgd/libgd/issues/248

Pull request: https://github.com/libgd/libgd/pull/251

Upstream issue contains a reproducer for the issue and Ondřej Surý
confirmed that this is not a duplicate of issue #247. Could you assign
a CVE for this issue?

Regards,
Salvatore
