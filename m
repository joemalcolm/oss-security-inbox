X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["271" "Sunday" "12" "March" "2017" "10:45:03" "+0100" "Emilio Pozuelo Monfort" "pochu27@gmail.com" "<9803a7bd-3938-c25a-f4ef-d6dff8b1fed8@gmail.com>" "10" "Re: [oss-security] CVE Request: Irssi use after free in netjoin condition (2017/03)" nil nil nil "3" "2017031209:45:03" "[oss-security] CVE Request: Irssi use after free in netjoin condition (2017/03)" (number mark "U       pochu27@gmai Mar 12   10/271   " thread-indent "\"Re: [oss-security] CVE Request: Irssi use after free in netjoin condition (2017/03)\"\n") "<1489267555.30133.7.camel@gmail.com>" ("<1489267555.30133.7.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5179 invoked by uid 550); 12 Mar 2017 10:37:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30294 invoked from network); 12 Mar 2017 09:45:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=HouiqA3Jt8njDxl5yufo1okIVRxvVTqPCl2Q9fTblCM=;
        b=aUd75icoeqDYupOl2cb+FGUmbxQQ086ip6aV5jL3Sp9WizqLL1AYWyFlJYEio+Kb1m
         KLpa+8G8iRApBWc27Sax4vXLciVsSpCjbdgPy8BcOX4hgF1297Jb7H5C4/qJIsCB5Jcb
         HFf4IL+WO4eo/ANzuDoR/Pki0D4/xNzzRUAZS/C1w9Xu0/y2mF2Sno0DkIzfFG7ArwpF
         T48f3RTN+wWYnZLslnb+piXL5QGPMqRcoZ7ORMIDXmZvPcMEm001+GM+CTM3fQPnKNv2
         O4qCz07FKDhr9W2hfK0ZHoJ3LvzXcl8mWlX/8CR6Kj0yQ4UNVxdpJeWaicbalaNyzl+l
         zTAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=HouiqA3Jt8njDxl5yufo1okIVRxvVTqPCl2Q9fTblCM=;
        b=PA9Uojmzp21/2j5oQipOvBdxsclyuHQFSpD20N9v6LFMLKye4qw+KH28OQBO316Vhz
         861o1mwt67K9tphf9DxGu3MmhTg4GWHLppov7LfwUv+V2ZC2y96AYFwDi/4IVGLvQ94F
         ClBmKsb0ShWLGv6+WFY/9/he0+TSbgDA2YOIPGF1lqGX0Ez5bdHA+jreavJfJlXEfkeO
         VHiFNveJ1DcKHQHAyKZDdM914VlzNgjCQ3fuJC0fEG7JIKKs956GFfFuBA9x5pVtU3MP
         Yd6ujOXPS+eDmD3Rp1w/CY1pfho7mEGzh543wQ+7+97br88SHpjUt47+Z2teG8u7Y4du
         yudA==
X-Gm-Message-State: AMke39muMNXYSm5rl/m4AL1xYTZrxGGLWT5YxbMIAHO/xRgVwp5sbrDARGP+7wN4sEmC0w==
X-Received: by 10.223.161.140 with SMTP id u12mr22002818wru.140.1489311904697;
        Sun, 12 Mar 2017 01:45:04 -0800 (PST)
To: oss-security@lists.openwall.com, Ailin Nemui <ailin.nemui@gmail.com>
References: <1489267555.30133.7.camel@gmail.com>
From: Emilio Pozuelo Monfort <pochu27@gmail.com>
Message-ID: <9803a7bd-3938-c25a-f4ef-d6dff8b1fed8@gmail.com>
Date: Sun, 12 Mar 2017 10:45:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <1489267555.30133.7.camel@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE Request: Irssi use after free in netjoin
 condition (2017/03)

On 11/03/17 22:25, Ailin Nemui wrote:
> Dear CVE Assignment Team,
> 
> please provide CVE for the following issue:

Please report these through http://cveform.mitre.org/ to get CVEs assigned, and
follow up here with the CVE identifiers after that's done.

Thanks,
Emilio
