X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["734" "Friday" "14" "July" "2017" "05:45:50" "-0400" "Steven Miano" "mianosm@gmail.com" "<CACkP6k=7cgf+n8eeS0JFiVzK3caCTg_1piBLWxJLH=1P9YbNAg@mail.gmail.com>" "30" "Re: [oss-security] Estimate for the total number of exploitable bugs in large linux distro?" "^Date:" nil nil "7" "2017071409:45:50" "[oss-security] Estimate for the total number of exploitable bugs in large linux distro?" (number mark "U       mianosm@gmai Jul 14   30/734   " thread-indent "\"Re: [oss-security] Estimate for the total number of exploitable bugs in large linux distro?\"\n") "<20170714093401.GB865@sivokote.iziade.m$>" ("<20170714093401.GB865@sivokote.iziade.m$>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31979 invoked by uid 550); 14 Jul 2017 10:19:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13642 invoked from network); 14 Jul 2017 09:46:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=KbkbCicfcjcXoIa99mcqklu1REG/GxxjFWc8nxeT9Es=;
        b=ejmVRETKMN7OvZ1yW+qhMh1z2MgycT4oPHvPL1wLb26Pdt5FwFYURHcpZKcp9AnOBb
         rzXC6IM/G1ZQQrV5Orv0rVfWwPie9dfb+H+oAQcN3DRZ7wP70Rcuoit28TrNd48pDZX/
         ET6N8uLLJEquA98dJ5PPrxKYzbCIUpA3HD+vVJ8blP34zyKTdtSL+erpqd0tKGIwsdpi
         BwRdEEfsT2supXA+FGkoFY2YE39pRNY6DS/rIdgbzb/hm9GNj+uEmyrU+2Unz9O9S9zY
         JbQuG157ZQ2TcNPEbjdB7dVRMMuFdPxbihsKldTIIMDycuOCkLbkbsYQG/1W5Q9/Xopz
         2yGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=KbkbCicfcjcXoIa99mcqklu1REG/GxxjFWc8nxeT9Es=;
        b=s9g24VU5Dam/JlB8pHmET/wjZn2VY0/YAqeHlqu6GkTjfIwvLBckPeKKjOAy5JdWLf
         /35LysXD0+DxjS3HgzGIMB3sy51RlPcpvlTM+Dj8L/NzBeVcZQlWbclZBWuzpHbcai9W
         1Mp+2oUVHonGcCv9xEj8/bpzYboRuuMUBRG4gOg3O4Xi49Jg3fuFqZqPBzbiulbys/QG
         CtfPXMCxiJjy9c2km0m9x1Dfols4wq17LeQEOYbQRxfJgC5bmmZL5z53/SglX/sWTnRh
         3NppCOvRmM2jn6RrztO4hxc2B/QsfIt+2puGHcTuZDt+5x4xw/Ta43e9cCcvokEY/m+f
         Poyw==
X-Gm-Message-State: AIVw110B22fSo2rOQHu3ZvxIy8GX9/ETinHQDry5gEJON1Lzoy5DJVhU
	SXtnrgqzUPzqms2cNeCusfAtGYqO2uM5ii8=
X-Received: by 10.176.27.81 with SMTP id n17mr5173968uai.58.1500025591328;
 Fri, 14 Jul 2017 02:46:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170714093401.GB865@sivokote.iziade.m$>
References: <20170714093401.GB865@sivokote.iziade.m$>
Message-ID: <CACkP6k=7cgf+n8eeS0JFiVzK3caCTg_1piBLWxJLH=1P9YbNAg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f403043651a6867368055443ec45"
Date: Fri, 14 Jul 2017 05:45:50 -0400
From: Steven Miano <mianosm@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Estimate for the total number of exploitable bugs
 in large linux distro?
To: oss-security@lists.openwall.com

--f403043651a6867368055443ec45
Content-Type: text/plain; charset="UTF-8"

Something like this?

https://www.cvedetails.com/vendor/51/Ubuntu.html
https://www.cvedetails.com/vendor/7838/Red-Hat.html
https://www.cvedetails.com/vendor/26/Microsoft.html

The churn is pretty constant with new vulnerabilities being exposed daily,
and fixes being committed at varying rates compared to being found.


On Fri, Jul 14, 2017 at 5:34 AM, Georgi Guninski <guninski@guninski.com>
wrote:

> What is an estimate for the total number of exploitable bugs in large
> linux distro?
>
> Also, does the total number decrease, increase or change in other way
> over time?
>



-- 
Miano, Steven M.
http://stevenmiano.com

--f403043651a6867368055443ec45--
